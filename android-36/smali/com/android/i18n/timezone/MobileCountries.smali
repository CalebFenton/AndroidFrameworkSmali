.class public final Lcom/android/i18n/timezone/MobileCountries;
.super Ljava/lang/Object;
.source "MobileCountries.java"


# instance fields
.field private final blacklist countryIsoCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist defaultCountryIsoCode:Ljava/lang/String;

.field private final blacklist mcc:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p1, "mcc"    # Ljava/lang/String;
    .param p3, "defaultCountryIsoCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    .local p2, "countryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->mcc:Ljava/lang/String;

    .line 61
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->countryIsoCodes:Ljava/util/Set;

    .line 62
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->defaultCountryIsoCode:Ljava/lang/String;

    .line 63
    return-void

    .line 57
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The default country ISO code was not found in the set of country ISO codes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist create(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/android/i18n/timezone/MobileCountries;
    .registers 7
    .param p0, "mcc"    # Ljava/lang/String;
    .param p2, "defaultCountryIsoCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/i18n/timezone/MobileCountries;"
        }
    .end annotation

    .line 43
    .local p1, "countryIsoCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/i18n/timezone/MobileCountries$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/i18n/timezone/MobileCountries$$ExternalSyntheticLambda0;-><init>()V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 49
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 50
    .local v0, "normalizedCountryIsos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/i18n/timezone/MobileCountries;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-static {p2}, Lcom/android/i18n/timezone/XmlUtils;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/i18n/timezone/MobileCountries;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 95
    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Lcom/android/i18n/timezone/MobileCountries;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    move-object v1, p1

    check-cast v1, Lcom/android/i18n/timezone/MobileCountries;

    .line 98
    .local v1, "that":Lcom/android/i18n/timezone/MobileCountries;
    iget-object v3, p0, Lcom/android/i18n/timezone/MobileCountries;->mcc:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/i18n/timezone/MobileCountries;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/i18n/timezone/MobileCountries;->countryIsoCodes:Ljava/util/Set;

    iget-object v4, v1, Lcom/android/i18n/timezone/MobileCountries;->countryIsoCodes:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/i18n/timezone/MobileCountries;->defaultCountryIsoCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/i18n/timezone/MobileCountries;->defaultCountryIsoCode:Ljava/lang/String;

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 98
    :goto_2c
    return v0

    .line 101
    .end local v1    # "that":Lcom/android/i18n/timezone/MobileCountries;
    :cond_2d
    return v2
.end method

.method public blacklist test-api getCountryIsoCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->countryIsoCodes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist test-api getDefaultCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->defaultCountryIsoCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getMcc()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/i18n/timezone/MobileCountries;->mcc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/i18n/timezone/MobileCountries;->countryIsoCodes:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/i18n/timezone/MobileCountries;->defaultCountryIsoCode:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileCountries{mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/MobileCountries;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryIsoCodes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/MobileCountries;->countryIsoCodes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultCountryIsoCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/MobileCountries;->defaultCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
