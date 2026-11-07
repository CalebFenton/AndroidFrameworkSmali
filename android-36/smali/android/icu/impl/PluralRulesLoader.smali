.class public Landroid/icu/impl/PluralRulesLoader;
.super Landroid/icu/text/PluralRules$Factory;
.source "PluralRulesLoader.java"


# static fields
.field public static final blacklist loader:Landroid/icu/impl/PluralRulesLoader;


# instance fields
.field private greylist-max-o localeIdToCardinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o localeIdToOrdinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist pluralRulesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 257
    new-instance v0, Landroid/icu/impl/PluralRulesLoader;

    invoke-direct {v0}, Landroid/icu/impl/PluralRulesLoader;-><init>()V

    sput-object v0, Landroid/icu/impl/PluralRulesLoader;->loader:Landroid/icu/impl/PluralRulesLoader;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/icu/text/PluralRules$Factory;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private greylist-max-o checkBuildRulesIdMaps()V
    .registers 11

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 109
    .local v0, "haveMap":Z
    :goto_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_92

    .line 110
    if-nez v0, :cond_91

    .line 115
    :try_start_b
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 117
    .local v1, "pluralb":Landroid/icu/util/UResourceBundle;
    const-string v2, "locales"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 120
    .local v2, "localeb":Landroid/icu/util/UResourceBundle;
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 122
    .local v3, "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v4, "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/util/ULocale;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-ge v5, v6, :cond_4a

    .line 125
    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 126
    .local v6, "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    .line 131
    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v6    # "b":Landroid/icu/util/UResourceBundle;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 136
    .end local v5    # "i":I
    :cond_4a
    const-string v5, "locales_ordinals"

    invoke-virtual {v1, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 137
    .end local v2    # "localeb":Landroid/icu/util/UResourceBundle;
    .local v5, "localeb":Landroid/icu/util/UResourceBundle;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 138
    .local v2, "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_56
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_73

    .line 139
    invoke-virtual {v5, v6}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 140
    .local v7, "b":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "id":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 142
    .local v9, "value":Ljava/lang/String;
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_6f} :catch_74

    .line 138
    nop

    .end local v7    # "b":Landroid/icu/util/UResourceBundle;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 149
    .end local v1    # "pluralb":Landroid/icu/util/UResourceBundle;
    .end local v5    # "localeb":Landroid/icu/util/UResourceBundle;
    .end local v6    # "i":I
    :cond_73
    goto :goto_81

    .line 144
    .end local v2    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/util/ULocale;>;"
    :catch_74
    move-exception v1

    .line 146
    .local v1, "e":Ljava/util/MissingResourceException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 147
    .restart local v3    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 148
    .restart local v2    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 151
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v4    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/util/ULocale;>;"
    :goto_81
    monitor-enter p0

    .line 152
    :try_start_82
    iget-object v1, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-nez v1, :cond_8c

    .line 153
    iput-object v3, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    .line 154
    iput-object v2, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    .line 155
    iput-object v4, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    .line 157
    :cond_8c
    monitor-exit p0

    goto :goto_91

    :catchall_8e
    move-exception v1

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_8e

    throw v1

    .line 159
    .end local v2    # "tempLocaleIdToOrdinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "tempLocaleIdToCardinalRulesId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "tempRulesIdToEquivalentULocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/util/ULocale;>;"
    :cond_91
    :goto_91
    return-void

    .line 109
    .end local v0    # "haveMap":Z
    :catchall_92
    move-exception v0

    :try_start_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v0
.end method

.method private greylist-max-o getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .registers 3
    .param p1, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 89
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    :goto_c
    return-object v0
.end method

.method private greylist-max-o getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 97
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public blacklist forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 247
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PluralRulesLoader;->getOrCreateRulesForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    .line 248
    .local v0, "rules":Landroid/icu/text/PluralRules;
    if-nez v0, :cond_8

    .line 249
    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    .line 251
    :cond_8
    return-object v0
.end method

.method public blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 5

    .line 52
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 54
    .local v1, "locales":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 57
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2b
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/icu/util/ULocale;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/util/ULocale;

    return-object v2
.end method

.method public blacklist getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "isAvailable"    # [Z

    .line 64
    if-eqz p2, :cond_1a

    array-length v0, p2

    if-lez v0, :cond_1a

    .line 65
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "localeId":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v1}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v1

    .line 67
    .local v1, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, p2, v2

    .line 70
    .end local v0    # "localeId":Ljava/lang/String;
    .end local v1    # "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1a
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "rulesId":Ljava/lang/String;
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_3d

    .line 75
    :cond_2d
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdToEquivalentULocaleMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 77
    .local v1, "result":Landroid/icu/util/ULocale;
    if-nez v1, :cond_3c

    .line 78
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v2

    .line 81
    :cond_3c
    return-object v1

    .line 72
    .end local v1    # "result":Landroid/icu/util/ULocale;
    :cond_3d
    :goto_3d
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v1
.end method

.method public blacklist getOrCreateRulesForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .registers 15
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 185
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "rulesId":Ljava/lang/String;
    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_b6

    .line 189
    :cond_12
    invoke-static {p1}, Landroid/icu/impl/number/range/StandardPluralRanges;->getSetForLocale(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "rangesId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "cacheKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 194
    .local v3, "rules":Landroid/icu/text/PluralRules;
    iget-object v4, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    monitor-enter v4

    .line 195
    :try_start_31
    iget-object v5, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 196
    .local v5, "hasRules":Z
    if-eqz v5, :cond_42

    .line 197
    iget-object v6, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/PluralRules;

    move-object v3, v6

    .line 199
    :cond_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_b3

    .line 200
    if-nez v5, :cond_b2

    .line 202
    :try_start_45
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 203
    .local v4, "pluralb":Landroid/icu/util/UResourceBundle;
    const-string v6, "rules"

    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 204
    .local v6, "rulesb":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 206
    .local v7, "setb":Landroid/icu/util/UResourceBundle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v10

    if-ge v9, v10, :cond_81

    .line 208
    invoke-virtual {v7, v9}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v10

    .line 209
    .local v10, "b":Landroid/icu/util/UResourceBundle;
    if-lez v9, :cond_6a

    .line 210
    const-string v11, "; "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_6a
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v11, ": "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    nop

    .end local v10    # "b":Landroid/icu/util/UResourceBundle;
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 216
    .end local v9    # "i":I
    :cond_81
    invoke-static {v1}, Landroid/icu/impl/number/range/StandardPluralRanges;->forSet(Ljava/lang/String;)Landroid/icu/impl/number/range/StandardPluralRanges;

    move-result-object v9

    .line 217
    .local v9, "ranges":Landroid/icu/impl/number/range/StandardPluralRanges;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/icu/text/PluralRules;->newInternal(Ljava/lang/String;Landroid/icu/impl/number/range/StandardPluralRanges;)Landroid/icu/text/PluralRules;

    move-result-object v10
    :try_end_8d
    .catch Ljava/text/ParseException; {:try_start_45 .. :try_end_8d} :catch_91
    .catch Ljava/util/MissingResourceException; {:try_start_45 .. :try_end_8d} :catch_8f

    move-object v3, v10

    .line 220
    .end local v4    # "pluralb":Landroid/icu/util/UResourceBundle;
    .end local v6    # "rulesb":Landroid/icu/util/UResourceBundle;
    .end local v7    # "setb":Landroid/icu/util/UResourceBundle;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "ranges":Landroid/icu/impl/number/range/StandardPluralRanges;
    :goto_8e
    goto :goto_93

    .line 219
    :catch_8f
    move-exception v4

    goto :goto_93

    .line 218
    :catch_91
    move-exception v4

    goto :goto_8e

    .line 221
    :goto_93
    iget-object v4, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    monitor-enter v4

    .line 222
    :try_start_96
    iget-object v6, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 223
    iget-object v6, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/PluralRules;

    move-object v3, v6

    .end local v3    # "rules":Landroid/icu/text/PluralRules;
    .local v6, "rules":Landroid/icu/text/PluralRules;
    goto :goto_ad

    .line 225
    .end local v6    # "rules":Landroid/icu/text/PluralRules;
    .restart local v3    # "rules":Landroid/icu/text/PluralRules;
    :cond_a8
    iget-object v6, p0, Landroid/icu/impl/PluralRulesLoader;->pluralRulesCache:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_ad
    monitor-exit v4

    goto :goto_b2

    :catchall_af
    move-exception v6

    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_af

    throw v6

    .line 229
    :cond_b2
    :goto_b2
    return-object v3

    .line 199
    .end local v5    # "hasRules":Z
    :catchall_b3
    move-exception v5

    :try_start_b4
    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v5

    .line 187
    .end local v1    # "rangesId":Ljava/lang/String;
    .end local v2    # "cacheKey":Ljava/lang/String;
    .end local v3    # "rules":Landroid/icu/text/PluralRules;
    :cond_b6
    :goto_b6
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getPluralBundle()Landroid/icu/util/UResourceBundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 237
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "plurals"

    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 167
    invoke-direct {p0, p2}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v0

    .line 168
    .local v0, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "localeId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, "rulesId":Ljava/lang/String;
    :goto_d
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    if-nez v3, :cond_26

    .line 171
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, "ix":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    .line 173
    goto :goto_26

    .line 175
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local v3    # "ix":I
    goto :goto_d

    .line 177
    :cond_26
    :goto_26
    return-object v2
.end method

.method public blacklist hasOverride(Landroid/icu/util/ULocale;)Z
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 264
    const/4 v0, 0x0

    return v0
.end method
