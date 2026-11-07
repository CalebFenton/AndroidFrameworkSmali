.class public final Lcom/android/i18n/timezone/CountryZonesFinder;
.super Ljava/lang/Object;
.source "CountryZonesFinder.java"


# instance fields
.field private final blacklist countryTimeZonesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "countryTimeZonesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/i18n/timezone/CountryZonesFinder;->countryTimeZonesList:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static blacklist createForTests(Ljava/util/List;)Lcom/android/i18n/timezone/CountryZonesFinder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones;",
            ">;)",
            "Lcom/android/i18n/timezone/CountryZonesFinder;"
        }
    .end annotation

    .line 43
    .local p0, "countryTimeZonesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones;>;"
    new-instance v0, Lcom/android/i18n/timezone/CountryZonesFinder;

    invoke-direct {v0, p0}, Lcom/android/i18n/timezone/CountryZonesFinder;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public blacklist test-api findCanonicalTimeZoneId(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryZonesFinder;->countryTimeZonesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/timezone/CountryTimeZones;

    .line 131
    .local v1, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "countryTimeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 133
    .local v4, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-virtual {v4}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 134
    invoke-virtual {v4}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getAlternativeIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_3c

    .line 137
    .end local v4    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_3b
    goto :goto_1a

    .line 135
    .restart local v4    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_3c
    :goto_3c
    invoke-virtual {v4}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    .end local v1    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    .end local v2    # "countryTimeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    .end local v4    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_41
    goto :goto_6

    .line 140
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist test-api lookupAllCountryIsoCodes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryZonesFinder;->countryTimeZonesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v0, "isoCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/i18n/timezone/CountryZonesFinder;->countryTimeZonesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones;

    .line 54
    .local v2, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    invoke-virtual {v2}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v2    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    goto :goto_11

    .line 56
    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist test-api lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;
    .registers 6
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/android/i18n/timezone/XmlUtils;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "normalizedCountryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/i18n/timezone/CountryZonesFinder;->countryTimeZonesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones;

    .line 103
    .local v2, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    invoke-virtual {v2}, Lcom/android/i18n/timezone/CountryTimeZones;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 104
    return-object v2

    .line 106
    .end local v2    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    :cond_21
    goto :goto_a

    .line 107
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist test-api lookupCountryTimeZonesForZoneId(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones;>;"
    iget-object v1, p0, Lcom/android/i18n/timezone/CountryZonesFinder;->countryTimeZonesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones;

    .line 77
    .local v2, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    const/4 v3, 0x0

    .line 80
    .local v3, "match":Z
    invoke-virtual {v2}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "countryTimeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 82
    .local v6, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-virtual {v6}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 83
    invoke-virtual {v6}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getAlternativeIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    goto :goto_43

    .line 87
    .end local v6    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_42
    goto :goto_21

    .line 84
    .restart local v6    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_43
    :goto_43
    const/4 v3, 0x1

    .line 85
    nop

    .line 88
    .end local v6    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_45
    if-eqz v3, :cond_4a

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    .end local v3    # "match":Z
    .end local v4    # "countryTimeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    :cond_4a
    goto :goto_c

    .line 92
    :cond_4b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
