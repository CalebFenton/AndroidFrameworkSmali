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
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 686
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 692
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 693
    const/4 v2, 0x0

    #@1
    .line 695
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "android/icu/impl/data/icudt55b"

    #@4
    const-string/jumbo v11, "metaZones"

    #@7
    invoke-static {v10, v11}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v0

    #@b
    .line 696
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v10, "mapTimezones"

    #@e
    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@11
    move-result-object v4

    #@12
    .line 699
    .local v4, "mapTimezones":Landroid/icu/util/UResourceBundle;
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@15
    move-result-object v7

    #@16
    .line 701
    .local v7, "regionMap":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    #@19
    move-result-object v8

    #@1a
    .line 702
    .local v8, "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    #@1c
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@1f
    move-result v10

    #@20
    invoke-direct {v3, v10}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    #@23
    .line 704
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v6

    #@27
    .local v6, "region$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v10

    #@2b
    if-eqz v10, :cond_0

    #@2d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    .line 705
    .local v5, "region":Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v10

    #@37
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3a
    move-result-object v9

    #@3b
    .line 706
    .local v9, "tzID":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3e
    move-result-object v10

    #@3f
    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@42
    goto :goto_0

    #@43
    .line 708
    .end local v5    # "region":Ljava/lang/String;
    .end local v6    # "region$iterator":Ljava/util/Iterator;
    .end local v9    # "tzID":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@44
    .local v1, "e":Ljava/util/MissingResourceException;
    move-object v2, v3

    #@45
    .line 709
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "regionMap":Landroid/icu/util/UResourceBundle;
    .end local v8    # "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@48
    move-result-object v2

    #@49
    .line 711
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-object v2

    #@4a
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "region$iterator":Ljava/util/Iterator;
    .restart local v7    # "regionMap":Landroid/icu/util/UResourceBundle;
    .restart local v8    # "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move-object v2, v3

    #@4b
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    #@4c
    .line 708
    .end local v6    # "region$iterator":Ljava/util/Iterator;
    .end local v7    # "regionMap":Landroid/icu/util/UResourceBundle;
    .end local v8    # "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    #@4d
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    goto :goto_1
.end method
