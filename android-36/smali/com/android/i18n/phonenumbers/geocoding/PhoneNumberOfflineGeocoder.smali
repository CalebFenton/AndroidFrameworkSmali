.class public Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static blacklist instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private final blacklist phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private final blacklist prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 44
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 45
    return-void
.end method

.method private blacklist getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/util/Locale;

    .line 70
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 71
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 73
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    :cond_1d
    const-string v1, "ZZ"

    .line 76
    .local v1, "regionWhereNumberIsValid":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "regionCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 80
    const-string v4, "ZZ"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 81
    const-string v2, ""

    return-object v2

    .line 83
    :cond_42
    move-object v1, v3

    .line 85
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_43
    goto :goto_23

    .line 86
    :cond_44
    invoke-direct {p0, v1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized greylist getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .registers 3

    const-class v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v1, :cond_16

    .line 59
    new-instance v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getGeocodingDataDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 62
    :cond_16
    sget-object v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private blacklist getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/util/Locale;

    .line 94
    const-string v0, ""

    if-eqz p1, :cond_1f

    const-string v1, "ZZ"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 95
    const-string v1, "001"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1f

    .line 96
    :cond_15
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    :goto_1f
    nop

    .line 94
    :goto_20
    return-object v0
.end method


# virtual methods
.method public greylist getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 193
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 194
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_d

    .line 195
    const-string v1, ""

    return-object v1

    .line 196
    :cond_d
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 199
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 217
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_d

    .line 218
    const-string v1, ""

    return-object v1

    .line 219
    :cond_d
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 116
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "langStr":Ljava/lang/String;
    const-string v1, ""

    .line 118
    .local v1, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "regionStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "mobileToken":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "nationalNumber":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "region":Ljava/lang/String;
    :try_start_38
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v6, v4, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6
    :try_end_3e
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_38 .. :try_end_3e} :catch_3f

    .line 134
    .local v6, "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_42

    .line 131
    .end local v6    # "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_3f
    move-exception v6

    .line 133
    .local v6, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    move-object v7, p1

    move-object v6, v7

    .line 135
    .local v6, "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_42
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .end local v6    # "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v5, "areaDescription":Ljava/lang/String;
    goto :goto_4f

    .line 138
    .end local v5    # "areaDescription":Ljava/lang/String;
    :cond_49
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v5, p1, v0, v1, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .restart local v5    # "areaDescription":Ljava/lang/String;
    :goto_4f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_57

    .line 142
    move-object v6, v5

    goto :goto_5b

    :cond_57
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 141
    :goto_5b
    return-object v6
.end method

.method public blacklist getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 177
    :cond_11
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
