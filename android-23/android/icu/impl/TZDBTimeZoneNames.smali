.class public Landroid/icu/impl/TZDBTimeZoneNames;
.super Landroid/icu/text/TimeZoneNames;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;
    }
.end annotation


# static fields
.field private static final TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _locale:Landroid/icu/util/ULocale;

.field private volatile transient _region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 42
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5
    .line 41
    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    .line 44
    const/4 v1, 0x0

    #@8
    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    #@a
    .line 49
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/zone"

    #@d
    const-string/jumbo v2, "tzdbNames"

    #@10
    .line 48
    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v0

    #@14
    .line 50
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v1, "zoneStrings"

    #@17
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@1d
    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    #@1f
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    #@5
    .line 56
    return-void
.end method

.method private static getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 5
    .param p0, "mzID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@8
    .line 327
    .local v0, "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    if-nez v0, :cond_0

    #@a
    .line 328
    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "meta:"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@23
    move-result-object v0

    #@24
    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    .line 330
    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    #@2a
    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@30
    .line 331
    .local v1, "tmpNames":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    if-nez v1, :cond_1

    #@32
    .line 333
    .end local v1    # "tmpNames":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    :cond_0
    :goto_0
    return-object v0

    #@33
    .line 331
    .restart local v1    # "tmpNames":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    :cond_1
    move-object v0, v1

    #@34
    goto :goto_0
.end method

.method private getTargetRegion()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 384
    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 385
    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    #@6
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 386
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 387
    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    #@12
    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@15
    move-result-object v1

    #@16
    .line 388
    .local v1, "tmp":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 390
    const-string/jumbo v0, "001"

    #@23
    .line 393
    .end local v1    # "tmp":Landroid/icu/util/ULocale;
    :cond_0
    iput-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    #@25
    .line 395
    .end local v0    # "region":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    #@27
    return-object v2
.end method

.method private static prepareFind()V
    .locals 13

    #@0
    .prologue
    .line 337
    sget-object v11, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    #@2
    if-nez v11, :cond_6

    #@4
    .line 338
    const-class v12, Landroid/icu/impl/TZDBTimeZoneNames;

    #@6
    monitor-enter v12

    #@7
    .line 339
    :try_start_0
    sget-object v11, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    #@9
    if-nez v11, :cond_5

    #@b
    .line 341
    new-instance v10, Landroid/icu/impl/TextTrieMap;

    #@d
    const/4 v11, 0x1

    #@e
    invoke-direct {v10, v11}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@11
    .line 342
    .local v10, "trie":Landroid/icu/impl/TextTrieMap;, "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;>;"
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    #@14
    move-result-object v5

    #@15
    .line 343
    .local v5, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v4

    #@19
    .local v4, "mzID$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v11

    #@1d
    if-eqz v11, :cond_4

    #@1f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    .line 344
    .local v3, "mzID":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@28
    move-result-object v6

    #@29
    .line 345
    .local v6, "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@2b
    invoke-virtual {v6, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 346
    .local v8, "std":Ljava/lang/String;
    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@31
    invoke-virtual {v6, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 347
    .local v1, "dst":Ljava/lang/String;
    if-nez v8, :cond_1

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 350
    :cond_1
    invoke-virtual {v6}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getParseRegions()[Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    .line 351
    .local v7, "parseRegions":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 358
    if-eqz v8, :cond_3

    #@43
    if-eqz v1, :cond_3

    #@45
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    .line 360
    :goto_1
    if-eqz v8, :cond_2

    #@4b
    .line 361
    new-instance v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    #@4d
    const/4 v11, 0x0

    #@4e
    invoke-direct {v9, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;)V

    #@51
    .line 362
    .local v9, "stdInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    iput-object v3, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    #@53
    .line 363
    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@55
    iput-object v11, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@57
    .line 364
    iput-boolean v0, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    #@59
    .line 365
    iput-object v7, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    #@5b
    .line 366
    invoke-virtual {v10, v8, v9}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@5e
    .line 368
    .end local v9    # "stdInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :cond_2
    if-eqz v1, :cond_0

    #@60
    .line 369
    new-instance v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    #@62
    const/4 v11, 0x0

    #@63
    invoke-direct {v2, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;)V

    #@66
    .line 370
    .local v2, "dstInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    iput-object v3, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    #@68
    .line 371
    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@6a
    iput-object v11, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@6c
    .line 372
    iput-boolean v0, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    #@6e
    .line 373
    iput-object v7, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    #@70
    .line 374
    invoke-virtual {v10, v1, v2}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 338
    .end local v1    # "dst":Ljava/lang/String;
    .end local v2    # "dstInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    .end local v3    # "mzID":Ljava/lang/String;
    .end local v4    # "mzID$iterator":Ljava/util/Iterator;
    .end local v5    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .end local v7    # "parseRegions":[Ljava/lang/String;
    .end local v8    # "std":Ljava/lang/String;
    :catchall_0
    move-exception v11

    #@75
    monitor-exit v12

    #@76
    throw v11

    #@77
    .line 358
    .restart local v1    # "dst":Ljava/lang/String;
    .restart local v3    # "mzID":Ljava/lang/String;
    .restart local v4    # "mzID$iterator":Ljava/util/Iterator;
    .restart local v5    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .restart local v7    # "parseRegions":[Ljava/lang/String;
    .restart local v8    # "std":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    #@78
    .local v0, "ambiguousType":Z
    goto :goto_1

    #@79
    .line 377
    .end local v0    # "ambiguousType":Z
    .end local v1    # "dst":Ljava/lang/String;
    .end local v3    # "mzID":Ljava/lang/String;
    .end local v6    # "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .end local v7    # "parseRegions":[Ljava/lang/String;
    .end local v8    # "std":Ljava/lang/String;
    :cond_4
    :try_start_1
    sput-object v10, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    :cond_5
    monitor-exit v12

    #@7c
    .line 336
    :cond_6
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 128
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "bad input text or range"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 127
    :cond_1
    if-ltz p2, :cond_0

    #@13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v1

    #@17
    if-ge p2, v1, :cond_0

    #@19
    .line 131
    invoke-static {}, Landroid/icu/impl/TZDBTimeZoneNames;->prepareFind()V

    #@1c
    .line 132
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;

    #@1e
    invoke-direct {p0}, Landroid/icu/impl/TZDBTimeZoneNames;->getTargetRegion()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, p3, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    #@25
    .line 133
    .local v0, "handler":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    #@27
    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@2a
    .line 134
    invoke-virtual {v0}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->getMatches()Ljava/util/Collection;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method

.method public getAvailableMetaZoneIDs()Ljava/util/Set;
    .locals 1
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
    .line 65
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 2
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 98
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 100
    :cond_0
    return-object v1

    #@a
    .line 99
    :cond_1
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@c
    if-eq p2, v0, :cond_2

    #@e
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@10
    if-ne p2, v0, :cond_0

    #@12
    .line 102
    :cond_2
    invoke-static {p1}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "date"    # J

    #@0
    .prologue
    .line 81
    invoke-static {p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
