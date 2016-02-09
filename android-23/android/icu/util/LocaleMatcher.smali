.class public Landroid/icu/util/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;,
        Landroid/icu/util/LocaleMatcher$Level;,
        Landroid/icu/util/LocaleMatcher$ScoreData;,
        Landroid/icu/util/LocaleMatcher$LanguageMatcherData;,
        Landroid/icu/util/LocaleMatcher$DataHack;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

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

.field matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

.field maximizedLanguageToWeight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/impl/Row$R2",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threshold:D


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/icu/util/LocaleMatcher;->DEBUG:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x0

    #@2
    .line 49
    sput-boolean v10, Landroid/icu/util/LocaleMatcher;->DEBUG:Z

    #@4
    .line 51
    new-instance v6, Landroid/icu/util/ULocale;

    #@6
    const-string/jumbo v7, "und"

    #@9
    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@c
    sput-object v6, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    #@e
    .line 786
    new-instance v6, Ljava/util/HashMap;

    #@10
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@13
    sput-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@15
    .line 853
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@17
    const-string/jumbo v7, "iw"

    #@1a
    const-string/jumbo v8, "he"

    #@1d
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 854
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@22
    const-string/jumbo v7, "mo"

    #@25
    const-string/jumbo v8, "ro"

    #@28
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 855
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@2d
    const-string/jumbo v7, "tl"

    #@30
    const-string/jumbo v8, "fil"

    #@33
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 857
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    #@39
    move-result-object v4

    #@3a
    .line 858
    .local v4, "suppData":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v6, "languageMatching"

    #@3d
    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@40
    move-result-object v2

    #@41
    .line 859
    .local v2, "languageMatching":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v6, "written"

    #@44
    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@47
    move-result-object v5

    #@48
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@4a
    .line 860
    .local v5, "written":Landroid/icu/impl/ICUResourceBundle;
    new-instance v6, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@4c
    invoke-direct {v6}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;-><init>()V

    #@4f
    sput-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@51
    .line 870
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@54
    move-result-object v1

    #@55
    .local v1, "iter":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_1

    #@5b
    .line 871
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@61
    .line 878
    .local v0, "item":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@64
    move-result v6

    #@65
    if-le v6, v11, :cond_0

    #@67
    const-string/jumbo v6, "1"

    #@6a
    invoke-virtual {v0, v11}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v3

    #@72
    .line 880
    :goto_1
    sget-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@74
    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    const/4 v8, 0x1

    #@79
    invoke-virtual {v0, v8}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    const/4 v9, 0x2

    #@7e
    invoke-virtual {v0, v9}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@85
    move-result v9

    #@86
    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@89
    goto :goto_0

    #@8a
    .line 878
    :cond_0
    const/4 v3, 0x0

    #@8b
    .local v3, "oneway":Z
    goto :goto_1

    #@8c
    .line 885
    .end local v0    # "item":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "oneway":Z
    :cond_1
    sget-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@8e
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@91
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;)V
    .locals 1
    .param p1, "languagePriorityList"    # Landroid/icu/util/LocalePriorityList;

    #@0
    .prologue
    .line 80
    sget-object v0, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@2
    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V

    #@5
    .line 79
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
    .line 103
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V

    #@5
    .line 102
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
    const/4 v3, 0x0

    #@1
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 273
    new-instance v4, Ljava/util/LinkedHashMap;

    #@6
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    #@9
    iput-object v4, p0, Landroid/icu/util/LocaleMatcher;->maximizedLanguageToWeight:Ljava/util/Map;

    #@b
    .line 115
    if-nez p2, :cond_0

    #@d
    sget-object p2, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@f
    .end local p2    # "matcherData":Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    :cond_0
    iput-object p2, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@11
    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "language$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/icu/util/ULocale;

    #@21
    .line 117
    .local v1, "language":Landroid/icu/util/ULocale;
    invoke-virtual {p1, v1}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    #@24
    move-result-object v4

    #@25
    invoke-direct {p0, v1, v4}, Landroid/icu/util/LocaleMatcher;->add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V

    #@28
    goto :goto_0

    #@29
    .line 119
    .end local v1    # "language":Landroid/icu/util/ULocale;
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v0

    #@2d
    .line 120
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/util/ULocale;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Landroid/icu/util/ULocale;

    #@39
    :cond_2
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@3b
    .line 121
    iput-wide p3, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    #@3d
    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "languagePriorityListString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
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
    .line 90
    return-void
.end method

.method private add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V
    .locals 2
    .param p1, "language"    # Landroid/icu/util/ULocale;
    .param p2, "weight"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 268
    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object p1

    #@4
    .line 269
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1, p2}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R2;

    #@b
    move-result-object v0

    #@c
    .line 270
    .local v0, "row":Landroid/icu/impl/Row$R2;, "Lcom/ibm/icu/impl/Row$R2<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->maximizedLanguageToWeight:Ljava/util/Map;

    #@e
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 267
    return-void
.end method

.method private addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7
    .param p1, "languageCode"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 295
    sget-object v4, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    #@2
    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 296
    sget-object v4, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    #@a
    return-object v4

    #@b
    .line 298
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@e
    move-result-object v2

    #@f
    .line 300
    .local v2, "result":Landroid/icu/util/ULocale;
    if-eqz v2, :cond_1

    #@11
    invoke-virtual {v2, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_5

    #@17
    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 302
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 303
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 304
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
    .line 306
    const-string/jumbo v6, "_"

    #@3a
    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 307
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_3

    #@44
    const-string/jumbo v3, "Zzzz"

    #@47
    .line 304
    .end local v3    # "script":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 308
    const-string/jumbo v6, "_"

    #@4e
    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    .line 309
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_4

    #@58
    const-string/jumbo v1, "ZZ"

    #@5b
    .line 304
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
    .line 311
    :cond_5
    return-object v2
.end method

.method private getBestMatchInternal(Landroid/icu/util/ULocale;)Landroid/icu/impl/Row$R2;
    .locals 14
    .param p1, "languageCode"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Landroid/icu/impl/Row$R2",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object p1

    #@4
    .line 243
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    .line 244
    .local v1, "maximized":Landroid/icu/util/ULocale;
    sget-boolean v9, Landroid/icu/util/LocaleMatcher;->DEBUG:Z

    #@a
    if-eqz v9, :cond_0

    #@c
    .line 245
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e
    new-instance v12, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v13, "\n"

    #@16
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v12

    #@1a
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v12

    #@1e
    const-string/jumbo v13, ";\t"

    #@21
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v12

    #@25
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v12

    #@29
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v12

    #@2d
    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 247
    :cond_0
    const-wide/16 v2, 0x0

    #@32
    .line 248
    .local v2, "bestWeight":D
    const/4 v0, 0x0

    #@33
    .line 249
    .local v0, "bestTableMatch":Landroid/icu/util/ULocale;
    iget-object v9, p0, Landroid/icu/util/LocaleMatcher;->maximizedLanguageToWeight:Ljava/util/Map;

    #@35
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@38
    move-result-object v9

    #@39
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v8

    #@3d
    .end local v0    # "bestTableMatch":Landroid/icu/util/ULocale;
    .local v8, "tableKey$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v9

    #@41
    if-eqz v9, :cond_3

    #@43
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, Landroid/icu/util/ULocale;

    #@49
    .line 250
    .local v7, "tableKey":Landroid/icu/util/ULocale;
    iget-object v9, p0, Landroid/icu/util/LocaleMatcher;->maximizedLanguageToWeight:Ljava/util/Map;

    #@4b
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v6

    #@4f
    check-cast v6, Landroid/icu/impl/Row$R2;

    #@51
    .line 251
    .local v6, "row":Landroid/icu/impl/Row$R2;, "Lcom/ibm/icu/impl/Row$R2<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v6}, Landroid/icu/impl/Row$R2;->get0()Ljava/lang/Object;

    #@54
    move-result-object v9

    #@55
    check-cast v9, Landroid/icu/util/ULocale;

    #@57
    invoke-virtual {p0, p1, v1, v7, v9}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    #@5a
    move-result-wide v4

    #@5b
    .line 252
    .local v4, "match":D
    sget-boolean v9, Landroid/icu/util/LocaleMatcher;->DEBUG:Z

    #@5d
    if-eqz v9, :cond_2

    #@5f
    .line 253
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@61
    new-instance v12, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v13, "\t"

    #@69
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v12

    #@6d
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v12

    #@71
    const-string/jumbo v13, ";\t"

    #@74
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v12

    #@78
    invoke-virtual {v6}, Landroid/icu/impl/Row$R2;->toString()Ljava/lang/String;

    #@7b
    move-result-object v13

    #@7c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v12

    #@80
    const-string/jumbo v13, ";\t"

    #@83
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v12

    #@87
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v12

    #@8b
    const-string/jumbo v13, "\n"

    #@8e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@99
    .line 255
    :cond_2
    invoke-virtual {v6}, Landroid/icu/impl/Row$R2;->get1()Ljava/lang/Object;

    #@9c
    move-result-object v9

    #@9d
    check-cast v9, Ljava/lang/Double;

    #@9f
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    #@a2
    move-result-wide v12

    #@a3
    mul-double v10, v4, v12

    #@a5
    .line 256
    .local v10, "weight":D
    cmpl-double v9, v10, v2

    #@a7
    if-lez v9, :cond_1

    #@a9
    .line 257
    move-wide v2, v10

    #@aa
    .line 258
    move-object v0, v7

    #@ab
    .local v0, "bestTableMatch":Landroid/icu/util/ULocale;
    goto :goto_0

    #@ac
    .line 261
    .end local v0    # "bestTableMatch":Landroid/icu/util/ULocale;
    .end local v4    # "match":D
    .end local v6    # "row":Landroid/icu/impl/Row$R2;, "Lcom/ibm/icu/impl/Row$R2<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    .end local v7    # "tableKey":Landroid/icu/util/ULocale;
    .end local v10    # "weight":D
    :cond_3
    iget-wide v12, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    #@ae
    cmpg-double v9, v2, v12

    #@b0
    if-gez v9, :cond_4

    #@b2
    .line 262
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@b4
    .line 264
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@b7
    move-result-object v9

    #@b8
    invoke-static {v0, v9}, Landroid/icu/impl/Row$R2;->of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R2;

    #@bb
    move-result-object v9

    #@bc
    return-object v9
.end method

.method public static getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 895
    const-string/jumbo v1, "android/icu/impl/data/icudt55b"

    #@3
    .line 896
    const-string/jumbo v2, "supplementalData"

    #@6
    .line 897
    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@8
    .line 894
    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 898
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
    .line 907
    new-instance v0, Landroid/icu/util/LocaleMatcher;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Ljava/lang/String;)V

    #@8
    .line 908
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


# virtual methods
.method public canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 153
    .local v0, "lang":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    .line 154
    .local v1, "lang2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 155
    .local v4, "script":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/lang/String;

    #@18
    .line 156
    .local v5, "script2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 157
    .local v2, "region":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    .line 158
    .local v3, "region2":Ljava/lang/String;
    if-nez v1, :cond_0

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 159
    :cond_0
    new-instance v6, Landroid/icu/util/ULocale;

    #@2a
    .line 160
    if-nez v1, :cond_2

    #@2c
    .line 161
    .end local v0    # "lang":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_3

    #@2e
    .line 162
    .end local v4    # "script":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_4

    #@30
    .line 159
    .end local v2    # "region":Ljava/lang/String;
    :goto_2
    invoke-direct {v6, v0, v4, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@33
    return-object v6

    #@34
    .line 158
    .restart local v0    # "lang":Ljava/lang/String;
    .restart local v2    # "region":Ljava/lang/String;
    .restart local v4    # "script":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_0

    #@36
    .line 165
    return-object p1

    #@37
    :cond_2
    move-object v0, v1

    #@38
    .line 160
    goto :goto_0

    #@39
    .end local v0    # "lang":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    #@3a
    .line 161
    goto :goto_1

    #@3b
    .end local v4    # "script":Ljava/lang/String;
    :cond_4
    move-object v2, v3

    #@3c
    .line 162
    goto :goto_2
.end method

.method public getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;
    .locals 12
    .param p1, "languageList"    # Landroid/icu/util/LocalePriorityList;

    #@0
    .prologue
    .line 176
    const-wide/16 v2, 0x0

    #@2
    .line 177
    .local v2, "bestWeight":D
    const/4 v0, 0x0

    #@3
    .line 178
    .local v0, "bestTableMatch":Landroid/icu/util/ULocale;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v4

    #@7
    .end local v0    # "bestTableMatch":Landroid/icu/util/ULocale;
    .local v4, "language$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_1

    #@d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/icu/util/ULocale;

    #@13
    .line 179
    .local v1, "language":Landroid/icu/util/ULocale;
    invoke-direct {p0, v1}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;)Landroid/icu/impl/Row$R2;

    #@16
    move-result-object v5

    #@17
    .line 180
    .local v5, "matchRow":Landroid/icu/impl/Row$R2;, "Lcom/ibm/icu/impl/Row$R2<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v5}, Landroid/icu/impl/Row$R2;->get1()Ljava/lang/Object;

    #@1a
    move-result-object v8

    #@1b
    check-cast v8, Ljava/lang/Double;

    #@1d
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    #@20
    move-result-wide v8

    #@21
    invoke-virtual {p1, v1}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    #@28
    move-result-wide v10

    #@29
    mul-double v6, v8, v10

    #@2b
    .line 181
    .local v6, "weight":D
    cmpl-double v8, v6, v2

    #@2d
    if-lez v8, :cond_0

    #@2f
    .line 182
    move-wide v2, v6

    #@30
    .line 183
    invoke-virtual {v5}, Landroid/icu/impl/Row$R2;->get0()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/icu/util/ULocale;

    #@36
    .local v0, "bestTableMatch":Landroid/icu/util/ULocale;
    goto :goto_0

    #@37
    .line 186
    .end local v0    # "bestTableMatch":Landroid/icu/util/ULocale;
    .end local v1    # "language":Landroid/icu/util/ULocale;
    .end local v5    # "matchRow":Landroid/icu/impl/Row$R2;, "Lcom/ibm/icu/impl/Row$R2<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    .end local v6    # "weight":D
    :cond_1
    iget-wide v8, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    #@39
    cmpg-double v8, v2, v8

    #@3b
    if-gez v8, :cond_2

    #@3d
    .line 187
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    #@3f
    .line 189
    :cond_2
    return-object v0
.end method

.method public getBestMatch(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;)Landroid/icu/impl/Row$R2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/Row$R2;->get0()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/util/ULocale;

    #@a
    return-object v0
.end method

.method public getBestMatch(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "languageList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
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
    .line 220
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
    .line 138
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
    .line 229
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
    .line 230
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->maximizedLanguageToWeight:Ljava/util/Map;

    #@1b
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 230
    const-string/jumbo v1, "}"

    #@22
    .line 229
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
