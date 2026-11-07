.class Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;
.super Llibcore/util/BasicLruCache;
.source "IcuZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/zone/IcuZoneRulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoneRulesCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache<",
        "Ljava/lang/String;",
        "Ljava/time/zone/ZoneRules;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "maxSize"    # I

    .line 78
    invoke-direct {p0, p1}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;->create(Ljava/lang/String;)Ljava/time/zone/ZoneRules;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist create(Ljava/lang/String;)Ljava/time/zone/ZoneRules;
    .registers 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 83
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "canonicalId":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 87
    invoke-virtual {p0, v0}, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/zone/ZoneRules;

    return-object v1

    .line 89
    :cond_11
    invoke-static {p1}, Ljava/time/zone/IcuZoneRulesProvider;->generateZoneRules(Ljava/lang/String;)Ljava/time/zone/ZoneRules;

    move-result-object v1

    return-object v1
.end method
