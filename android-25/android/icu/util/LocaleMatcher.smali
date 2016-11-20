.class public Landroid/icu/util/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleMatcher$LanguageMatcherData;,
        Landroid/icu/util/LocaleMatcher$Level;,
        Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;,
        Landroid/icu/util/LocaleMatcher$OutputDouble;,
        Landroid/icu/util/LocaleMatcher$ScoreData;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_THRESHOLD:D = 0.5

.field private static final UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

.field private static canonicalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;


# instance fields
.field private final defaultLanguage:Landroid/icu/util/ULocale;

.field desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field localeToMaxLocaleAndWeight:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

.field private final threshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    .line 60
    new-instance v6, Landroid/icu/util/ULocale;

    #@3
    const-string/jumbo v7, "und"

    #@6
    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@9
    sput-object v6, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    #@b
    .line 798
    new-instance v6, Ljava/util/HashMap;

    #@d
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@12
    .line 802
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@14
    const-string/jumbo v7, "iw"

    #@17
    const-string/jumbo v8, "he"

    #@1a
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 803
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@1f
    const-string/jumbo v7, "mo"

    #@22
    const-string/jumbo v8, "ro"

    #@25
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 804
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@2a
    const-string/jumbo v7, "tl"

    #@2d
    const-string/jumbo v8, "fil"

    #@30
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 806
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    #@36
    move-result-object v4

    #@37
    .line 807
    .local v4, "suppData":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v6, "languageMatching"

    #@3a
    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3d
    move-result-object v2

    #@3e
    .line 808
    .local v2, "languageMatching":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v6, "written"

    #@41
    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@44
    move-result-object v5

    #@45
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@47
    .line 809
    .local v5, "written":Landroid/icu/impl/ICUResourceBundle;
    new-instance v6, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@49
    invoke-direct {v6}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;-><init>()V

    #@4c
    sput-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@4e
    .line 811
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@51
    move-result-object v1

    #@52
    .local v1, "iter":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_1

    #@58
    .line 812
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@5e
    .line 819
    .local v0, "item":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@61
    move-result v6

    #@62
    if-le v6, v10, :cond_0

    #@64
    const-string/jumbo v6, "1"

    #@67
    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v3

    #@6f
    .line 820
    :goto_1
    sget-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@71
    const/4 v7, 0x0

    #@72
    invoke-virtual {v0, v7}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    const/4 v8, 0x1

    #@77
    invoke-virtual {v0, v8}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@7a
    move-result-object v8

    #@7b
    const/4 v9, 0x2

    #@7c
    invoke-virtual {v0, v9}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@83
    move-result v9

    #@84
    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@87
    goto :goto_0

    #@88
    .line 819
    :cond_0
    const/4 v3, 0x0

    #@89
    .local v3, "oneway":Z
    goto :goto_1

    #@8a
    .line 822
    .end local v0    # "item":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "oneway":Z
    :cond_1
    sget-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@8c
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@8f
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;)V
    .locals 1
    .param p1, "languagePriorityList"    # Landroid/icu/util/LocalePriorityList;

    #@0
    .prologue
    .line 88
    sget-object v0, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@2
    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V

    #@5
    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V
    .locals 2
    .param p1, "languagePriorityList"    # Landroid/icu/util/LocalePriorityList;
    .param p2, "matcherData"    # Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 110
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V

    #@5
    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V
    .locals 5
    .param p1, "languagePriorityList"    # Landroid/icu/util/LocalePriorityList;
    .param p2, "matcherData"    # Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .param p3, "threshold"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 335
    new-instance v3, Ljava/util/LinkedHashSet;

    #@6
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    #@9
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    #@b
    .line 337
    new-instance v3, Ljava/util/LinkedHashMap;

    #@d
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    #@10
    .line 336
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    #@12
    .line 122
    if-nez p2, :cond_0

    #@14
    sget-object v3, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@16
    :goto_0
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@18
    .line 123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v2

    #@1c
    .local v2, "language$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/icu/util/ULocale;

    #@28
    .line 124
    .local v1, "language":Landroid/icu/util/ULocale;
    invoke-virtual {p1, v1}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {p0, v1, v3}, Landroid/icu/util/LocaleMatcher;->add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V

    #@2f
    goto :goto_1

    #@30
    .line 122
    .end local v1    # "language":Landroid/icu/util/ULocale;
    .end local v2    # "language$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p2}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@33
    move-result-object v3

    #@34
    goto :goto_0

    #@35
    .line 126
    .restart local v2    # "language$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->processMapping()V

    #@38
    .line 127
    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v0

    #@3c
    .line 128
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/ULocale;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_2

    #@42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v3

    #@46
    check-cast v3, Landroid/icu/util/ULocale;

    #@48
    :goto_2
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@4a
    .line 129
    iput-wide p3, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    #@4c
    .line 121
    return-void

    #@4d
    :cond_2
    move-object v3, v4

    #@4e
    .line 128
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "languagePriorityListString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;)V

    #@b
    .line 97
    return-void
.end method

.method private add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V
    .locals 2
    .param p1, "language"    # Landroid/icu/util/ULocale;
    .param p2, "weight"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object p1

    #@4
    .line 296
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    invoke-static {p1, v1, p2}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    #@b
    move-result-object v0

    #@c
    .line 297
    .local v0, "row":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v0}, Landroid/icu/impl/Row;->freeze()Landroid/icu/impl/Row;

    #@f
    .line 298
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    #@11
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@14
    .line 294
    return-void
.end method

.method private addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V
    .locals 2
    .param p1, "desired"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p2, "localeToMaxAndWeight":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Set;

    #@8
    .line 326
    .local v0, "map":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;>;"
    if-nez v0, :cond_0

    #@a
    .line 327
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    #@c
    new-instance v0, Ljava/util/LinkedHashSet;

    #@e
    .end local v0    # "map":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@11
    .restart local v0    # "map":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;>;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 329
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 324
    return-void
.end method

.method private addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7
    .param p1, "languageCode"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 357
    sget-object v4, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    #@2
    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 358
    sget-object v4, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    #@a
    return-object v4

    #@b
    .line 360
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@e
    move-result-object v2

    #@f
    .line 362
    .local v2, "result":Landroid/icu/util/ULocale;
    if-eqz v2, :cond_1

    #@11
    invoke-virtual {v2, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_5

    #@17
    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 364
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 365
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 366
    .local v1, "region":Ljava/lang/String;
    new-instance v4, Landroid/icu/util/ULocale;

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2d
    move-result v6

    #@2e
    if-nez v6, :cond_2

    #@30
    const-string/jumbo v0, "und"

    #@33
    .end local v0    # "language":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 368
    const-string/jumbo v6, "_"

    #@3a
    .line 366
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 369
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_3

    #@44
    const-string/jumbo v3, "Zzzz"

    #@47
    .line 366
    .end local v3    # "script":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 370
    const-string/jumbo v6, "_"

    #@4e
    .line 366
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 371
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_4

    #@58
    const-string/jumbo v1, "ZZ"

    #@5b
    .line 366
    .end local v1    # "region":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@66
    return-object v4

    #@67
    .line 373
    :cond_5
    return-object v2
.end method

.method private getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;
    .locals 20
    .param p1, "languageCode"    # Landroid/icu/util/ULocale;
    .param p2, "outputWeight"    # Landroid/icu/util/LocaleMatcher$OutputDouble;

    #@0
    .prologue
    .line 247
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object p1

    #@4
    .line 248
    invoke-direct/range {p0 .. p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v10

    #@8
    .line 252
    .local v10, "maximized":Landroid/icu/util/ULocale;
    const-wide/16 v4, 0x0

    #@a
    .line 253
    .local v4, "bestWeight":D
    const/4 v3, 0x0

    #@b
    .line 254
    .local v3, "bestTableMatch":Landroid/icu/util/ULocale;
    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 255
    .local v2, "baseLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11
    iget-object v15, v0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    #@13
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v11

    #@17
    check-cast v11, Ljava/util/Set;

    #@19
    .line 256
    .local v11, "searchTable":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;>;"
    if-eqz v11, :cond_1

    #@1b
    .line 258
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v14

    #@1f
    .end local v3    # "bestTableMatch":Landroid/icu/util/ULocale;
    .local v14, "tableKeyValue$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v15

    #@23
    if-eqz v15, :cond_1

    #@25
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v13

    #@29
    check-cast v13, Landroid/icu/impl/Row$R3;

    #@2b
    .line 259
    .local v13, "tableKeyValue":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v13}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    #@2e
    move-result-object v12

    #@2f
    check-cast v12, Landroid/icu/util/ULocale;

    #@31
    .line 260
    .local v12, "tableKey":Landroid/icu/util/ULocale;
    invoke-virtual {v13}, Landroid/icu/impl/Row;->get1()Ljava/lang/Object;

    #@34
    move-result-object v9

    #@35
    check-cast v9, Landroid/icu/util/ULocale;

    #@37
    .line 261
    .local v9, "maxLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v13}, Landroid/icu/impl/Row;->get2()Ljava/lang/Object;

    #@3a
    move-result-object v8

    #@3b
    check-cast v8, Ljava/lang/Double;

    #@3d
    .line 262
    .local v8, "matchedWeight":Ljava/lang/Double;
    move-object/from16 v0, p0

    #@3f
    move-object/from16 v1, p1

    #@41
    invoke-virtual {v0, v1, v10, v12, v9}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    #@44
    move-result-wide v6

    #@45
    .line 266
    .local v6, "match":D
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    #@48
    move-result-wide v18

    #@49
    mul-double v16, v6, v18

    #@4b
    .line 267
    .local v16, "weight":D
    cmpl-double v15, v16, v4

    #@4d
    if-lez v15, :cond_0

    #@4f
    .line 268
    move-wide/from16 v4, v16

    #@51
    .line 269
    move-object v3, v12

    #@52
    .line 270
    .local v3, "bestTableMatch":Landroid/icu/util/ULocale;
    const-wide v18, 0x3feff7ced916872bL    # 0.999

    #@57
    cmpl-double v15, v16, v18

    #@59
    if-lez v15, :cond_0

    #@5b
    .line 276
    .end local v3    # "bestTableMatch":Landroid/icu/util/ULocale;
    .end local v6    # "match":D
    .end local v8    # "matchedWeight":Ljava/lang/Double;
    .end local v9    # "maxLocale":Landroid/icu/util/ULocale;
    .end local v12    # "tableKey":Landroid/icu/util/ULocale;
    .end local v13    # "tableKeyValue":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    .end local v14    # "tableKeyValue$iterator":Ljava/util/Iterator;
    .end local v16    # "weight":D
    :cond_1
    move-object/from16 v0, p0

    #@5d
    iget-wide v0, v0, Landroid/icu/util/LocaleMatcher;->threshold:D

    #@5f
    move-wide/from16 v18, v0

    #@61
    cmpg-double v15, v4, v18

    #@63
    if-gez v15, :cond_2

    #@65
    .line 277
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@69
    .line 279
    :cond_2
    if-eqz p2, :cond_3

    #@6b
    .line 280
    move-object/from16 v0, p2

    #@6d
    iput-wide v4, v0, Landroid/icu/util/LocaleMatcher$OutputDouble;->value:D

    #@6f
    .line 282
    :cond_3
    return-object v3
.end method

.method public static getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 832
    const-string/jumbo v1, "android/icu/impl/data/icudt56b"

    #@3
    .line 833
    const-string/jumbo v2, "supplementalData"

    #@6
    .line 834
    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@8
    .line 831
    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 835
    .local v0, "suppData":Landroid/icu/impl/ICUResourceBundle;
    return-object v0
.end method

.method public static match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 4
    .param p0, "a"    # Landroid/icu/util/ULocale;
    .param p1, "b"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 844
    new-instance v0, Landroid/icu/util/LocaleMatcher;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Ljava/lang/String;)V

    #@8
    .line 845
    .local v0, "matcher":Landroid/icu/util/LocaleMatcher;
    invoke-direct {v0, p0}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    #@13
    move-result-wide v2

    #@14
    return-wide v2
.end method

.method private processMapping()V
    .locals 9

    #@0
    .prologue
    .line 305
    iget-object v8, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@2
    invoke-virtual {v8}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages()Landroid/icu/impl/Relation;

    #@5
    move-result-object v8

    #@6
    invoke-virtual {v8}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    #@9
    move-result-object v8

    #@a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "desiredToMatchingLanguages$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v8

    #@12
    if-eqz v8, :cond_2

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/Map$Entry;

    #@1a
    .line 306
    .local v1, "desiredToMatchingLanguages":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    .line 307
    .local v0, "desired":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Ljava/util/Set;

    #@26
    .line 308
    .local v7, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    #@28
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v6

    #@2c
    .local v6, "localeToMaxAndWeight$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_0

    #@32
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Landroid/icu/impl/Row$R3;

    #@38
    .line 309
    .local v5, "localeToMaxAndWeight":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v5}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Landroid/icu/util/ULocale;

    #@3e
    .line 310
    .local v3, "key":Landroid/icu/util/ULocale;
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 311
    .local v4, "lang":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_1

    #@48
    .line 312
    invoke-direct {p0, v0, v5}, Landroid/icu/util/LocaleMatcher;->addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@4b
    goto :goto_0

    #@4c
    .line 317
    .end local v0    # "desired":Ljava/lang/String;
    .end local v1    # "desiredToMatchingLanguages":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "key":Landroid/icu/util/ULocale;
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "localeToMaxAndWeight":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    .end local v6    # "localeToMaxAndWeight$iterator":Ljava/util/Iterator;
    .end local v7    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    #@4e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v6

    #@52
    .restart local v6    # "localeToMaxAndWeight$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@55
    move-result v8

    #@56
    if-eqz v8, :cond_3

    #@58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b
    move-result-object v5

    #@5c
    check-cast v5, Landroid/icu/impl/Row$R3;

    #@5e
    .line 318
    .restart local v5    # "localeToMaxAndWeight":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v5}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/icu/util/ULocale;

    #@64
    .line 319
    .restart local v3    # "key":Landroid/icu/util/ULocale;
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 320
    .restart local v4    # "lang":Ljava/lang/String;
    invoke-direct {p0, v4, v5}, Landroid/icu/util/LocaleMatcher;->addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@6b
    goto :goto_1

    #@6c
    .line 304
    .end local v3    # "key":Landroid/icu/util/ULocale;
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "localeToMaxAndWeight":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 159
    .local v0, "lang":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    .line 160
    .local v1, "lang2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 161
    .local v4, "script":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/lang/String;

    #@18
    .line 162
    .local v5, "script2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 163
    .local v2, "region":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    .line 164
    .local v3, "region2":Ljava/lang/String;
    if-nez v1, :cond_0

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 165
    :cond_0
    new-instance v6, Landroid/icu/util/ULocale;

    #@2a
    .line 166
    if-nez v1, :cond_2

    #@2c
    .line 167
    .end local v0    # "lang":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_3

    #@2e
    .line 168
    .end local v4    # "script":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_4

    #@30
    .line 165
    .end local v2    # "region":Ljava/lang/String;
    :goto_2
    invoke-direct {v6, v0, v4, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@33
    return-object v6

    #@34
    .line 164
    .restart local v0    # "lang":Ljava/lang/String;
    .restart local v2    # "region":Ljava/lang/String;
    .restart local v4    # "script":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_0

    #@36
    .line 171
    return-object p1

    #@37
    :cond_2
    move-object v0, v1

    #@38
    .line 166
    goto :goto_0

    #@39
    .end local v0    # "lang":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    #@3a
    .line 167
    goto :goto_1

    #@3b
    .end local v4    # "script":Ljava/lang/String;
    :cond_4
    move-object v2, v3

    #@3c
    .line 168
    goto :goto_2
.end method

.method public getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;
    .locals 18
    .param p1, "languageList"    # Landroid/icu/util/LocalePriorityList;

    #@0
    .prologue
    .line 181
    const-wide/16 v4, 0x0

    #@2
    .line 182
    .local v4, "bestWeight":D
    const/4 v2, 0x0

    #@3
    .line 183
    .local v2, "bestTableMatch":Landroid/icu/util/ULocale;
    const-wide/16 v10, 0x0

    #@5
    .line 184
    .local v10, "penalty":D
    new-instance v8, Landroid/icu/util/LocaleMatcher$OutputDouble;

    #@7
    const/4 v9, 0x0

    #@8
    invoke-direct {v8, v9}, Landroid/icu/util/LocaleMatcher$OutputDouble;-><init>(Landroid/icu/util/LocaleMatcher$OutputDouble;)V

    #@b
    .line 185
    .local v8, "matchWeight":Landroid/icu/util/LocaleMatcher$OutputDouble;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v6

    #@f
    .end local v2    # "bestTableMatch":Landroid/icu/util/ULocale;
    .local v6, "language$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v9

    #@13
    if-eqz v9, :cond_1

    #@15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/icu/util/ULocale;

    #@1b
    .line 186
    .local v3, "language":Landroid/icu/util/ULocale;
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v3, v8}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;

    #@20
    move-result-object v7

    #@21
    .line 187
    .local v7, "matchLocale":Landroid/icu/util/ULocale;
    iget-wide v14, v8, Landroid/icu/util/LocaleMatcher$OutputDouble;->value:D

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v0, v3}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    #@28
    move-result-object v9

    #@29
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    #@2c
    move-result-wide v16

    #@2d
    mul-double v14, v14, v16

    #@2f
    sub-double v12, v14, v10

    #@31
    .line 188
    .local v12, "weight":D
    cmpl-double v9, v12, v4

    #@33
    if-lez v9, :cond_0

    #@35
    .line 189
    move-wide v4, v12

    #@36
    .line 190
    move-object v2, v7

    #@37
    .line 192
    :cond_0
    const-wide v14, 0x3fb1eb8549ab6fb0L    # 0.07000001

    #@3c
    add-double/2addr v10, v14

    #@3d
    goto :goto_0

    #@3e
    .line 194
    .end local v3    # "language":Landroid/icu/util/ULocale;
    .end local v7    # "matchLocale":Landroid/icu/util/ULocale;
    .end local v12    # "weight":D
    :cond_1
    move-object/from16 v0, p0

    #@40
    iget-wide v14, v0, Landroid/icu/util/LocaleMatcher;->threshold:D

    #@42
    cmpg-double v9, v4, v14

    #@44
    if-gez v9, :cond_2

    #@46
    .line 195
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@4a
    .line 197
    :cond_2
    return-object v2
.end method

.method public getBestMatch(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getBestMatch(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "languageList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public varargs getBestMatch([Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "ulocales"    # [Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 2
    .param p1, "desired"    # Landroid/icu/util/ULocale;
    .param p2, "desiredMax"    # Landroid/icu/util/ULocale;
    .param p3, "supported"    # Landroid/icu/util/ULocale;
    .param p4, "supportedMax"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 235
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    #@1b
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 235
    const-string/jumbo v1, "}"

    #@22
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
