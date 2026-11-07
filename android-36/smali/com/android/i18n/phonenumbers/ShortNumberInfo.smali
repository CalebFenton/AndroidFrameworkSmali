.class public Lcom/android/i18n/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

.field private static final blacklist REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final blacklist countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

.field private final blacklist shortNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    const-class v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    .line 50
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    .line 52
    invoke-static {}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getShortNumberMetadataSource()Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/android/i18n/phonenumbers/internal/MatcherApi;Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;)V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 59
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/i18n/phonenumbers/internal/MatcherApi;Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;)V
    .registers 4
    .param p1, "matcherApi"    # Lcom/android/i18n/phonenumbers/internal/MatcherApi;
    .param p2, "shortNumberMetadataSource"    # Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 94
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->shortNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    .line 96
    nop

    .line 97
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 98
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    .registers 1

    .line 75
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    return-object v0
.end method

.method private static blacklist getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 554
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 555
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 556
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .end local v1    # "zeros":[C
    :cond_1e
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 344
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 345
    return-object v1

    .line 346
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 347
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 349
    :cond_17
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 351
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 352
    .local v4, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v4, :cond_3c

    .line 353
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 355
    return-object v3

    .line 357
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v4    # "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3c
    goto :goto_1f

    .line 358
    :cond_3d
    return-object v1
.end method

.method private blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 5
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_16

    .line 108
    :cond_15
    move-object v1, v0

    .line 107
    :goto_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 127
    return-object v0

    .line 130
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->shortNumberMetadataSource:Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;

    invoke-interface {v1, p1}, Lcom/android/i18n/phonenumbers/metadata/source/RegionMetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 131
    :catch_b
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method private blacklist matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "allowPrefixMatch"    # Z

    .line 452
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 453
    .local v0, "possibleNumber":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 457
    return v2

    .line 459
    :cond_12
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 460
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_3b

    .line 464
    :cond_1f
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "normalizedNumber":Ljava/lang/String;
    if-eqz p3, :cond_2f

    sget-object v4, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 466
    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 467
    .local v2, "allowPrefixMatchForRegion":Z
    :goto_30
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-interface {v4, v3, v5, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v4

    return v4

    .line 461
    .end local v2    # "allowPrefixMatchForRegion":Z
    .end local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return v2
.end method

.method private blacklist matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 566
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    .line 567
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 568
    return v1

    .line 570
    :cond_1a
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public blacklist connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 431
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method blacklist getExampleShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 370
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 371
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 372
    return-object v1

    .line 374
    :cond_9
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 375
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 376
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 378
    :cond_18
    return-object v1
.end method

.method blacklist getExampleShortNumberForCost(Ljava/lang/String;Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;)Ljava/lang/String;
    .registers 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "cost"    # Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 391
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 392
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 393
    return-object v1

    .line 395
    :cond_9
    const/4 v2, 0x0

    .line 396
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_30

    goto :goto_21

    .line 404
    :pswitch_12
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 405
    goto :goto_21

    .line 401
    :pswitch_17
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 402
    goto :goto_21

    .line 398
    :pswitch_1c
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 399
    nop

    .line 410
    :goto_21
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 411
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 413
    :cond_2e
    return-object v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getExpectedCost(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 308
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 310
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 312
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 313
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v1

    return-object v1

    .line 315
    :cond_24
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 316
    .local v1, "cost":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v4

    .line 318
    .local v4, "costForRegion":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_6c

    .line 333
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognised cost for region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6a

    .line 322
    :pswitch_5c
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 323
    goto :goto_6a

    .line 320
    :pswitch_5f
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 325
    :pswitch_62
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    if-eq v1, v5, :cond_6a

    .line 326
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_6a

    .line 331
    :pswitch_69
    nop

    .line 335
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v4    # "costForRegion":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    :cond_6a
    :goto_6a
    goto :goto_2a

    .line 336
    :cond_6b
    return-object v1

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_69
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
    .end packed-switch
.end method

.method public blacklist getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 251
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0

    .line 254
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 255
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_12

    .line 256
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 259
    :cond_12
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 265
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 270
    :cond_2f
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 271
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 273
    :cond_3c
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 274
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 276
    :cond_49
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 277
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 279
    :cond_56
    invoke-virtual {p0, v1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 281
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 283
    :cond_5f
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2
.end method

.method public blacklist isCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 483
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "regionCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 487
    .local v3, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v3, :cond_22

    .line 489
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    .line 488
    invoke-direct {p0, v2, v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    .line 487
    :goto_23
    return v4
.end method

.method public blacklist isCarrierSpecificForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 507
    return v1

    .line 509
    :cond_8
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 511
    .local v2, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1e

    .line 513
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 512
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 511
    :goto_1f
    return v1
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isPossibleShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 166
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 168
    .local v1, "shortNumberLength":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "region":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 170
    .local v4, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v4, :cond_27

    .line 171
    goto :goto_14

    .line 173
    :cond_27
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 174
    const/4 v2, 0x1

    return v2

    .line 176
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3b
    goto :goto_14

    .line 177
    :cond_3c
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist isPossibleShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 146
    return v1

    .line 148
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 149
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_f

    .line 150
    return v1

    .line 152
    :cond_f
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 153
    .local v1, "numberLength":I
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public blacklist isSmsServiceForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 531
    return v1

    .line 533
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 534
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_1e

    .line 535
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSmsServices()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 535
    invoke-direct {p0, v2, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 534
    :goto_1f
    return v1
.end method

.method public blacklist isValidShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 216
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "regionCode":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    if-eqz v1, :cond_16

    .line 221
    return v3

    .line 223
    :cond_16
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public blacklist isValidShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 191
    return v1

    .line 193
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 194
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_f

    .line 195
    return v1

    .line 197
    :cond_f
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 199
    .local v3, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 200
    return v1

    .line 202
    :cond_1e
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 203
    .local v1, "shortNumberDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    return v4
.end method
