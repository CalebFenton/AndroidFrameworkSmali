.class public final Lcom/android/i18n/timezone/TelephonyNetwork;
.super Ljava/lang/Object;
.source "TelephonyNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    }
.end annotation


# instance fields
.field private final blacklist countryIsoCode:Ljava/lang/String;

.field private final blacklist mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;


# direct methods
.method private constructor blacklist <init>(Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;Ljava/lang/String;)V
    .registers 4
    .param p1, "mccMnc"    # Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    .param p2, "countryIsoCode"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    .line 83
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->countryIsoCode:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static blacklist create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;
    .registers 6
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "mnc"    # Ljava/lang/String;
    .param p2, "countryIsoCode"    # Ljava/lang/String;

    .line 77
    invoke-static {p2}, Lcom/android/i18n/timezone/XmlUtils;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "normalizedCountryIso":Ljava/lang/String;
    new-instance v1, Lcom/android/i18n/timezone/TelephonyNetwork;

    new-instance v2, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    invoke-direct {v2, p0, p1}, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/android/i18n/timezone/TelephonyNetwork;-><init>(Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 117
    return v0

    .line 119
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 122
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/i18n/timezone/TelephonyNetwork;

    .line 123
    .local v2, "that":Lcom/android/i18n/timezone/TelephonyNetwork;
    iget-object v3, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    iget-object v4, v2, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    invoke-virtual {v3, v4}, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->countryIsoCode:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/i18n/timezone/TelephonyNetwork;->countryIsoCode:Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 123
    :goto_2b
    return v0

    .line 120
    .end local v2    # "that":Lcom/android/i18n/timezone/TelephonyNetwork;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist test-api getCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->countryIsoCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getMcc()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    iget-object v0, v0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMccMnc()Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    return-object v0
.end method

.method public blacklist test-api getMnc()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    iget-object v0, v0, Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->countryIsoCode:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetwork{mccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->mccMnc:Lcom/android/i18n/timezone/TelephonyNetwork$MccMnc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryIsoCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/TelephonyNetwork;->countryIsoCode:Ljava/lang/String;

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
