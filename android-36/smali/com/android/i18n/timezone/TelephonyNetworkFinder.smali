.class public final Lcom/android/i18n/timezone/TelephonyNetworkFinder;
.super Ljava/lang/Object;
.source "TelephonyNetworkFinder.java"


# instance fields
.field private final blacklist countriesByMcc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/timezone/MobileCountries;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist networksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist networksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/timezone/MobileCountries;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "networksList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/TelephonyNetwork;>;"
    .local p2, "networksMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;Lcom/android/i18n/timezone/TelephonyNetwork;>;"
    .local p3, "countriesByMcc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/i18n/timezone/MobileCountries;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->networksList:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->networksMap:Ljava/util/Map;

    .line 110
    iput-object p3, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->countriesByMcc:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public static blacklist create(Ljava/util/List;Ljava/util/List;)Lcom/android/i18n/timezone/TelephonyNetworkFinder;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/MobileCountries;",
            ">;)",
            "Lcom/android/i18n/timezone/TelephonyNetworkFinder;"
        }
    .end annotation

    .line 51
    .local p0, "networksList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/TelephonyNetwork;>;"
    .local p1, "mobileCountriesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/MobileCountries;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v0, "validCountryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 53
    .local v4, "validCountryIsoCode":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/i18n/timezone/XmlUtils;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v4    # "validCountryIsoCode":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 57
    :cond_19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v1, "networksMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;Lcom/android/i18n/timezone/TelephonyNetwork;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " replacing previous entry."

    const-string v5, ". New entry="

    const-string v6, "Unrecognized country code: "

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/timezone/TelephonyNetwork;

    .line 59
    .local v3, "network":Lcom/android/i18n/timezone/TelephonyNetwork;
    invoke-virtual {v3}, Lcom/android/i18n/timezone/TelephonyNetwork;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/i18n/timezone/TelephonyNetwork;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for telephony network="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    .line 64
    :cond_60
    invoke-virtual {v3}, Lcom/android/i18n/timezone/TelephonyNetwork;->getMccMnc()Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    move-result-object v6

    .line 65
    .local v6, "mccMnc":Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/timezone/TelephonyNetwork;

    .line 66
    .local v7, "existingEntry":Lcom/android/i18n/timezone/TelephonyNetwork;
    if-eqz v7, :cond_8e

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate MccMnc detected for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    .line 70
    .end local v3    # "network":Lcom/android/i18n/timezone/TelephonyNetwork;
    .end local v6    # "mccMnc":Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    .end local v7    # "existingEntry":Lcom/android/i18n/timezone/TelephonyNetwork;
    :cond_8e
    goto :goto_22

    .line 74
    :cond_8f
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v2, "countriesByMcc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/i18n/timezone/MobileCountries;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_98
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/timezone/MobileCountries;

    .line 76
    .local v7, "mobileCountries":Lcom/android/i18n/timezone/MobileCountries;
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getCountryIsoCodes()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ac
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, " for telephony MCC="

    if-eqz v9, :cond_e1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 77
    .local v9, "countryIsoCode":Ljava/lang/String;
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e0

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 79
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-static {v10}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    .line 81
    .end local v9    # "countryIsoCode":Ljava/lang/String;
    :cond_e0
    goto :goto_ac

    .line 83
    :cond_e1
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getDefaultCountryIsoCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_111

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized default country code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getDefaultCountryIsoCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 86
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-static {v8}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    .line 89
    :cond_111
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate MCC detected for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    .line 95
    :cond_141
    invoke-virtual {v7}, Lcom/android/i18n/timezone/MobileCountries;->getMcc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v7    # "mobileCountries":Lcom/android/i18n/timezone/MobileCountries;
    goto/16 :goto_98

    .line 99
    :cond_14a
    new-instance v3, Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 99
    return-object v3
.end method


# virtual methods
.method public blacklist test-api findCountriesByMcc(Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;
    .registers 3
    .param p1, "mcc"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->countriesByMcc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/MobileCountries;

    return-object v0
.end method

.method public blacklist test-api findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;
    .registers 5
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->networksMap:Ljava/util/Map;

    new-instance v1, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    invoke-direct {v1, p1, p2}, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyNetwork;

    return-object v0
.end method

.method public blacklist getAllMobileCountries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/MobileCountries;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->countriesByMcc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/TelephonyNetwork;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->networksList:Ljava/util/List;

    return-object v0
.end method
