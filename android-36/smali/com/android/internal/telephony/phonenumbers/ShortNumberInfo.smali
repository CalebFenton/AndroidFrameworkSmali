.class public Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

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

.field private final blacklist matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

.field private final blacklist shortNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    const-class v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getShortNumberMetadataSource()Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;-><init>(Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 57
    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 91
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->shortNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;

    return-object v0
.end method

.method private static blacklist getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 4

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    const/16 v2, 0x30

    .line 552
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 553
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getRegionCodeForShortNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 343
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    const/4 p0, 0x0

    .line 344
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 346
    :cond_17
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 350
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v0

    :cond_3c
    return-object v1
.end method

.method private blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_14

    .line 104
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_14
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 127
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->shortNumberMetadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    return-object v0
.end method

.method private blacklist matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z
    .registers 7

    .line 449
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 450
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    .line 456
    :cond_12
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_39

    .line 461
    :cond_1f
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2e

    .line 462
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 463
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    const/4 v1, 0x1

    .line 464
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-interface {p0, p1, p2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    return p0

    :cond_39
    :goto_39
    return v1
.end method

.method private blacklist matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 6

    .line 563
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    .line 564
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 567
    :cond_1a
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {p0, p1, p2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    return p0
.end method

.method private blacklist regionDialingFromMatchesNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 3

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object p0

    .line 115
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 428
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getExpectedCost(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 10

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 307
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 309
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    const/4 v1, 0x0

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object p0

    return-object p0

    .line 312
    :cond_24
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2a

    if-eq v4, v2, :cond_67

    const/4 v5, 0x2

    if-eq v4, v5, :cond_64

    const/4 v5, 0x3

    if-eq v4, v5, :cond_61

    .line 330
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognised cost for region: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2a

    .line 319
    :cond_61
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_2a

    .line 317
    :cond_64
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 322
    :cond_67
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    if-eq v1, v3, :cond_2a

    .line 323
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_2a

    :cond_6e
    return-object v1
.end method

.method public blacklist getExpectedCostForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 6

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 248
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 251
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_12

    .line 253
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 256
    :cond_12
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 262
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 267
    :cond_2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 268
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 270
    :cond_3c
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 271
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 273
    :cond_49
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 274
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 276
    :cond_56
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 278
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0

    .line 280
    :cond_5f
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object p0
.end method

.method public blacklist isCarrierSpecific(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 486
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isCarrierSpecificForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 506
    :cond_8
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 510
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isPossibleShortNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 5

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_14

    .line 170
    :cond_27
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPossibleShortNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 145
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    if-nez p0, :cond_f

    return v1

    .line 149
    :cond_f
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSmsServiceForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 530
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 532
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSmsServices()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public blacklist isValidShortNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 5

    .line 213
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_16

    if-eqz v1, :cond_16

    return v2

    .line 220
    :cond_16
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isValidShortNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 190
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    if-nez p2, :cond_f

    return v1

    .line 194
    :cond_f
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 199
    :cond_1e
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    return p0
.end method
