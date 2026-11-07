.class public Landroid/icu/impl/TimeZoneGenericNames;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneGenericNames$Cache;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;,
        Landroid/icu/impl/TimeZoneGenericNames$Pattern;,
        Landroid/icu/impl/TimeZoneGenericNames$NameInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/TimeZoneGenericNames;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DST_CHECK_RANGE:J = 0x3b3922000L

.field private static greylist-max-o GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache; = null

.field private static final greylist-max-o GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final whitelist serialVersionUID:J = 0x25e296fe0f5baf81L


# instance fields
.field private volatile transient greylist-max-o _frozen:Z

.field private transient greylist-max-o _genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o _genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o _gnamesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o _gnamesTrieFullyLoaded:Z

.field private final greylist-max-o _locale:Landroid/icu/util/ULocale;

.field private transient greylist-max-o _localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/icu/text/LocaleDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o _patternFormatters:[Ljava/text/MessageFormat;

.field private transient greylist-max-o _region:Ljava/lang/String;

.field private greylist-max-o _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    nop

    .line 126
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>(Landroid/icu/impl/TimeZoneGenericNames-IA;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v1, 0x0

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    .line 176
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "tznames"    # Landroid/icu/text/TimeZoneNames;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    .line 143
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 144
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    .line 145
    return-void
.end method

.method private greylist-max-o createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .registers 10
    .param p1, "matchInfo"    # Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 802
    .local v1, "timeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6a

    .line 818
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected MatchInfo name type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 815
    :pswitch_2f
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 816
    move-object v3, v0

    move-object v6, v1

    goto :goto_46

    .line 811
    :pswitch_34
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 812
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 813
    move-object v3, v0

    move-object v6, v1

    goto :goto_46

    .line 808
    :pswitch_3b
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 809
    move-object v3, v0

    move-object v6, v1

    goto :goto_46

    .line 804
    :pswitch_40
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 805
    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 806
    move-object v3, v0

    move-object v6, v1

    .line 821
    .end local v0    # "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .end local v1    # "timeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    .local v3, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .local v6, "timeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    :goto_46
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "tzID":Ljava/lang/String;
    if-nez v0, :cond_5d

    .line 823
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "mzID":Ljava/lang/String;
    nop

    .line 825
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5e

    .line 822
    .end local v1    # "mzID":Ljava/lang/String;
    :cond_5d
    move-object v4, v0

    .line 827
    .end local v0    # "tzID":Ljava/lang/String;
    .local v4, "tzID":Ljava/lang/String;
    :goto_5e
    nop

    .line 829
    new-instance v2, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;Landroid/icu/impl/TimeZoneGenericNames-IA;)V

    .line 831
    .local v2, "gmatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    return-object v2

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3b
        :pswitch_34
        :pswitch_2f
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    monitor-enter p0

    .line 875
    :try_start_1
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;

    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    .line 876
    .local v0, "handler":Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 877
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMaxMatchLen()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    if-eq v1, v2, :cond_47

    iget-boolean v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    if-eqz v1, :cond_1b

    goto :goto_47

    .line 885
    :cond_1b
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    .line 886
    .local v1, "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 887
    .local v3, "tzID":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    .line 888
    .end local v3    # "tzID":Ljava/lang/String;
    goto :goto_26

    .line 889
    .end local p0    # "this":Landroid/icu/impl/TimeZoneGenericNames;
    :cond_36
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 892
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->resetResults()V

    .line 893
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 894
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object v2
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_4d

    monitor-exit p0

    return-object v2

    .line 879
    .end local v1    # "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_47
    :goto_47
    :try_start_47
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v1

    .line 874
    .end local v0    # "handler":Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "start":I
    .end local p3    # "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method private greylist-max-o findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 844
    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    const/4 v0, 0x0

    .line 847
    .local v0, "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    const-class v1, Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 848
    .local v1, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 849
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_19
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 853
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_2b
    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 859
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v2, p1, p2, v1}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 861
    :cond_37
    return-object v0
.end method

.method private greylist-max-o formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .registers 25
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .param p3, "date"    # J

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 330
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "tzID":Ljava/lang/String;
    if-nez v4, :cond_e

    .line 333
    const/4 v5, 0x0

    return-object v5

    .line 337
    :cond_e
    sget-object v5, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v6, p2

    if-ne v6, v5, :cond_17

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_19

    :cond_17
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 338
    .local v5, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_19
    iget-object v7, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v7, v4, v5}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_22

    .line 341
    return-object v7

    .line 345
    :cond_22
    iget-object v8, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8, v4, v2, v3}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "mzID":Ljava/lang/String;
    if-eqz v8, :cond_118

    .line 347
    const/4 v9, 0x0

    .line 348
    .local v9, "useStandard":Z
    const/4 v10, 0x0

    filled-new-array {v10, v10}, [I

    move-result-object v11

    .line 349
    .local v11, "offsets":[I
    invoke-virtual {v1, v2, v3, v10, v11}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 351
    const/4 v12, 0x1

    aget v13, v11, v12

    if-nez v13, :cond_97

    .line 352
    const/4 v9, 0x1

    .line 354
    instance-of v13, v1, Landroid/icu/util/BasicTimeZone;

    const-wide v14, 0x3b3922000L

    if-eqz v13, :cond_7d

    .line 355
    move-object v13, v1

    check-cast v13, Landroid/icu/util/BasicTimeZone;

    .line 356
    .local v13, "btz":Landroid/icu/util/BasicTimeZone;
    invoke-virtual {v13, v2, v3, v12}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v16

    .line 357
    .local v16, "before":Landroid/icu/util/TimeZoneTransition;
    if-eqz v16, :cond_61

    .line 358
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v17

    sub-long v17, v2, v17

    cmp-long v17, v17, v14

    if-gez v17, :cond_61

    .line 359
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    if-eqz v17, :cond_61

    .line 360
    const/4 v9, 0x0

    goto :goto_7c

    .line 362
    :cond_61
    invoke-virtual {v13, v2, v3, v10}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v17

    .line 363
    .local v17, "after":Landroid/icu/util/TimeZoneTransition;
    if-eqz v17, :cond_7c

    .line 364
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v18

    sub-long v18, v18, v2

    cmp-long v14, v18, v14

    if-gez v14, :cond_7c

    .line 365
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    if-eqz v14, :cond_7c

    .line 366
    const/4 v9, 0x0

    .line 369
    .end local v13    # "btz":Landroid/icu/util/BasicTimeZone;
    .end local v16    # "before":Landroid/icu/util/TimeZoneTransition;
    .end local v17    # "after":Landroid/icu/util/TimeZoneTransition;
    :cond_7c
    :goto_7c
    goto :goto_97

    .line 372
    :cond_7d
    const/4 v13, 0x2

    new-array v13, v13, [I

    .line 373
    .local v13, "tmpOffsets":[I
    move-wide/from16 v16, v14

    sub-long v14, v2, v16

    invoke-virtual {v1, v14, v15, v10, v13}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 374
    aget v14, v13, v12

    if-eqz v14, :cond_8d

    .line 375
    const/4 v9, 0x0

    goto :goto_97

    .line 377
    :cond_8d
    add-long v14, v2, v16

    invoke-virtual {v1, v14, v15, v10, v13}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 378
    aget v14, v13, v12

    if-eqz v14, :cond_97

    .line 379
    const/4 v9, 0x0

    .line 384
    .end local v13    # "tmpOffsets":[I
    :cond_97
    :goto_97
    if-eqz v9, :cond_b8

    .line 385
    sget-object v13, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v5, v13, :cond_a0

    .line 386
    sget-object v13, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_a2

    :cond_a0
    sget-object v13, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 387
    .local v13, "stdNameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_a2
    iget-object v14, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v14, v4, v13, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v14

    .line 388
    .local v14, "stdName":Ljava/lang/String;
    if-eqz v14, :cond_b8

    .line 389
    move-object v7, v14

    .line 396
    iget-object v15, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v15, v8, v5}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "mzGenericName":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b8

    .line 398
    const/4 v7, 0x0

    .line 403
    .end local v13    # "stdNameType":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v14    # "stdName":Ljava/lang/String;
    .end local v15    # "mzGenericName":Ljava/lang/String;
    :cond_b8
    if-nez v7, :cond_118

    .line 405
    iget-object v13, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v13, v8, v5}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v13

    .line 406
    .local v13, "mzName":Ljava/lang/String;
    if-eqz v13, :cond_117

    .line 410
    iget-object v14, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {v0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 411
    .local v14, "goldenID":Ljava/lang/String;
    if-eqz v14, :cond_114

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_114

    .line 412
    invoke-static {v14}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v15

    .line 413
    .local v15, "goldenZone":Landroid/icu/util/TimeZone;
    filled-new-array {v10, v10}, [I

    move-result-object v16

    move-object/from16 v17, v16

    .line 419
    .local v17, "offsets1":[I
    move/from16 v16, v10

    aget v10, v11, v16

    move/from16 v18, v12

    move-object/from16 v19, v13

    .end local v13    # "mzName":Ljava/lang/String;
    .local v19, "mzName":Ljava/lang/String;
    int-to-long v12, v10

    add-long/2addr v12, v2

    aget v10, v11, v18

    int-to-long v1, v10

    add-long/2addr v12, v1

    move-object/from16 v1, v17

    move/from16 v2, v18

    .end local v17    # "offsets1":[I
    .local v1, "offsets1":[I
    invoke-virtual {v15, v12, v13, v2, v1}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 421
    aget v3, v11, v16

    aget v10, v1, v16

    if-ne v3, v10, :cond_104

    aget v3, v11, v2

    aget v10, v1, v2

    if-eq v3, v10, :cond_100

    goto :goto_104

    .line 425
    :cond_100
    move-object/from16 v2, v19

    move-object v7, v2

    .end local v7    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    goto :goto_113

    .line 423
    .end local v2    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_104
    :goto_104
    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v5, v3, :cond_10a

    move v10, v2

    goto :goto_10c

    :cond_10a
    move/from16 v10, v16

    :goto_10c
    move-object/from16 v2, v19

    .end local v19    # "mzName":Ljava/lang/String;
    .local v2, "mzName":Ljava/lang/String;
    invoke-direct {v0, v4, v8, v10, v2}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 427
    .end local v1    # "offsets1":[I
    .end local v15    # "goldenZone":Landroid/icu/util/TimeZone;
    :goto_113
    goto :goto_118

    .line 411
    .end local v2    # "mzName":Ljava/lang/String;
    .restart local v13    # "mzName":Ljava/lang/String;
    :cond_114
    move-object v2, v13

    .line 428
    .end local v13    # "mzName":Ljava/lang/String;
    .restart local v2    # "mzName":Ljava/lang/String;
    move-object v7, v2

    goto :goto_118

    .line 406
    .end local v2    # "mzName":Ljava/lang/String;
    .end local v14    # "goldenID":Ljava/lang/String;
    .restart local v13    # "mzName":Ljava/lang/String;
    :cond_117
    move-object v2, v13

    .line 433
    .end local v9    # "useStandard":Z
    .end local v11    # "offsets":[I
    .end local v13    # "mzName":Ljava/lang/String;
    :cond_118
    :goto_118
    return-object v7
.end method

.method private varargs declared-synchronized blacklist formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pat"    # Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .param p2, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_e

    .line 447
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    .line 450
    .end local p0    # "this":Landroid/icu/impl/TimeZoneGenericNames;
    :cond_e
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    move-result v0

    .line 451
    .local v0, "idx":I
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v1, v1, v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_56

    if-nez v1, :cond_4c

    .line 454
    :try_start_18
    const-string v1, "android/icu/impl/data/icudata/zone"

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 456
    .local v1, "bundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoneStrings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3d
    .catch Ljava/util/MissingResourceException; {:try_start_18 .. :try_end_3d} :catch_3e
    .catchall {:try_start_18 .. :try_end_3d} :catchall_56

    .line 459
    .end local v1    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .local v2, "patText":Ljava/lang/String;
    goto :goto_43

    .line 457
    .end local v2    # "patText":Ljava/lang/String;
    :catch_3e
    move-exception v1

    .line 458
    .local v1, "e":Ljava/util/MissingResourceException;
    :try_start_3f
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->defaultValue()Ljava/lang/String;

    move-result-object v2

    .line 461
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v2    # "patText":Ljava/lang/String;
    :goto_43
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    new-instance v3, Ljava/text/MessageFormat;

    invoke-direct {v3, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v0

    .line 463
    .end local v2    # "patText":Ljava/lang/String;
    :cond_4c
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_56

    monitor-exit p0

    return-object v1

    .line 445
    .end local v0    # "idx":I
    .end local p1    # "pat":Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .end local p2    # "args":[Ljava/lang/String;
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 185
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    invoke-virtual {v1, v0, p0}, Landroid/icu/impl/TimeZoneGenericNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TimeZoneGenericNames;

    return-object v1
.end method

.method private declared-synchronized greylist-max-o getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;
    .registers 3

    monitor-enter p0

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "locNames":Landroid/icu/text/LocaleDisplayNames;
    :try_start_2
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    .line 477
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/LocaleDisplayNames;

    move-object v0, v1

    .line 479
    .end local p0    # "this":Landroid/icu/impl/TimeZoneGenericNames;
    :cond_f
    if-nez v0, :cond_1f

    .line 480
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    move-object v0, v1

    .line 481
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    .line 483
    :cond_1f
    monitor-exit p0

    return-object v0

    .line 474
    .end local v0    # "locNames":Landroid/icu/text/LocaleDisplayNames;
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private greylist-max-o getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "mzID"    # Ljava/lang/String;
    .param p3, "isLong"    # Z
    .param p4, "mzDisplayName"    # Ljava/lang/String;

    .line 546
    if-eqz p3, :cond_5

    const-string v0, "L"

    goto :goto_7

    :cond_5
    const-string v0, "S"

    .line 547
    .local v0, "letter":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 549
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 550
    return-object v2

    .line 552
    :cond_33
    const/4 v3, 0x0

    .line 553
    .local v3, "location":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, "countryCode":Ljava/lang/String;
    if-eqz v4, :cond_56

    .line 556
    iget-object v5, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v5, p2, v4}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "regionalGolden":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 559
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_55

    .line 562
    :cond_4f
    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v6, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 564
    .end local v5    # "regionalGolden":Ljava/lang/String;
    :goto_55
    goto :goto_5f

    .line 565
    :cond_56
    iget-object v5, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v5, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 566
    if-nez v3, :cond_5f

    .line 570
    move-object v3, p1

    .line 573
    :cond_5f
    :goto_5f
    sget-object v5, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    filled-new-array {v3, p4}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    monitor-enter p0

    .line 575
    :try_start_6a
    iget-object v5, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 576
    .local v5, "tmp":Ljava/lang/String;
    if-nez v5, :cond_93

    .line 577
    new-instance v6, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 578
    if-eqz p3, :cond_87

    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_89

    :cond_87
    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    :goto_89
    invoke-direct {v6, v7, v8}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 579
    .local v6, "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v7, v2, v6}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 580
    nop

    .end local v6    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    goto :goto_94

    .line 581
    :cond_93
    move-object v2, v5

    .line 583
    .end local v5    # "tmp":Ljava/lang/String;
    :goto_94
    monitor-exit p0

    .line 584
    return-object v2

    .line 583
    :catchall_96
    move-exception v5

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_6a .. :try_end_98} :catchall_96

    throw v5
.end method

.method private declared-synchronized greylist-max-o getTargetRegion()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 521
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 522
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 524
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 525
    .local v0, "tmp":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 526
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    .line 527
    const-string v1, "001"

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 531
    .end local v0    # "tmp":Landroid/icu/util/ULocale;
    .end local p0    # "this":Landroid/icu/impl/TimeZoneGenericNames;
    :cond_2d
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    .line 520
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_c

    .line 153
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 155
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    new-instance v0, Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 162
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 163
    .local v0, "tz":Landroid/icu/util/TimeZone;
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "tzCanonicalID":Ljava/lang/String;
    if-eqz v1, :cond_32

    .line 165
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    .line 167
    :cond_32
    return-void
.end method

.method private declared-synchronized greylist-max-o loadStrings(Ljava/lang/String;)V
    .registers 13
    .param p1, "tzCanonicalID"    # Ljava/lang/String;

    monitor-enter p0

    .line 487
    if-eqz p1, :cond_57

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_57

    .line 491
    :cond_a
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 495
    .local v0, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    .local v2, "mzID":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "goldenID":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 501
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_38
    if-ge v7, v5, :cond_51

    aget-object v8, v4, v7

    .line 502
    .local v8, "genNonLocType":Landroid/icu/text/TimeZoneNames$NameType;
    iget-object v9, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v9, v2, v8}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v9

    .line 503
    .local v9, "mzGenName":Ljava/lang/String;
    if-eqz v9, :cond_4e

    .line 505
    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v8, v10, :cond_4a

    const/4 v10, 0x1

    goto :goto_4b

    :cond_4a
    move v10, v6

    :goto_4b
    invoke-direct {p0, p1, v2, v10, v9}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_54

    .line 501
    .end local v8    # "genNonLocType":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v9    # "mzGenName":Ljava/lang/String;
    .end local p0    # "this":Landroid/icu/impl/TimeZoneGenericNames;
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 509
    .end local v2    # "mzID":Ljava/lang/String;
    .end local v3    # "goldenID":Ljava/lang/String;
    :cond_51
    goto :goto_17

    .line 510
    :cond_52
    monitor-exit p0

    return-void

    .line 486
    .end local v0    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "tzCanonicalID":Ljava/lang/String;
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1

    .line 488
    .restart local p1    # "tzCanonicalID":Ljava/lang/String;
    :cond_57
    :goto_57
    monitor-exit p0

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 917
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 918
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    .line 919
    return-void
.end method


# virtual methods
.method public blacklist cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;
    .registers 3

    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, "copy":Landroid/icu/impl/TimeZoneGenericNames;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TimeZoneGenericNames;

    move-object v0, v1

    .line 946
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    .line 949
    goto :goto_d

    .line 947
    :catchall_c
    move-exception v1

    .line 950
    :goto_d
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method

.method public blacklist find(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    .line 774
    .local p3, "genericTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3b

    if-ltz p2, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_3b

    .line 778
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 781
    .local v0, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v1

    .line 782
    .local v1, "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v1, :cond_3a

    .line 784
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 785
    .local v3, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    if-nez v0, :cond_32

    .line 786
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v4

    .line 788
    :cond_32
    invoke-direct {p0, v3}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v3    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    goto :goto_1e

    .line 791
    :cond_3a
    return-object v0

    .line 775
    .end local v0    # "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    .end local v1    # "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad input text or range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;"
        }
    .end annotation

    .line 708
    .local p3, "genericTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    if-eqz p1, :cond_73

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_73

    if-ltz p2, :cond_73

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_73

    .line 711
    const/4 v0, 0x0

    .line 714
    .local v0, "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v1

    .line 715
    .local v1, "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v1, :cond_4e

    .line 716
    const/4 v2, 0x0

    .line 717
    .local v2, "longestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 718
    .local v4, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    if-eqz v2, :cond_34

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v6

    if-le v5, v6, :cond_35

    .line 719
    :cond_34
    move-object v2, v4

    .line 721
    .end local v4    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_35
    goto :goto_1c

    .line 722
    :cond_36
    if-eqz v2, :cond_4e

    .line 723
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p2

    if-ne v3, v4, :cond_4e

    .line 742
    iget-object v3, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v3, v4, :cond_4e

    .line 743
    return-object v0

    .line 750
    .end local v2    # "longestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_4e
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v2

    .line 751
    .local v2, "localMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    if-eqz v2, :cond_72

    .line 752
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    .line 756
    .local v4, "match":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    if-eqz v0, :cond_70

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v5

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v6

    if-lt v5, v6, :cond_71

    .line 757
    :cond_70
    move-object v0, v4

    .line 759
    .end local v4    # "match":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    :cond_71
    goto :goto_58

    .line 762
    :cond_72
    return-object v0

    .line 709
    .end local v0    # "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .end local v1    # "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/TimeZoneNames$MatchInfo;>;"
    .end local v2    # "localMatches":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad input text or range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist freeze()Landroid/icu/impl/TimeZoneGenericNames;
    .registers 2

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    .line 935
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .registers 8
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .param p3, "date"    # J

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, "tzCanonicalID":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    goto :goto_25

    .line 211
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames;->formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_25

    .line 213
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_25

    .line 215
    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 204
    :pswitch_1b
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_25

    .line 206
    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_25
    :goto_25
    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "canonicalTzID"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8c

    .line 233
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    .line 237
    return-object v0

    .line 239
    :cond_1c
    return-object v1

    .line 242
    :cond_1d
    new-instance v0, Landroid/icu/util/Output;

    invoke-direct {v0}, Landroid/icu/util/Output;-><init>()V

    move-object v2, v0

    .line 243
    .local v2, "isPrimary":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    invoke-static {p1, v2}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "countryCode":Ljava/lang/String;
    if-eqz v3, :cond_56

    .line 245
    iget-object v0, v2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 247
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "country":Ljava/lang/String;
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .end local v0    # "country":Ljava/lang/String;
    goto :goto_56

    .line 255
    :cond_46
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "city":Ljava/lang/String;
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .end local v0    # "city":Ljava/lang/String;
    :cond_56
    :goto_56
    if-nez v1, :cond_64

    .line 261
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 263
    :cond_64
    monitor-enter p0

    .line 264
    :try_start_65
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 265
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, "tmp":Ljava/lang/String;
    if-nez v0, :cond_86

    .line 268
    new-instance v4, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    sget-object v5, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-direct {v4, p1, v5}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 269
    .local v4, "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    iget-object v5, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v5, v1, v4}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 270
    nop

    .end local v4    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    goto :goto_87

    .line 271
    :cond_86
    move-object v1, v0

    .line 273
    .end local v0    # "tmp":Ljava/lang/String;
    :goto_87
    monitor-exit p0

    .line 275
    :goto_88
    return-object v1

    .line 273
    :catchall_89
    move-exception v0

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_65 .. :try_end_8b} :catchall_89

    throw v0

    .line 231
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "isPrimary":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v3    # "countryCode":Ljava/lang/String;
    :cond_8c
    :goto_8c
    return-object v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 926
    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    return v0
.end method

.method public blacklist setFormatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames;
    .registers 6
    .param p1, "patType"    # Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .param p2, "patStr"    # Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_45

    .line 291
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 292
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 294
    :cond_15
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 295
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 297
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 300
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_37

    .line 301
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    .line 303
    :cond_37
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    move-result v1

    new-instance v2, Ljava/text/MessageFormat;

    invoke-direct {v2, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 304
    return-object p0

    .line 287
    :cond_45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
