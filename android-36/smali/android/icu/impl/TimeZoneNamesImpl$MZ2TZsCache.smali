.class Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MZ2TZsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 959
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 959
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 966
    const/4 v0, 0x0

    .line 968
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "metaZones"

    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 969
    .local v1, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v2, "mapTimezones"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 972
    .local v2, "mapTimezones":Landroid/icu/util/UResourceBundle;
    :try_start_f
    invoke-virtual {v2, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 974
    .local v3, "regionMap":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 975
    .local v4, "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v5

    .line 977
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 978
    .local v6, "region":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 979
    .local v7, "tzID":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/util/MissingResourceException; {:try_start_f .. :try_end_40} :catch_43

    .line 980
    nop

    .end local v6    # "region":Ljava/lang/String;
    .end local v7    # "tzID":Ljava/lang/String;
    goto :goto_25

    .line 983
    .end local v3    # "regionMap":Landroid/icu/util/UResourceBundle;
    .end local v4    # "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_42
    goto :goto_48

    .line 981
    :catch_43
    move-exception v3

    .line 982
    .local v3, "e":Ljava/util/MissingResourceException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 984
    .end local v3    # "e":Ljava/util/MissingResourceException;
    :goto_48
    return-object v0
.end method
