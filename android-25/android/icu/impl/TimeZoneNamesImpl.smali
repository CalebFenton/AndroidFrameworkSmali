.class public Landroid/icu/impl/TimeZoneNamesImpl;
.super Landroid/icu/text/TimeZoneNames;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;,
        Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
    }
.end annotation


# static fields
.field private static final LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile METAZONE_IDS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MZ_PREFIX:Ljava/lang/String; = "meta:"

.field private static final MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

.field private static final NAME_TYPE_VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

.field private static final ZONE_STRINGS_BUNDLE:Ljava/lang/String; = "zoneStrings"

.field private static final serialVersionUID:J = -0x1e40420e38b84b80L


# instance fields
.field private transient _mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _namesFullyLoaded:Z

.field private transient _namesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _namesTrieFullyLoaded:Z

.field private transient _tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _zoneStrings:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method static synthetic -get0()[Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->NAME_TYPE_VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->NAME_TYPE_VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    #@7
    .line 49
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@9
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;)V

    #@c
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@e
    .line 50
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    #@10
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;)V

    #@13
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    #@15
    .line 927
    const-string/jumbo v0, "Etc/.*|SystemV/.*|.*/Riyadh8[7-9]"

    #@18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    #@1e
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    #@3
    .line 66
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    #@6
    .line 65
    return-void
.end method

.method static _getAvailableMetaZoneIDs()Ljava/util/Set;
    .locals 6
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
    .line 78
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    #@2
    if-nez v3, :cond_1

    #@4
    .line 79
    const-class v4, Landroid/icu/impl/TimeZoneNamesImpl;

    #@6
    monitor-enter v4

    #@7
    .line 80
    :try_start_0
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    #@9
    if-nez v3, :cond_0

    #@b
    .line 81
    const-string/jumbo v3, "android/icu/impl/data/icudt56b"

    #@e
    const-string/jumbo v5, "metaZones"

    #@11
    invoke-static {v3, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v0

    #@15
    .line 82
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v3, "mapTimezones"

    #@18
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v2

    #@1c
    .line 83
    .local v2, "mapTimezones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    #@1f
    move-result-object v1

    #@20
    .line 84
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@23
    move-result-object v3

    #@24
    sput-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_0
    monitor-exit v4

    #@27
    .line 88
    :cond_1
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    #@29
    return-object v3

    #@2a
    .line 79
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "mapTimezones":Landroid/icu/util/UResourceBundle;
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method static _getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p0, "tzID"    # Ljava/lang/String;
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
    .line 100
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_1

    #@8
    .line 101
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@b
    move-result-object v4

    #@c
    return-object v4

    #@d
    .line 103
    :cond_1
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@f
    invoke-virtual {v4, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/util/List;

    #@15
    .line 104
    .local v2, "maps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 105
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@1e
    move-result-object v4

    #@1f
    return-object v4

    #@20
    .line 107
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    #@22
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@25
    move-result v4

    #@26
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@29
    .line 108
    .local v3, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "map$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_3

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    #@39
    .line 109
    .local v0, "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 112
    .end local v0    # "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@44
    move-result-object v4

    #@45
    return-object v4
.end method

.method static _getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p0, "tzID"    # Ljava/lang/String;
    .param p1, "date"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 124
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 125
    :cond_0
    return-object v5

    #@a
    .line 127
    :cond_1
    const/4 v3, 0x0

    #@b
    .line 128
    .local v3, "mzID":Ljava/lang/String;
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@d
    invoke-virtual {v4, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/util/List;

    #@13
    .line 129
    .local v2, "maps":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "map$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_3

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    #@23
    .line 130
    .local v0, "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->from()J

    #@26
    move-result-wide v4

    #@27
    cmp-long v4, p1, v4

    #@29
    if-ltz v4, :cond_2

    #@2b
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->to()J

    #@2e
    move-result-wide v4

    #@2f
    cmp-long v4, p1, v4

    #@31
    if-gez v4, :cond_2

    #@33
    .line 131
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 135
    .end local v0    # "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    .end local v3    # "mzID":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method static _getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mzID"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 147
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 148
    :cond_0
    return-object v3

    #@a
    .line 150
    :cond_1
    const/4 v0, 0x0

    #@b
    .line 151
    .local v0, "refID":Ljava/lang/String;
    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    #@d
    invoke-virtual {v2, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/util/Map;

    #@13
    .line 152
    .local v1, "regionTzMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    .line 153
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .end local v0    # "refID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 154
    .local v0, "refID":Ljava/lang/String;
    if-nez v0, :cond_2

    #@21
    .line 155
    const-string/jumbo v2, "001"

    #@24
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .end local v0    # "refID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@2a
    .line 158
    :cond_2
    return-object v0
.end method

.method private addAllNamesIntoTrie()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 288
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 289
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/String;

    #@23
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@25
    invoke-virtual {v2, v5, v3, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    #@28
    goto :goto_0

    #@29
    .line 291
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2b
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v1

    #@33
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_1

    #@39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/util/Map$Entry;

    #@3f
    .line 292
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Ljava/lang/String;

    #@4b
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@4d
    invoke-virtual {v2, v3, v5, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    #@50
    goto :goto_1

    #@51
    .line 287
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/TimeZoneNamesImpl$ZNames;>;"
    :cond_1
    return-void
.end method

.method public static getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 935
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 936
    :cond_0
    return-object v3

    #@a
    .line 935
    :cond_1
    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    #@c
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    .line 939
    const/4 v0, 0x0

    #@17
    .line 940
    .local v0, "location":Ljava/lang/String;
    const/16 v2, 0x2f

    #@19
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1c
    move-result v1

    #@1d
    .line 941
    .local v1, "sep":I
    if-lez v1, :cond_2

    #@1f
    add-int/lit8 v2, v1, 0x1

    #@21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    if-ge v2, v3, :cond_2

    #@27
    .line 942
    add-int/lit8 v2, v1, 0x1

    #@29
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    const/16 v3, 0x5f

    #@2f
    const/16 v4, 0x20

    #@31
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 945
    .end local v0    # "location":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 400
    const-string/jumbo v3, "android/icu/impl/data/icudt56b/zone"

    #@4
    .line 399
    invoke-static {v3, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@a
    .line 401
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v3, "zoneStrings"

    #@d
    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@13
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@15
    .line 404
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1a
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@1c
    .line 405
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@1e
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@21
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@23
    .line 406
    iput-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    #@25
    .line 408
    new-instance v3, Landroid/icu/impl/TextTrieMap;

    #@27
    const/4 v4, 0x1

    #@28
    invoke-direct {v3, v4}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@2b
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@2d
    .line 409
    iput-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@2f
    .line 412
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@32
    move-result-object v1

    #@33
    .line 413
    .local v1, "tz":Landroid/icu/util/TimeZone;
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 414
    .local v2, "tzCanonicalID":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@39
    .line 415
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl;->loadStrings(Ljava/lang/String;)V

    #@3c
    .line 398
    :cond_0
    return-void
.end method

.method private internalLoadAllDisplayNames()V
    .locals 2

    #@0
    .prologue
    .line 280
    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 281
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;)V

    #@a
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->load()V

    #@d
    .line 282
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    #@10
    .line 279
    :cond_0
    return-void
.end method

.method private declared-synchronized loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 4
    .param p1, "loader"    # Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .param p2, "mzID"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@9
    .line 465
    .local v0, "znames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    if-nez v0, :cond_2

    #@b
    .line 466
    if-nez p1, :cond_0

    #@d
    .line 467
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@10
    move-result-object p1

    #@11
    .line 469
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "meta:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x0

    #@28
    invoke-static {p1, v1, v2, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@2b
    move-result-object v0

    #@2c
    .line 470
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2f
    move-result-object p2

    #@30
    .line 471
    iget-boolean v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 472
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@36
    const/4 v2, 0x0

    #@37
    invoke-virtual {v0, p2, v2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    #@3a
    .line 474
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@3c
    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :cond_2
    monitor-exit p0

    #@40
    .line 476
    return-object v0

    #@41
    .end local v0    # "znames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :catchall_0
    move-exception v1

    #@42
    monitor-exit p0

    #@43
    throw v1
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 5
    .param p1, "tzCanonicalID"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 426
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    :cond_0
    monitor-exit p0

    #@a
    .line 427
    return-void

    #@b
    .line 429
    :cond_1
    const/4 v4, 0x0

    #@c
    :try_start_1
    invoke-direct {p0, v4, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@f
    .line 431
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@12
    move-result-object v0

    #@13
    .line 432
    .local v0, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    #@16
    move-result-object v3

    #@17
    .line 433
    .local v3, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "mzID$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Ljava/lang/String;

    #@27
    .line 434
    .local v1, "mzID":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .end local v0    # "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .end local v1    # "mzID":Ljava/lang/String;
    .end local v2    # "mzID$iterator":Ljava/util/Iterator;
    .end local v3    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@2c
    monitor-exit p0

    #@2d
    throw v4

    #@2e
    .line 436
    .restart local v0    # "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .restart local v2    # "mzID$iterator":Ljava/util/Iterator;
    .restart local v3    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    monitor-exit p0

    #@32
    .line 425
    return-void
.end method

.method private declared-synchronized loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 4
    .param p1, "loader"    # Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .param p2, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@9
    .line 487
    .local v0, "tznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    if-nez v0, :cond_2

    #@b
    .line 488
    if-nez p1, :cond_0

    #@d
    .line 489
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forTimeZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@10
    move-result-object p1

    #@11
    .line 491
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@13
    const/16 v2, 0x2f

    #@15
    const/16 v3, 0x3a

    #@17
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1, v1, v2, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@1e
    move-result-object v0

    #@1f
    .line 492
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@22
    move-result-object p2

    #@23
    .line 493
    iget-boolean v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 494
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@29
    const/4 v2, 0x0

    #@2a
    invoke-virtual {v0, v2, p2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    #@2d
    .line 496
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2f
    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_2
    monitor-exit p0

    #@33
    .line 498
    return-object v0

    #@34
    .end local v0    # "tznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit p0

    #@36
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/ULocale;

    #@6
    .line 454
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    #@9
    .line 452
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    .line 445
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@9
    .line 443
    return-void
.end method


# virtual methods
.method public declared-synchronized find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 8
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
    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    monitor-enter p0

    #@1
    .line 202
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_1

    #@9
    .line 203
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v6, "bad input text or range"

    #@e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v5

    #@13
    monitor-exit p0

    #@14
    throw v5

    #@15
    .line 202
    :cond_1
    if-ltz p2, :cond_0

    #@17
    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1a
    move-result v5

    #@1b
    if-ge p2, v5, :cond_0

    #@1d
    .line 205
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

    #@1f
    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    #@22
    .line 206
    .local v0, "handler":Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@24
    invoke-virtual {v5, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@27
    .line 207
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    #@2a
    move-result v5

    #@2b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2e
    move-result v6

    #@2f
    sub-int/2addr v6, p2

    #@30
    if-eq v5, v6, :cond_2

    #@32
    iget-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result-object v5

    #@3a
    monitor-exit p0

    #@3b
    return-object v5

    #@3c
    .line 216
    :cond_3
    :try_start_2
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    #@3f
    .line 217
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    #@42
    .line 218
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@44
    invoke-virtual {v5, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@47
    .line 219
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    #@4a
    move-result v5

    #@4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4e
    move-result v6

    #@4f
    sub-int/2addr v6, p2

    #@50
    if-ne v5, v6, :cond_4

    #@52
    .line 221
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@55
    move-result-object v5

    #@56
    monitor-exit p0

    #@57
    return-object v5

    #@58
    .line 225
    :cond_4
    :try_start_3
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V

    #@5b
    .line 226
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    #@5e
    .line 230
    sget-object v5, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@60
    const/4 v6, 0x0

    #@61
    const/4 v7, 0x0

    #@62
    invoke-static {v5, v6, v7}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@65
    move-result-object v3

    #@66
    .line 231
    .local v3, "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v2

    #@6a
    .local v2, "tzID$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_6

    #@70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v1

    #@74
    check-cast v1, Ljava/lang/String;

    #@76
    .line 232
    .local v1, "tzID":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@78
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@7b
    move-result v5

    #@7c
    if-nez v5, :cond_5

    #@7e
    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .line 234
    const/4 v5, 0x0

    #@83
    invoke-static {v5, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@86
    move-result-object v4

    #@87
    .line 235
    .local v4, "tznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@89
    const/4 v6, 0x0

    #@8a
    invoke-virtual {v4, v6, v1, v5}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    #@8d
    .line 236
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@8f
    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    goto :goto_0

    #@93
    .line 239
    .end local v1    # "tzID":Ljava/lang/String;
    .end local v4    # "tznames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_6
    const/4 v5, 0x1

    #@94
    iput-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@96
    .line 242
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    #@99
    .line 243
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@9b
    invoke-virtual {v5, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@9e
    .line 244
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a1
    move-result-object v5

    #@a2
    monitor-exit p0

    #@a3
    return-object v5
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
    .line 74
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
    .line 96
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .locals 9
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "types"    # [Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "date"    # J
    .param p5, "dest"    # [Ljava/lang/String;
    .param p6, "destOffset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 255
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_1

    #@9
    .line 256
    :cond_0
    return-void

    #@a
    .line 258
    :cond_1
    invoke-direct {p0, v7, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@d
    move-result-object v5

    #@e
    .line 259
    .local v5, "tzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    const/4 v2, 0x0

    #@f
    .line 260
    .local v2, "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    const/4 v0, 0x0

    #@10
    .end local v2    # "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .local v0, "i":I
    :goto_0
    array-length v6, p2

    #@11
    if-ge v0, v6, :cond_6

    #@13
    .line 261
    aget-object v4, p2, v0

    #@15
    .line 262
    .local v4, "type":Landroid/icu/text/TimeZoneNames$NameType;
    invoke-virtual {v5, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 263
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    #@1b
    .line 264
    if-nez v2, :cond_3

    #@1d
    .line 265
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/impl/TimeZoneNamesImpl;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 266
    .local v1, "mzID":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@26
    move-result v6

    #@27
    if-nez v6, :cond_5

    #@29
    .line 267
    :cond_2
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@2c
    move-result-object v2

    #@2d
    .line 272
    .end local v1    # "mzID":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 274
    :cond_4
    add-int v6, p6, v0

    #@33
    aput-object v3, p5, v6

    #@35
    .line 260
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 269
    .restart local v1    # "mzID":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v7, v1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@3b
    move-result-object v2

    #@3c
    .local v2, "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    goto :goto_1

    #@3d
    .line 254
    .end local v1    # "mzID":Ljava/lang/String;
    .end local v2    # "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_6
    return-void
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 190
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 191
    :cond_0
    return-object v2

    #@a
    .line 193
    :cond_1
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@d
    move-result-object v1

    #@e
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@10
    invoke-virtual {v1, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 194
    .local v0, "locName":Ljava/lang/String;
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
    .line 167
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 168
    :cond_0
    return-object v1

    #@a
    .line 170
    :cond_1
    invoke-direct {p0, v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "date"    # J

    #@0
    .prologue
    .line 120
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
    .line 143
    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 2
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 180
    :cond_0
    return-object v1

    #@a
    .line 182
    :cond_1
    invoke-direct {p0, v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public declared-synchronized loadAllDisplayNames()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 249
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 248
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
