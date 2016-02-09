.class public Landroid/icu/impl/TimeZoneNamesImpl;
.super Landroid/icu/text/TimeZoneNames;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames;,
        Landroid/icu/impl/TimeZoneNamesImpl$TZNames;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;,
        Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;
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
            "Landroid/icu/impl/TimeZoneNamesImpl$TZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _zoneStrings:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;)V

    #@6
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@8
    .line 46
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    #@a
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;)V

    #@d
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    #@f
    .line 715
    const-string/jumbo v0, "Etc/.*|SystemV/.*|.*/Riyadh8[7-9]"

    #@12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    #@18
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    #@3
    .line 61
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    #@6
    .line 60
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
    .line 73
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    #@2
    if-nez v3, :cond_1

    #@4
    .line 74
    const-class v4, Landroid/icu/impl/TimeZoneNamesImpl;

    #@6
    monitor-enter v4

    #@7
    .line 75
    :try_start_0
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    #@9
    if-nez v3, :cond_0

    #@b
    .line 76
    const-string/jumbo v3, "android/icu/impl/data/icudt55b"

    #@e
    const-string/jumbo v5, "metaZones"

    #@11
    invoke-static {v3, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v0

    #@15
    .line 77
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v3, "mapTimezones"

    #@18
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v2

    #@1c
    .line 78
    .local v2, "mapTimezones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    #@1f
    move-result-object v1

    #@20
    .line 79
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
    .line 83
    :cond_1
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    #@29
    return-object v3

    #@2a
    .line 74
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
    .line 95
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_1

    #@8
    .line 96
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@b
    move-result-object v4

    #@c
    return-object v4

    #@d
    .line 98
    :cond_1
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@f
    invoke-virtual {v4, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/util/List;

    #@15
    .line 99
    .local v2, "maps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@1e
    move-result-object v4

    #@1f
    return-object v4

    #@20
    .line 102
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    #@22
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@25
    move-result v4

    #@26
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@29
    .line 103
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
    .line 104
    .local v0, "map":Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 107
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
    .line 119
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 120
    :cond_0
    return-object v5

    #@a
    .line 122
    :cond_1
    const/4 v3, 0x0

    #@b
    .line 123
    .local v3, "mzID":Ljava/lang/String;
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    #@d
    invoke-virtual {v4, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/util/List;

    #@13
    .line 124
    .local v2, "maps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
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
    .line 125
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
    .line 126
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 130
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
    .line 142
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 143
    :cond_0
    return-object v3

    #@a
    .line 145
    :cond_1
    const/4 v0, 0x0

    #@b
    .line 146
    .local v0, "refID":Ljava/lang/String;
    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    #@d
    invoke-virtual {v2, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/util/Map;

    #@13
    .line 147
    .local v1, "regionTzMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    .line 148
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .end local v0    # "refID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 149
    .local v0, "refID":Ljava/lang/String;
    if-nez v0, :cond_2

    #@21
    .line 150
    const-string/jumbo v2, "001"

    #@24
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .end local v0    # "refID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@2a
    .line 153
    :cond_2
    return-object v0
.end method

.method public static getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 723
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 724
    :cond_0
    return-object v3

    #@a
    .line 723
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
    .line 727
    const/4 v0, 0x0

    #@17
    .line 728
    .local v0, "location":Ljava/lang/String;
    const/16 v2, 0x2f

    #@19
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1c
    move-result v1

    #@1d
    .line 729
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
    .line 730
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
    .line 733
    .end local v0    # "location":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 236
    const-string/jumbo v3, "android/icu/impl/data/icudt55b/zone"

    #@3
    .line 235
    invoke-static {v3, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 237
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v3, "zoneStrings"

    #@c
    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@12
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@14
    .line 239
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@19
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    .line 240
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@1d
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@20
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@22
    .line 242
    new-instance v3, Landroid/icu/impl/TextTrieMap;

    #@24
    const/4 v4, 0x1

    #@25
    invoke-direct {v3, v4}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@28
    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@2a
    .line 243
    const/4 v3, 0x0

    #@2b
    iput-boolean v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@2d
    .line 246
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@30
    move-result-object v1

    #@31
    .line 247
    .local v1, "tz":Landroid/icu/util/TimeZone;
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 248
    .local v2, "tzCanonicalID":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@37
    .line 249
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl;->loadStrings(Ljava/lang/String;)V

    #@3a
    .line 234
    :cond_0
    return-void
.end method

.method private declared-synchronized loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 9
    .param p1, "mzID"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 296
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@9
    .line 297
    .local v4, "znames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    if-nez v4, :cond_2

    #@b
    .line 298
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@d
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "meta:"

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-static {v5, v6}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@24
    move-result-object v4

    #@25
    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    .line 301
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    #@2c
    move-result-object v6

    #@2d
    const/4 v5, 0x0

    #@2e
    array-length v7, v6

    #@2f
    :goto_0
    if-ge v5, v7, :cond_1

    #@31
    aget-object v2, v6, v5

    #@33
    .line 302
    .local v2, "t":Landroid/icu/text/TimeZoneNames$NameType;
    invoke-virtual {v4, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 303
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@39
    .line 304
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    #@3b
    const/4 v8, 0x0

    #@3c
    invoke-direct {v0, v8}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;)V

    #@3f
    .line 305
    .local v0, "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    iput-object p1, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    #@41
    .line 306
    iput-object v2, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@43
    .line 307
    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@45
    invoke-virtual {v8, v1, v0}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@48
    .line 301
    .end local v0    # "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 310
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "t":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@4d
    invoke-virtual {v5, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    .line 311
    .local v3, "tmpZnames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    if-nez v3, :cond_3

    #@55
    .end local v3    # "tmpZnames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_2
    :goto_1
    monitor-exit p0

    #@56
    .line 313
    return-object v4

    #@57
    .line 311
    .restart local v3    # "tmpZnames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_3
    move-object v4, v3

    #@58
    goto :goto_1

    #@59
    .end local v3    # "tmpZnames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .end local v4    # "znames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :catchall_0
    move-exception v5

    #@5a
    monitor-exit p0

    #@5b
    throw v5
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 4
    .param p1, "tzCanonicalID"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 260
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_1

    #@9
    :cond_0
    monitor-exit p0

    #@a
    .line 261
    return-void

    #@b
    .line 263
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@e
    .line 265
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    #@11
    move-result-object v2

    #@12
    .line 266
    .local v2, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "mzID$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    .line 267
    .local v0, "mzID":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .end local v0    # "mzID":Ljava/lang/String;
    .end local v1    # "mzID$iterator":Ljava/util/Iterator;
    .end local v2    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@27
    monitor-exit p0

    #@28
    throw v3

    #@29
    .restart local v1    # "mzID$iterator":Ljava/util/Iterator;
    .restart local v2    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    #@2a
    .line 259
    return-void
.end method

.method private declared-synchronized loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    .locals 9
    .param p1, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 323
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@9
    .line 324
    .local v4, "tznames":Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    if-nez v4, :cond_2

    #@b
    .line 325
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@d
    const/16 v6, 0x2f

    #@f
    const/16 v7, 0x3a

    #@11
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-static {v5, v6, p1}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@18
    move-result-object v4

    #@19
    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    .line 328
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    #@20
    move-result-object v6

    #@21
    const/4 v5, 0x0

    #@22
    array-length v7, v6

    #@23
    :goto_0
    if-ge v5, v7, :cond_1

    #@25
    aget-object v2, v6, v5

    #@27
    .line 329
    .local v2, "t":Landroid/icu/text/TimeZoneNames$NameType;
    invoke-virtual {v4, v2}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 330
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@2d
    .line 331
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    #@2f
    const/4 v8, 0x0

    #@30
    invoke-direct {v0, v8}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;)V

    #@33
    .line 332
    .local v0, "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    iput-object p1, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    #@35
    .line 333
    iput-object v2, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@37
    .line 334
    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@39
    invoke-virtual {v8, v1, v0}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    #@3c
    .line 328
    .end local v0    # "info":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 337
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "t":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@41
    invoke-virtual {v5, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 338
    .local v3, "tmpTznames":Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    if-nez v3, :cond_3

    #@49
    .end local v3    # "tmpTznames":Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    :cond_2
    :goto_1
    monitor-exit p0

    #@4a
    .line 340
    return-object v4

    #@4b
    .line 338
    .restart local v3    # "tmpTznames":Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    :cond_3
    move-object v4, v3

    #@4c
    goto :goto_1

    #@4d
    .end local v3    # "tmpTznames":Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    .end local v4    # "tznames":Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    :catchall_0
    move-exception v5

    #@4e
    monitor-exit p0

    #@4f
    throw v5
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
    .line 285
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/ULocale;

    #@6
    .line 286
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    #@9
    .line 284
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
    .line 276
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    .line 277
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@9
    .line 275
    return-void
.end method


# virtual methods
.method public declared-synchronized find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 10
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
    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    monitor-enter p0

    #@1
    .line 197
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v7

    #@7
    if-nez v7, :cond_1

    #@9
    .line 198
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v8, "bad input text or range"

    #@e
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v7

    #@13
    monitor-exit p0

    #@14
    throw v7

    #@15
    .line 197
    :cond_1
    if-ltz p2, :cond_0

    #@17
    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1a
    move-result v7

    #@1b
    if-ge p2, v7, :cond_0

    #@1d
    .line 200
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

    #@1f
    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    #@22
    .line 201
    .local v0, "handler":Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
    iget-object v7, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@24
    invoke-virtual {v7, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@27
    .line 202
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    #@2a
    move-result v7

    #@2b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2e
    move-result v8

    #@2f
    sub-int/2addr v8, p2

    #@30
    if-eq v7, v8, :cond_2

    #@32
    iget-boolean v7, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@34
    if-eqz v7, :cond_3

    #@36
    .line 204
    :cond_2
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result-object v7

    #@3a
    monitor-exit p0

    #@3b
    return-object v7

    #@3c
    .line 210
    :cond_3
    :try_start_2
    sget-object v7, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@3e
    const/4 v8, 0x0

    #@3f
    const/4 v9, 0x0

    #@40
    invoke-static {v7, v8, v9}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@43
    move-result-object v6

    #@44
    .line 211
    .local v6, "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v5

    #@48
    .local v5, "tzID$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_4

    #@4e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v4

    #@52
    check-cast v4, Ljava/lang/String;

    #@54
    .line 212
    .local v4, "tzID":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@57
    goto :goto_0

    #@58
    .line 216
    .end local v4    # "tzID":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->getAvailableMetaZoneIDs()Ljava/util/Set;

    #@5b
    move-result-object v3

    #@5c
    .line 217
    .local v3, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5f
    move-result-object v2

    #@60
    .local v2, "mzID$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v7

    #@64
    if-eqz v7, :cond_5

    #@66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, Ljava/lang/String;

    #@6c
    .line 218
    .local v1, "mzID":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@6f
    goto :goto_1

    #@70
    .line 220
    .end local v1    # "mzID":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    #@71
    iput-boolean v7, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    #@73
    .line 223
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    #@76
    .line 224
    iget-object v7, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    #@78
    invoke-virtual {v7, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@7b
    .line 225
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7e
    move-result-object v7

    #@7f
    monitor-exit p0

    #@80
    return-object v7
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
    .line 69
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
    .line 91
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 185
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 186
    :cond_0
    return-object v2

    #@a
    .line 188
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@d
    move-result-object v1

    #@e
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@10
    invoke-virtual {v1, v2}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 189
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
    .line 162
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 163
    :cond_0
    return-object v1

    #@a
    .line 165
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

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
    .line 115
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
    .line 138
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
    .line 174
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 175
    :cond_0
    return-object v1

    #@a
    .line 177
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method
