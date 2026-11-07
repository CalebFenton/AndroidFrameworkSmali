.class public Ljava/time/zone/IcuZoneRulesProvider;
.super Ljava/time/zone/ZoneRulesProvider;
.source "IcuZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;
    }
.end annotation


# instance fields
.field private final blacklist cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/time/zone/ZoneRulesProvider;-><init>()V

    .line 45
    new-instance v0, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;-><init>(I)V

    iput-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    return-void
.end method

.method static blacklist generateZoneRules(Ljava/lang/String;)Ljava/time/zone/ZoneRules;
    .registers 2
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lcom/android/icu/util/ExtendedTimeZone;->getInstance(Ljava/lang/String;)Lcom/android/icu/util/ExtendedTimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/icu/util/ExtendedTimeZone;->createZoneRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected blacklist provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    .registers 4
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "forCaching"    # Z

    .line 61
    iget-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneRules;

    return-object v0
.end method

.method protected blacklist provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .registers 5
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/TreeMap;

    .line 67
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 66
    return-object v0
.end method

.method protected blacklist provideZoneIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 50
    .local v0, "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    .end local v0    # "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "GMT+0"

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "GMT-0"

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    return-object v1
.end method
