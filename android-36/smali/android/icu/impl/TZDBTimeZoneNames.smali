.class public Landroid/icu/impl/TZDBTimeZoneNames;
.super Landroid/icu/text/TimeZoneNames;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    }
.end annotation


# static fields
.field private static final blacklist TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist _locale:Landroid/icu/util/ULocale;

.field private volatile transient blacklist _region:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 52
    nop

    .line 53
    const-string v0, "android/icu/impl/data/icudata/zone"

    const-string v1, "tzdbNames"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 54
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v1, "zoneStrings"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    .line 55
    .end local v0    # "bundle":Landroid/icu/util/UResourceBundle;
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 60
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    .line 62
    return-void
.end method

.method private static blacklist getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .registers 5
    .param p0, "mzID"    # Ljava/lang/String;

    .line 342
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 343
    .local v0, "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    if-nez v0, :cond_35

    .line 344
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 346
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 347
    .local v1, "tmpNames":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    if-nez v1, :cond_33

    move-object v2, v0

    goto :goto_34

    :cond_33
    move-object v2, v1

    :goto_34
    move-object v0, v2

    .line 349
    .end local v1    # "tmpNames":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    :cond_35
    return-object v0
.end method

.method private blacklist getTargetRegion()Ljava/lang/String;
    .registers 4

    .line 398
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 399
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 401
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 402
    .local v1, "tmp":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    .line 404
    const-string v0, "001"

    .line 407
    .end local v1    # "tmp":Landroid/icu/util/ULocale;
    :cond_22
    iput-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    .line 409
    .end local v0    # "region":Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist prepareFind()V
    .registers 13

    .line 353
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v0, :cond_6f

    .line 354
    const-class v0, Landroid/icu/impl/TZDBTimeZoneNames;

    monitor-enter v0

    .line 355
    :try_start_7
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v1, :cond_6a

    .line 357
    new-instance v1, Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 358
    .local v1, "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;>;"
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v3

    .line 359
    .local v3, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 360
    .local v5, "mzID":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v6

    .line 361
    .local v6, "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v6, v7}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "std":Ljava/lang/String;
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v6, v8}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "dst":Ljava/lang/String;
    if-nez v7, :cond_3a

    if-nez v8, :cond_3a

    .line 364
    goto :goto_19

    .line 366
    :cond_3a
    invoke-virtual {v6}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getParseRegions()[Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "parseRegions":[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 374
    .end local v5    # "mzID":Ljava/lang/String;
    .local v10, "mzID":Ljava/lang/String;
    if-eqz v7, :cond_4e

    if-eqz v8, :cond_4e

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v5, v2

    goto :goto_4f

    :cond_4e
    const/4 v5, 0x0

    .line 376
    .local v5, "ambiguousType":Z
    :goto_4f
    if-eqz v7, :cond_5b

    .line 377
    new-instance v11, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    sget-object v12, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-direct {v11, v10, v12, v5, v9}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V

    .line 381
    .local v11, "stdInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    invoke-virtual {v1, v7, v11}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 383
    .end local v11    # "stdInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :cond_5b
    if-eqz v8, :cond_67

    .line 384
    new-instance v11, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    sget-object v12, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-direct {v11, v10, v12, v5, v9}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V

    .line 388
    .local v11, "dstInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    invoke-virtual {v1, v8, v11}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 390
    .end local v5    # "ambiguousType":Z
    .end local v6    # "names":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .end local v7    # "std":Ljava/lang/String;
    .end local v8    # "dst":Ljava/lang/String;
    .end local v9    # "parseRegions":[Ljava/lang/String;
    .end local v10    # "mzID":Ljava/lang/String;
    .end local v11    # "dstInf":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :cond_67
    goto :goto_19

    .line 391
    :cond_68
    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 393
    .end local v1    # "trie":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;>;"
    .end local v3    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6a
    monitor-exit v0

    goto :goto_6f

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw v1

    .line 395
    :cond_6f
    :goto_6f
    return-void
.end method


# virtual methods
.method public blacklist find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 131
    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_26

    if-ltz p2, :cond_26

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_26

    .line 135
    invoke-static {}, Landroid/icu/impl/TZDBTimeZoneNames;->prepareFind()V

    .line 136
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;

    invoke-direct {p0}, Landroid/icu/impl/TZDBTimeZoneNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 137
    .local v0, "handler":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 138
    invoke-virtual {v0}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 132
    .end local v0    # "handler":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad input text or range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getAvailableMetaZoneIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 102
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_11

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_11

    goto :goto_1a

    .line 106
    :cond_11
    invoke-static {p1}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "date"    # J

    .line 85
    invoke-static {p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 93
    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method
