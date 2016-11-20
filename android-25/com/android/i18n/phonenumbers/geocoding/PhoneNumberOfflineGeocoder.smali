.class public Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/android/i18n/phonenumbers/geocoding/data/"

.field private static instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@3
    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@6
    .line 39
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@c
    .line 43
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@e
    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;-><init>(Ljava/lang/String;)V

    #@11
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@13
    .line 42
    return-void
.end method

.method private canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 2
    .param p1, "numberType"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 224
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@3
    if-eq p1, v1, :cond_0

    #@5
    .line 225
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7
    if-ne p1, v1, :cond_1

    #@9
    .line 224
    :cond_0
    :goto_0
    return v0

    #@a
    .line 226
    :cond_1
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@c
    if-eq p1, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 68
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@5
    move-result v5

    #@6
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodesForCountryCode(I)Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    .line 69
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x1

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 70
    const/4 v4, 0x0

    #@12
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/lang/String;

    #@18
    invoke-direct {p0, v4, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    return-object v4

    #@1d
    .line 72
    :cond_0
    const-string/jumbo v3, "ZZ"

    #@20
    .line 73
    .local v3, "regionWhereNumberIsValid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "regionCode$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/String;

    #@30
    .line 74
    .local v0, "regionCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@32
    invoke-virtual {v4, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 75
    const-string/jumbo v4, "ZZ"

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-nez v4, :cond_2

    #@41
    .line 78
    const-string/jumbo v4, ""

    #@44
    return-object v4

    #@45
    .line 80
    :cond_2
    move-object v3, v0

    #@46
    goto :goto_0

    #@47
    .line 83
    .end local v0    # "regionCode":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    return-object v4
.end method

.method public static declared-synchronized getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 3

    #@0
    .prologue
    const-class v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@2
    monitor-enter v1

    #@3
    .line 56
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 57
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@9
    const-string/jumbo v2, "/com/android/i18n/phonenumbers/geocoding/data/"

    #@c
    invoke-direct {v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    #@11
    .line 59
    :cond_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 91
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "ZZ"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 92
    const-string/jumbo v0, "001"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 91
    if-eqz v0, :cond_1

    #@14
    .line 93
    :cond_0
    const-string/jumbo v0, ""

    #@17
    .line 91
    :goto_0
    return-object v0

    #@18
    .line 93
    :cond_1
    new-instance v0, Ljava/util/Locale;

    #@1a
    const-string/jumbo v1, ""

    #@1d
    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    invoke-virtual {v0, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    goto :goto_0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@5
    move-result-object v0

    #@6
    .line 187
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 188
    const-string/jumbo v1, ""

    #@d
    return-object v1

    #@e
    .line 189
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 192
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@5
    move-result-object v0

    #@6
    .line 210
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 211
    const-string/jumbo v1, ""

    #@d
    return-object v1

    #@e
    .line 212
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 215
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 111
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 112
    .local v3, "langStr":Ljava/lang/String;
    const-string/jumbo v8, ""

    #@7
    .line 113
    .local v8, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    .line 116
    .local v7, "regionStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@e
    move-result v9

    #@f
    invoke-static {v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 117
    .local v4, "mobileToken":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@15
    invoke-virtual {v9, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 118
    .local v5, "nationalNumber":Ljava/lang/String;
    const-string/jumbo v9, ""

    #@1c
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v9

    #@20
    if-nez v9, :cond_0

    #@22
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_0

    #@28
    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2b
    move-result v9

    #@2c
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 122
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@32
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@35
    move-result v10

    #@36
    invoke-virtual {v9, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .line 125
    .local v6, "region":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@3c
    invoke-virtual {v9, v5, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v1

    #@40
    .line 130
    .local v1, "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@42
    invoke-virtual {v9, v1, v3, v8, v7}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 136
    .end local v1    # "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v6    # "region":Ljava/lang/String;
    .local v0, "areaDescription":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@49
    move-result v9

    #@4a
    if-lez v9, :cond_1

    #@4c
    .end local v0    # "areaDescription":Ljava/lang/String;
    :goto_2
    return-object v0

    #@4d
    .line 126
    .restart local v6    # "region":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@4e
    .line 128
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    move-object v1, p1

    #@4f
    .restart local v1    # "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    #@50
    .line 133
    .end local v1    # "copiedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v6    # "region":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    #@52
    invoke-virtual {v9, p1, v3, v8, v7}, Lcom/android/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .restart local v0    # "areaDescription":Ljava/lang/String;
    goto :goto_1

    #@57
    .line 137
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    goto :goto_2
.end method

.method public getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 167
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 171
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method
