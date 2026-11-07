.class public Landroid/icu/impl/TimeZoneNamesImpl;
.super Landroid/icu/text/TimeZoneNames;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    }
.end annotation


# static fields
.field private static final blacklist LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile blacklist METAZONE_IDS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MZ_PREFIX:Ljava/lang/String; = "meta:"

.field private static final blacklist MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

.field private static final blacklist TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

.field private static final blacklist ZONE_STRINGS_BUNDLE:Ljava/lang/String; = "zoneStrings"

.field private static final whitelist serialVersionUID:J = -0x1e40420e38b84b80L


# instance fields
.field private transient blacklist _mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist _namesFullyLoaded:Z

.field private transient blacklist _namesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist _namesTrieFullyLoaded:Z

.field private transient blacklist _tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist _zoneStrings:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fget_mzNamesMap(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fget_tzNamesMap(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fget_zoneStrings(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    .line 51
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    .line 988
    const-string v0, "Etc/.*|SystemV/.*|.*/Riyadh8[7-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 66
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    .line 68
    return-void
.end method

.method static blacklist _getAvailableMetaZoneIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    if-nez v0, :cond_28

    .line 80
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    monitor-enter v0

    .line 81
    :try_start_7
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    if-nez v1, :cond_23

    .line 82
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "metaZones"

    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 83
    .local v1, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v2, "mapTimezones"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 84
    .local v2, "mapTimezones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 85
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    .line 87
    .end local v1    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v2    # "mapTimezones":Landroid/icu/util/UResourceBundle;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    .line 89
    :cond_28
    :goto_28
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    return-object v0
.end method

.method static blacklist _getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p0, "tzID"    # Ljava/lang/String;
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

    .line 101
    if-eqz p0, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_42

    .line 104
    :cond_9
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, "maps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 108
    :cond_1c
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    .local v1, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    .line 110
    .local v3, "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    goto :goto_29

    .line 113
    :cond_3d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 102
    .end local v0    # "maps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .end local v1    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_42
    :goto_42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static blacklist _getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .registers 9
    .param p0, "tzID"    # Ljava/lang/String;
    .param p1, "date"    # J

    .line 125
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_39

    .line 128
    :cond_9
    const/4 v0, 0x0

    .line 129
    .local v0, "mzID":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-virtual {v1, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 130
    .local v1, "maps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    .line 131
    .local v3, "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->from()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_37

    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->to()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_37

    .line 132
    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    move-result-object v0

    .line 133
    goto :goto_38

    .line 135
    .end local v3    # "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    :cond_37
    goto :goto_16

    .line 136
    :cond_38
    :goto_38
    return-object v0

    .line 126
    .end local v0    # "mzID":Ljava/lang/String;
    .end local v1    # "maps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    :cond_39
    :goto_39
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist _getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "mzID"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .line 148
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2b

    .line 151
    :cond_9
    const/4 v0, 0x0

    .line 152
    .local v0, "refID":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    invoke-virtual {v1, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 153
    .local v1, "regionTzMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 154
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 155
    if-nez v0, :cond_2a

    .line 156
    const-string v2, "001"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 159
    :cond_2a
    return-object v0

    .line 149
    .end local v0    # "refID":Ljava/lang/String;
    .end local v1    # "regionTzMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist addAllNamesIntoTrie()V
    .registers 6

    .line 297
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, v3, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addAsTimeZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    .line 299
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    goto :goto_a

    .line 300
    :cond_28
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 301
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, v3, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addAsMetaZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    .line 302
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    goto :goto_32

    .line 303
    :cond_50
    return-void
.end method

.method private blacklist doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;
    .registers 6
    .param p1, "handler"    # Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    .line 249
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v0, p2, p3, p1}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 250
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-eq v0, v1, :cond_1a

    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    if-eqz v0, :cond_18

    goto :goto_1a

    .line 253
    :cond_18
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "tzID"    # Ljava/lang/String;

    .line 997
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_35

    .line 1001
    :cond_15
    const/4 v0, 0x0

    .line 1002
    .local v0, "location":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1003
    .local v1, "sep":I
    if-lez v1, :cond_34

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 1004
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1007
    :cond_34
    return-object v0

    .line 998
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "sep":I
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist initialize(Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 421
    const-string v0, "android/icu/impl/data/icudata/zone"

    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 423
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "zoneStrings"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    .line 426
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 427
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 428
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    .line 430
    new-instance v2, Landroid/icu/impl/TextTrieMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    .line 431
    iput-boolean v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    .line 434
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 435
    .local v1, "tz":Landroid/icu/util/TimeZone;
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "tzCanonicalID":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 437
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl;->loadStrings(Ljava/lang/String;)V

    .line 439
    :cond_3a
    return-void
.end method

.method private blacklist internalLoadAllDisplayNames()V
    .registers 3

    .line 289
    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    if-nez v0, :cond_10

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    .line 291
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->load()V

    .line 293
    :cond_10
    return-void
.end method

.method private declared-synchronized blacklist loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .registers 6
    .param p1, "mzID"    # Ljava/lang/String;

    monitor-enter p0

    .line 484
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 485
    .local v0, "mznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    if-nez v0, :cond_21

    .line 486
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    .line 487
    .local v1, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadMetaZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$mgetNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-object v0, v2

    .line 490
    .end local v1    # "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .end local p0    # "this":Landroid/icu/impl/TimeZoneNamesImpl;
    :cond_21
    monitor-exit p0

    return-object v0

    .line 483
    .end local v0    # "mznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .end local p1    # "mzID":Ljava/lang/String;
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private declared-synchronized blacklist loadStrings(Ljava/lang/String;)V
    .registers 5
    .param p1, "tzCanonicalID"    # Ljava/lang/String;

    monitor-enter p0

    .line 448
    if-eqz p1, :cond_2b

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2b

    .line 451
    :cond_a
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 453
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 454
    .local v0, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 455
    .local v2, "mzID":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    .line 456
    nop

    .end local v2    # "mzID":Ljava/lang/String;
    goto :goto_15

    .line 457
    .end local p0    # "this":Landroid/icu/impl/TimeZoneNamesImpl;
    :cond_26
    monitor-exit p0

    return-void

    .line 447
    .end local v0    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "tzCanonicalID":Ljava/lang/String;
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    .line 449
    .restart local p1    # "tzCanonicalID":Ljava/lang/String;
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized blacklist loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .registers 6
    .param p1, "tzID"    # Ljava/lang/String;

    monitor-enter p0

    .line 500
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 501
    .local v0, "tznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    if-nez v0, :cond_21

    .line 502
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    .line 503
    .local v1, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadTimeZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$mgetNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-object v0, v2

    .line 506
    .end local v1    # "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .end local p0    # "this":Landroid/icu/impl/TimeZoneNamesImpl;
    :cond_21
    monitor-exit p0

    return-object v0

    .line 499
    .end local v0    # "tznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .end local p1    # "tzID":Ljava/lang/String;
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    .line 474
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    .line 475
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 465
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 466
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 11
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

    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    monitor-enter p0

    .line 203
    if-eqz p1, :cond_5d

    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5d

    if-ltz p2, :cond_5d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_5d

    .line 206
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    .line 210
    .local v0, "handler":Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_65

    .line 211
    .local v1, "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v1, :cond_1e

    .line 212
    monitor-exit p0

    return-object v1

    .line 219
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    .line 222
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_65

    .line 223
    .end local v1    # "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .local v2, "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v2, :cond_29

    .line 224
    monitor-exit p0

    return-object v2

    .line 229
    :cond_29
    :try_start_29
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V

    .line 234
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v3, 0x0

    invoke-static {v1, v3, v3}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    .line 235
    .local v1, "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    .local v5, "tzID":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 237
    iget-object v6, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v3, v5}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 239
    .end local v5    # "tzID":Ljava/lang/String;
    .end local p0    # "this":Landroid/icu/impl/TimeZoneNamesImpl;
    :cond_50
    goto :goto_37

    .line 240
    :cond_51
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    .line 241
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    .line 244
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;

    move-result-object v3
    :try_end_5b
    .catchall {:try_start_29 .. :try_end_5b} :catchall_65

    monitor-exit p0

    return-object v3

    .line 204
    .end local v0    # "handler":Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
    .end local v1    # "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "matches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_5d
    :try_start_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad input text or range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    :catchall_65
    move-exception p1

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_65

    throw p1
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

    .line 75
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

    .line 97
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .registers 14
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "types"    # [Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "date"    # J
    .param p5, "dest"    # [Ljava/lang/String;
    .param p6, "destOffset"    # I

    .line 264
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3c

    .line 267
    :cond_9
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    .line 268
    .local v0, "tzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    const/4 v1, 0x0

    .line 269
    .local v1, "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p2

    if-ge v2, v3, :cond_3b

    .line 270
    aget-object v3, p2, v2

    .line 271
    .local v3, "type":Landroid/icu/text/TimeZoneNames$NameType;
    invoke-virtual {v0, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_34

    .line 273
    if-nez v1, :cond_30

    .line 274
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/impl/TimeZoneNamesImpl;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "mzID":Ljava/lang/String;
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_29

    goto :goto_2e

    .line 278
    :cond_29
    invoke-direct {p0, v5}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v1

    goto :goto_30

    .line 276
    :cond_2e
    :goto_2e
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 281
    .end local v5    # "mzID":Ljava/lang/String;
    :cond_30
    :goto_30
    invoke-virtual {v1, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v4

    .line 283
    :cond_34
    add-int v5, p6, v2

    aput-object v4, p5, v5

    .line 269
    .end local v3    # "type":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 285
    .end local v2    # "i":I
    :cond_3b
    return-void

    .line 265
    .end local v0    # "tzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .end local v1    # "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_3c
    :goto_3c
    return-void
.end method

.method public whitelist test-api getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tzID"    # Ljava/lang/String;

    .line 191
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 194
    :cond_9
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "locName":Ljava/lang/String;
    return-object v0

    .line 192
    .end local v0    # "locName":Ljava/lang/String;
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 168
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 171
    :cond_9
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "date"    # J

    .line 121
    invoke-static {p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 144
    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 180
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 183
    :cond_9
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized blacklist loadAllDisplayNames()V
    .registers 2

    monitor-enter p0

    .line 258
    :try_start_1
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 259
    monitor-exit p0

    return-void

    .line 257
    .end local p0    # "this":Landroid/icu/impl/TimeZoneNamesImpl;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method
