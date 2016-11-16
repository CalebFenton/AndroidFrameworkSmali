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
.field private static final synthetic -com-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues:[I

.field private static final INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

.field private static final REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;


# direct methods
.method private static synthetic -getcom-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->-com-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->-com-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->values()[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->-com-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    const-class v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    #@c
    .line 48
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    #@e
    invoke-static {}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/android/i18n/phonenumbers/internal/MatcherApi;)V

    #@15
    .line 47
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    #@17
    .line 53
    new-instance v0, Ljava/util/HashSet;

    #@19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1c
    .line 52
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    #@1e
    .line 55
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    #@20
    const-string/jumbo v1, "BR"

    #@23
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@26
    .line 56
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    #@28
    const-string/jumbo v1, "CL"

    #@2b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    .line 57
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    #@30
    const-string/jumbo v1, "NI"

    #@33
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    .line 44
    return-void
.end method

.method constructor <init>(Lcom/android/i18n/phonenumbers/internal/MatcherApi;)V
    .locals 1
    .param p1, "matcherApi"    # Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@5
    .line 89
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    .line 88
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@b
    .line 85
    return-void
.end method

.method public static getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    .locals 1

    #@0
    .prologue
    .line 70
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    #@2
    return-object v0
.end method

.method private static getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 593
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 594
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    #@e
    move-result v2

    #@f
    new-array v1, v2, [C

    #@11
    .line 595
    .local v1, "zeros":[C
    const/16 v2, 0x30

    #@13
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    #@16
    .line 596
    new-instance v2, Ljava/lang/String;

    #@18
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 598
    .end local v1    # "zeros":[C
    :cond_0
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@21
    move-result-wide v2

    #@22
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@25
    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method private getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 424
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 425
    return-object v6

    #@9
    .line 426
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@c
    move-result v4

    #@d
    const/4 v5, 0x1

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 427
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Ljava/lang/String;

    #@16
    return-object v4

    #@17
    .line 429
    :cond_1
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 430
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/String;

    #@2b
    .line 431
    .local v2, "regionCode":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@2e
    move-result-object v1

    #@2f
    .line 432
    .local v1, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_2

    #@31
    .line 433
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@34
    move-result-object v4

    #@35
    invoke-direct {p0, v0, v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@38
    move-result v4

    #@39
    .line 432
    if-eqz v4, :cond_2

    #@3b
    .line 435
    return-object v2

    #@3c
    .line 438
    .end local v1    # "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_3
    return-object v6
.end method

.method private getRegionCodesForCountryCode(I)Ljava/util/List;
    .locals 3
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/List;

    #@c
    .line 99
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@e
    new-instance v0, Ljava/util/ArrayList;

    #@10
    .end local v0    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method private matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "allowPrefixMatch"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 539
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 540
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    #@7
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 544
    return v5

    #@12
    .line 546
    :cond_0
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@15
    move-result-object v2

    #@16
    .line 547
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_2

    #@18
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    .line 551
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 552
    .local v3, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@25
    move-result-object v1

    #@26
    .line 554
    .local v1, "emergencyDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    if-eqz p3, :cond_1

    #@28
    sget-object v4, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    #@2a
    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    :cond_1
    const/4 v0, 0x0

    #@31
    .line 555
    .local v0, "allowPrefixMatchForRegion":Z
    :goto_0
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@33
    invoke-interface {v4, v3, v1, v0}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchesNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    #@36
    move-result v4

    #@37
    return v4

    #@38
    .line 548
    .end local v0    # "allowPrefixMatchForRegion":Z
    .end local v1    # "emergencyDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_2
    return v5

    #@39
    .line 554
    .restart local v1    # "emergencyDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .restart local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    #@3a
    .restart local v0    # "allowPrefixMatchForRegion":Z
    goto :goto_0
.end method

.method private matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 606
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@3
    invoke-interface {v1, p1, p2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 607
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@b
    invoke-interface {v1, p1, p2, v0}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchesNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    #@e
    move-result v0

    #@f
    .line 606
    :cond_0
    return v0
.end method

.method private regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 110
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method


# virtual methods
.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 518
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method getExampleShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 457
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3
    move-result-object v1

    #@4
    .line 458
    .local v1, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_0

    #@6
    .line 459
    const-string/jumbo v2, ""

    #@9
    return-object v2

    #@a
    .line 461
    :cond_0
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    move-result-object v0

    #@e
    .line 462
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 463
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 465
    :cond_1
    const-string/jumbo v2, ""

    #@1c
    return-object v2
.end method

.method getExampleShortNumberForCost(Ljava/lang/String;Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;)Ljava/lang/String;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "cost"    # Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@0
    .prologue
    .line 478
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3
    move-result-object v1

    #@4
    .line 479
    .local v1, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_0

    #@6
    .line 480
    const-string/jumbo v2, ""

    #@9
    return-object v2

    #@a
    .line 482
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 483
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->-getcom-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues()[I

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@12
    move-result v3

    #@13
    aget v2, v2, v3

    #@15
    packed-switch v2, :pswitch_data_0

    #@18
    .line 497
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_0
    if-eqz v0, :cond_1

    #@1a
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 498
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    return-object v2

    #@25
    .line 485
    .restart local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@28
    move-result-object v0

    #@29
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    goto :goto_0

    #@2a
    .line 488
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2d
    move-result-object v0

    #@2e
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    goto :goto_0

    #@2f
    .line 491
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@32
    move-result-object v0

    #@33
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    goto :goto_0

    #@34
    .line 500
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_1
    const-string/jumbo v2, ""

    #@37
    return-object v2

    #@38
    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getExpectedCost(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 388
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@4
    move-result v5

    #@5
    invoke-direct {p0, v5}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    #@8
    move-result-object v4

    #@9
    .line 389
    .local v4, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_0

    #@f
    .line 390
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@11
    return-object v5

    #@12
    .line 392
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@15
    move-result v5

    #@16
    const/4 v6, 0x1

    #@17
    if-ne v5, v6, :cond_1

    #@19
    .line 393
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Ljava/lang/String;

    #@1f
    invoke-virtual {p0, p1, v5}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@22
    move-result-object v5

    #@23
    return-object v5

    #@24
    .line 395
    :cond_1
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@26
    .line 396
    .local v0, "cost":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v3

    #@2a
    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_3

    #@30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Ljava/lang/String;

    #@36
    .line 397
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@39
    move-result-object v1

    #@3a
    .line 398
    .local v1, "costForRegion":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->-getcom-android-i18n-phonenumbers-ShortNumberInfo$ShortNumberCostSwitchesValues()[I

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@41
    move-result v6

    #@42
    aget v5, v5, v6

    #@44
    packed-switch v5, :pswitch_data_0

    #@47
    .line 413
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    #@49
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@4b
    new-instance v7, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v8, "Unrecognised cost for region: "

    #@53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 400
    :pswitch_1
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@65
    return-object v5

    #@66
    .line 402
    :pswitch_2
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@68
    goto :goto_0

    #@69
    .line 405
    :pswitch_3
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@6b
    if-eq v0, v5, :cond_2

    #@6d
    .line 406
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@6f
    goto :goto_0

    #@70
    .line 416
    .end local v1    # "costForRegion":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_3
    return-object v0

    #@71
    .line 398
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 3
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 337
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@8
    return-object v2

    #@9
    .line 340
    :cond_0
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@c
    move-result-object v0

    #@d
    .line 342
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    #@f
    .line 343
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@11
    return-object v2

    #@12
    .line 346
    :cond_1
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 350
    .local v1, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 351
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@22
    return-object v2

    #@23
    .line 353
    :cond_2
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@26
    move-result-object v2

    #@27
    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_3

    #@2d
    .line 354
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@2f
    return-object v2

    #@30
    .line 356
    :cond_3
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_4

    #@3a
    .line 357
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@3c
    return-object v2

    #@3d
    .line 359
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_5

    #@43
    .line 361
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@45
    return-object v2

    #@46
    .line 363
    :cond_5
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@48
    return-object v2
.end method

.method public getExpectedCostForRegion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 2
    .param p1, "shortNumber"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3
    move-result-object v0

    #@4
    .line 290
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@6
    .line 291
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@8
    return-object v1

    #@9
    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 297
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@15
    return-object v1

    #@16
    .line 299
    :cond_1
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 300
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@22
    return-object v1

    #@23
    .line 302
    :cond_2
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 303
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@2f
    return-object v1

    #@30
    .line 305
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 307
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@38
    return-object v1

    #@39
    .line 309
    :cond_4
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    #@3b
    return-object v1
.end method

.method getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 445
    invoke-static {}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataSupportedRegions()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v4

    #@4
    invoke-direct {p0, v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 571
    .local v3, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 572
    .local v2, "regionCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 573
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@13
    move-result-object v1

    #@14
    .line 574
    .local v1, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_0

    #@16
    .line 576
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@19
    move-result-object v4

    #@1a
    .line 575
    invoke-direct {p0, v0, v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@1d
    move-result v4

    #@1e
    .line 574
    :goto_0
    return v4

    #@1f
    :cond_0
    const/4 v4, 0x0

    #@20
    goto :goto_0
.end method

.method public isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isPossibleShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v5

    #@4
    invoke-direct {p0, v5}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    #@7
    move-result-object v3

    #@8
    .line 169
    .local v3, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 170
    .local v4, "shortNumber":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "region$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/lang/String;

    #@1c
    .line 171
    .local v1, "region":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@1f
    move-result-object v0

    #@20
    .line 172
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_0

    #@22
    .line 175
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@24
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@27
    move-result-object v6

    #@28
    invoke-interface {v5, v4, v6}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_0

    #@2e
    .line 176
    const/4 v5, 0x1

    #@2f
    return v5

    #@30
    .line 179
    .end local v0    # "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v1    # "region":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    #@31
    return v5
.end method

.method public isPossibleShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 147
    return v2

    #@8
    .line 150
    :cond_0
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@b
    move-result-object v0

    #@c
    .line 151
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    #@e
    .line 152
    return v2

    #@f
    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@11
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 155
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@18
    move-result-object v3

    #@19
    .line 154
    invoke-interface {v1, v2, v3}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public isPossibleShortNumberForRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "shortNumber"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@6
    .line 132
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    #@a
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, p1, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public isValidShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 248
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    .line 249
    .local v1, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 250
    .local v0, "regionCode":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v2

    #@11
    if-le v2, v3, :cond_0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 253
    return v3

    #@16
    .line 255
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    return v2
.end method

.method public isValidShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 222
    return v5

    #@8
    .line 225
    :cond_0
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@b
    move-result-object v1

    #@c
    .line 226
    .local v1, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1

    #@e
    .line 227
    return v5

    #@f
    .line 229
    :cond_1
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 230
    .local v2, "shortNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@16
    move-result-object v0

    #@17
    .line 231
    .local v0, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 232
    return v5

    #@1e
    .line 234
    :cond_2
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@21
    move-result-object v3

    #@22
    .line 235
    .local v3, "shortNumberDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@25
    move-result v4

    #@26
    return v4
.end method

.method public isValidShortNumberForRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "shortNumber"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 199
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@4
    move-result-object v1

    #@5
    .line 200
    .local v1, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_0

    #@7
    .line 201
    return v4

    #@8
    .line 203
    :cond_0
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@b
    move-result-object v0

    #@c
    .line 204
    .local v0, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 205
    return v4

    #@13
    .line 207
    :cond_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@16
    move-result-object v2

    #@17
    .line 208
    .local v2, "shortNumberDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@1a
    move-result v3

    #@1b
    return v3
.end method
