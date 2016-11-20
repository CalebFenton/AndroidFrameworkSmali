.class public Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I = null

.field private static final synthetic -com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I = null

.field private static final synthetic -com-android-i18n-phonenumbers-Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I = null

.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field static final DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x11

.field private static final MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

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

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberFormatSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@10
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

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
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@19
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

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
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@22
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

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
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@2b
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

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
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

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

.method private static synthetic -getcom-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@10
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@19
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@22
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2b
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@34
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@3d
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@46
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@4f
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@59
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@63
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0x14

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@6d
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xa

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@77
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xb

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    #@7f
    :goto_b
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberTypeSwitchesValues:[I

    #@81
    return-object v0

    #@82
    :catch_0
    move-exception v1

    #@83
    goto :goto_b

    #@84
    :catch_1
    move-exception v1

    #@85
    goto :goto_a

    #@86
    :catch_2
    move-exception v1

    #@87
    goto :goto_9

    #@88
    :catch_3
    move-exception v1

    #@89
    goto :goto_8

    #@8a
    :catch_4
    move-exception v1

    #@8b
    goto :goto_7

    #@8c
    :catch_5
    move-exception v1

    #@8d
    goto :goto_6

    #@8e
    :catch_6
    move-exception v1

    #@8f
    goto :goto_5

    #@90
    :catch_7
    move-exception v1

    #@91
    goto :goto_4

    #@92
    :catch_8
    move-exception v1

    #@93
    goto :goto_3

    #@94
    :catch_9
    move-exception v1

    #@95
    goto :goto_2

    #@96
    :catch_a
    move-exception v1

    #@97
    goto :goto_1

    #@98
    :catch_b
    move-exception v1

    #@99
    goto/16 :goto_0
.end method

.method private static synthetic -getcom-android-i18n-phonenumbers-Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->values()[Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@10
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

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
    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@19
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

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
    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@22
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

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
    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@2b
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

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
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-com-android-i18n-phonenumbers-Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

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
    .locals 14

    #@0
    .prologue
    .line 56
    new-instance v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;

    #@2
    invoke-direct {v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;-><init>()V

    #@5
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@7
    .line 63
    const-class v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@9
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v10

    #@d
    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@10
    move-result-object v10

    #@11
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@13
    .line 117
    new-instance v7, Ljava/util/HashMap;

    #@15
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@18
    .line 118
    .local v7, "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v10, 0x34

    #@1a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v10

    #@1e
    const-string/jumbo v11, "1"

    #@21
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 119
    const/16 v10, 0x36

    #@26
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v10

    #@2a
    const-string/jumbo v11, "9"

    #@2d
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 120
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@33
    move-result-object v10

    #@34
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    #@36
    .line 124
    new-instance v2, Ljava/util/HashMap;

    #@38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@3b
    .line 125
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v10, 0x30

    #@3d
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@40
    move-result-object v10

    #@41
    const/16 v11, 0x30

    #@43
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@46
    move-result-object v11

    #@47
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 126
    const/16 v10, 0x31

    #@4c
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@4f
    move-result-object v10

    #@50
    const/16 v11, 0x31

    #@52
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@55
    move-result-object v11

    #@56
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 127
    const/16 v10, 0x32

    #@5b
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5e
    move-result-object v10

    #@5f
    const/16 v11, 0x32

    #@61
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 128
    const/16 v10, 0x33

    #@6a
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@6d
    move-result-object v10

    #@6e
    const/16 v11, 0x33

    #@70
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@73
    move-result-object v11

    #@74
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 129
    const/16 v10, 0x34

    #@79
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@7c
    move-result-object v10

    #@7d
    const/16 v11, 0x34

    #@7f
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@82
    move-result-object v11

    #@83
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    .line 130
    const/16 v10, 0x35

    #@88
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@8b
    move-result-object v10

    #@8c
    const/16 v11, 0x35

    #@8e
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@91
    move-result-object v11

    #@92
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 131
    const/16 v10, 0x36

    #@97
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@9a
    move-result-object v10

    #@9b
    const/16 v11, 0x36

    #@9d
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@a0
    move-result-object v11

    #@a1
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 132
    const/16 v10, 0x37

    #@a6
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@a9
    move-result-object v10

    #@aa
    const/16 v11, 0x37

    #@ac
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@af
    move-result-object v11

    #@b0
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    .line 133
    const/16 v10, 0x38

    #@b5
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@b8
    move-result-object v10

    #@b9
    const/16 v11, 0x38

    #@bb
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@be
    move-result-object v11

    #@bf
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    .line 134
    const/16 v10, 0x39

    #@c4
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@c7
    move-result-object v10

    #@c8
    const/16 v11, 0x39

    #@ca
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@cd
    move-result-object v11

    #@ce
    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 136
    new-instance v1, Ljava/util/HashMap;

    #@d3
    const/16 v10, 0x28

    #@d5
    invoke-direct {v1, v10}, Ljava/util/HashMap;-><init>(I)V

    #@d8
    .line 137
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v10, 0x41

    #@da
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@dd
    move-result-object v10

    #@de
    const/16 v11, 0x32

    #@e0
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e3
    move-result-object v11

    #@e4
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    .line 138
    const/16 v10, 0x42

    #@e9
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@ec
    move-result-object v10

    #@ed
    const/16 v11, 0x32

    #@ef
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@f2
    move-result-object v11

    #@f3
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    .line 139
    const/16 v10, 0x43

    #@f8
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@fb
    move-result-object v10

    #@fc
    const/16 v11, 0x32

    #@fe
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@101
    move-result-object v11

    #@102
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 140
    const/16 v10, 0x44

    #@107
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@10a
    move-result-object v10

    #@10b
    const/16 v11, 0x33

    #@10d
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@110
    move-result-object v11

    #@111
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    .line 141
    const/16 v10, 0x45

    #@116
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@119
    move-result-object v10

    #@11a
    const/16 v11, 0x33

    #@11c
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@11f
    move-result-object v11

    #@120
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    .line 142
    const/16 v10, 0x46

    #@125
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@128
    move-result-object v10

    #@129
    const/16 v11, 0x33

    #@12b
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@12e
    move-result-object v11

    #@12f
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    .line 143
    const/16 v10, 0x47

    #@134
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@137
    move-result-object v10

    #@138
    const/16 v11, 0x34

    #@13a
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@13d
    move-result-object v11

    #@13e
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@141
    .line 144
    const/16 v10, 0x48

    #@143
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@146
    move-result-object v10

    #@147
    const/16 v11, 0x34

    #@149
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@14c
    move-result-object v11

    #@14d
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    .line 145
    const/16 v10, 0x49

    #@152
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@155
    move-result-object v10

    #@156
    const/16 v11, 0x34

    #@158
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@15b
    move-result-object v11

    #@15c
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    .line 146
    const/16 v10, 0x4a

    #@161
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@164
    move-result-object v10

    #@165
    const/16 v11, 0x35

    #@167
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@16a
    move-result-object v11

    #@16b
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16e
    .line 147
    const/16 v10, 0x4b

    #@170
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@173
    move-result-object v10

    #@174
    const/16 v11, 0x35

    #@176
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@179
    move-result-object v11

    #@17a
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17d
    .line 148
    const/16 v10, 0x4c

    #@17f
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@182
    move-result-object v10

    #@183
    const/16 v11, 0x35

    #@185
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@188
    move-result-object v11

    #@189
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18c
    .line 149
    const/16 v10, 0x4d

    #@18e
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@191
    move-result-object v10

    #@192
    const/16 v11, 0x36

    #@194
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@197
    move-result-object v11

    #@198
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19b
    .line 150
    const/16 v10, 0x4e

    #@19d
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1a0
    move-result-object v10

    #@1a1
    const/16 v11, 0x36

    #@1a3
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1a6
    move-result-object v11

    #@1a7
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1aa
    .line 151
    const/16 v10, 0x4f

    #@1ac
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1af
    move-result-object v10

    #@1b0
    const/16 v11, 0x36

    #@1b2
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1b5
    move-result-object v11

    #@1b6
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b9
    .line 152
    const/16 v10, 0x50

    #@1bb
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1be
    move-result-object v10

    #@1bf
    const/16 v11, 0x37

    #@1c1
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1c4
    move-result-object v11

    #@1c5
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 153
    const/16 v10, 0x51

    #@1ca
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1cd
    move-result-object v10

    #@1ce
    const/16 v11, 0x37

    #@1d0
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1d3
    move-result-object v11

    #@1d4
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d7
    .line 154
    const/16 v10, 0x52

    #@1d9
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1dc
    move-result-object v10

    #@1dd
    const/16 v11, 0x37

    #@1df
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1e2
    move-result-object v11

    #@1e3
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e6
    .line 155
    const/16 v10, 0x53

    #@1e8
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1eb
    move-result-object v10

    #@1ec
    const/16 v11, 0x37

    #@1ee
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1f1
    move-result-object v11

    #@1f2
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f5
    .line 156
    const/16 v10, 0x54

    #@1f7
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1fa
    move-result-object v10

    #@1fb
    const/16 v11, 0x38

    #@1fd
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@200
    move-result-object v11

    #@201
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@204
    .line 157
    const/16 v10, 0x55

    #@206
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@209
    move-result-object v10

    #@20a
    const/16 v11, 0x38

    #@20c
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@20f
    move-result-object v11

    #@210
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@213
    .line 158
    const/16 v10, 0x56

    #@215
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@218
    move-result-object v10

    #@219
    const/16 v11, 0x38

    #@21b
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@21e
    move-result-object v11

    #@21f
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@222
    .line 159
    const/16 v10, 0x57

    #@224
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@227
    move-result-object v10

    #@228
    const/16 v11, 0x39

    #@22a
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@22d
    move-result-object v11

    #@22e
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@231
    .line 160
    const/16 v10, 0x58

    #@233
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@236
    move-result-object v10

    #@237
    const/16 v11, 0x39

    #@239
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@23c
    move-result-object v11

    #@23d
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@240
    .line 161
    const/16 v10, 0x59

    #@242
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@245
    move-result-object v10

    #@246
    const/16 v11, 0x39

    #@248
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@24b
    move-result-object v11

    #@24c
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24f
    .line 162
    const/16 v10, 0x5a

    #@251
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@254
    move-result-object v10

    #@255
    const/16 v11, 0x39

    #@257
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@25a
    move-result-object v11

    #@25b
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25e
    .line 163
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@261
    move-result-object v10

    #@262
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    #@264
    .line 165
    new-instance v5, Ljava/util/HashMap;

    #@266
    const/16 v10, 0x64

    #@268
    invoke-direct {v5, v10}, Ljava/util/HashMap;-><init>(I)V

    #@26b
    .line 166
    .local v5, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    #@26d
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@270
    .line 167
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@273
    .line 168
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@276
    move-result-object v10

    #@277
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    #@279
    .line 170
    new-instance v6, Ljava/util/HashMap;

    #@27b
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@27e
    .line 171
    .local v6, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@281
    .line 172
    const/16 v10, 0x2b

    #@283
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@286
    move-result-object v10

    #@287
    const/16 v11, 0x2b

    #@289
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@28c
    move-result-object v11

    #@28d
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@290
    .line 173
    const/16 v10, 0x2a

    #@292
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@295
    move-result-object v10

    #@296
    const/16 v11, 0x2a

    #@298
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@29b
    move-result-object v11

    #@29c
    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29f
    .line 174
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@2a2
    move-result-object v10

    #@2a3
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    #@2a5
    .line 176
    new-instance v0, Ljava/util/HashMap;

    #@2a7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2aa
    .line 178
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    #@2ac
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2af
    move-result-object v10

    #@2b0
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b3
    move-result-object v4

    #@2b4
    .local v4, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2b7
    move-result v10

    #@2b8
    if-eqz v10, :cond_0

    #@2ba
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2bd
    move-result-object v10

    #@2be
    check-cast v10, Ljava/lang/Character;

    #@2c0
    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    #@2c3
    move-result v3

    #@2c4
    .line 179
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    #@2c7
    move-result v10

    #@2c8
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2cb
    move-result-object v10

    #@2cc
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2cf
    move-result-object v11

    #@2d0
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d3
    .line 180
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2d6
    move-result-object v10

    #@2d7
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2da
    move-result-object v11

    #@2db
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2de
    goto :goto_0

    #@2df
    .line 182
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@2e2
    .line 184
    const/16 v10, 0x2d

    #@2e4
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2e7
    move-result-object v10

    #@2e8
    const/16 v11, 0x2d

    #@2ea
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2ed
    move-result-object v11

    #@2ee
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f1
    .line 185
    const v10, 0xff0d

    #@2f4
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2f7
    move-result-object v10

    #@2f8
    const/16 v11, 0x2d

    #@2fa
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2fd
    move-result-object v11

    #@2fe
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@301
    .line 186
    const/16 v10, 0x2010

    #@303
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@306
    move-result-object v10

    #@307
    const/16 v11, 0x2d

    #@309
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@30c
    move-result-object v11

    #@30d
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@310
    .line 187
    const/16 v10, 0x2011

    #@312
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@315
    move-result-object v10

    #@316
    const/16 v11, 0x2d

    #@318
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@31b
    move-result-object v11

    #@31c
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31f
    .line 188
    const/16 v10, 0x2012

    #@321
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@324
    move-result-object v10

    #@325
    const/16 v11, 0x2d

    #@327
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@32a
    move-result-object v11

    #@32b
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32e
    .line 189
    const/16 v10, 0x2013

    #@330
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@333
    move-result-object v10

    #@334
    const/16 v11, 0x2d

    #@336
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@339
    move-result-object v11

    #@33a
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33d
    .line 190
    const/16 v10, 0x2014

    #@33f
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@342
    move-result-object v10

    #@343
    const/16 v11, 0x2d

    #@345
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@348
    move-result-object v11

    #@349
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34c
    .line 191
    const/16 v10, 0x2015

    #@34e
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@351
    move-result-object v10

    #@352
    const/16 v11, 0x2d

    #@354
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@357
    move-result-object v11

    #@358
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35b
    .line 192
    const/16 v10, 0x2212

    #@35d
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@360
    move-result-object v10

    #@361
    const/16 v11, 0x2d

    #@363
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@366
    move-result-object v11

    #@367
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36a
    .line 193
    const/16 v10, 0x2f

    #@36c
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@36f
    move-result-object v10

    #@370
    const/16 v11, 0x2f

    #@372
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@375
    move-result-object v11

    #@376
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@379
    .line 194
    const v10, 0xff0f

    #@37c
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@37f
    move-result-object v10

    #@380
    const/16 v11, 0x2f

    #@382
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@385
    move-result-object v11

    #@386
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@389
    .line 195
    const/16 v10, 0x20

    #@38b
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@38e
    move-result-object v10

    #@38f
    const/16 v11, 0x20

    #@391
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@394
    move-result-object v11

    #@395
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@398
    .line 196
    const/16 v10, 0x3000

    #@39a
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@39d
    move-result-object v10

    #@39e
    const/16 v11, 0x20

    #@3a0
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3a3
    move-result-object v11

    #@3a4
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a7
    .line 197
    const/16 v10, 0x2060

    #@3a9
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3ac
    move-result-object v10

    #@3ad
    const/16 v11, 0x20

    #@3af
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3b2
    move-result-object v11

    #@3b3
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b6
    .line 198
    const/16 v10, 0x2e

    #@3b8
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3bb
    move-result-object v10

    #@3bc
    const/16 v11, 0x2e

    #@3be
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3c1
    move-result-object v11

    #@3c2
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c5
    .line 199
    const v10, 0xff0e

    #@3c8
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3cb
    move-result-object v10

    #@3cc
    const/16 v11, 0x2e

    #@3ce
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3d1
    move-result-object v11

    #@3d2
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d5
    .line 200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@3d8
    move-result-object v10

    #@3d9
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    #@3db
    .line 210
    const-string/jumbo v10, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    #@3de
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3e1
    move-result-object v10

    #@3e2
    .line 209
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    #@3e4
    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    #@3e6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3e9
    sget-object v11, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    #@3eb
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3ee
    move-result-object v11

    #@3ef
    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    #@3f2
    move-result-object v11

    #@3f3
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3f6
    move-result-object v11

    #@3f7
    const-string/jumbo v12, "[, \\[\\]]"

    #@3fa
    const-string/jumbo v13, ""

    #@3fd
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@400
    move-result-object v11

    #@401
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@404
    move-result-object v10

    #@405
    .line 225
    sget-object v11, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    #@407
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@40a
    move-result-object v11

    #@40b
    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    #@40e
    move-result-object v11

    #@40f
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@412
    move-result-object v11

    #@413
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@416
    move-result-object v11

    #@417
    const-string/jumbo v12, "[, \\[\\]]"

    #@41a
    const-string/jumbo v13, ""

    #@41d
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@420
    move-result-object v11

    #@421
    .line 224
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@424
    move-result-object v10

    #@425
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@428
    move-result-object v10

    #@429
    .line 223
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    #@42b
    .line 227
    const-string/jumbo v10, "[+\uff0b]+"

    #@42e
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@431
    move-result-object v10

    #@432
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    #@434
    .line 228
    const-string/jumbo v10, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    #@437
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@43a
    move-result-object v10

    #@43b
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    #@43d
    .line 229
    const-string/jumbo v10, "(\\p{Nd})"

    #@440
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@443
    move-result-object v10

    #@444
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    #@446
    .line 238
    const-string/jumbo v10, "[+\uff0b\\p{Nd}]"

    #@449
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@44c
    move-result-object v10

    #@44d
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    #@44f
    .line 246
    const-string/jumbo v10, "[\\\\/] *x"

    #@452
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@455
    move-result-object v10

    #@456
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    #@458
    .line 252
    const-string/jumbo v10, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    #@45b
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@45e
    move-result-object v10

    #@45f
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    #@461
    .line 256
    const-string/jumbo v10, "(?:.*?[A-Za-z]){3}.*"

    #@464
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@467
    move-result-object v10

    #@468
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    #@46a
    .line 275
    new-instance v10, Ljava/lang/StringBuilder;

    #@46c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@46f
    const-string/jumbo v11, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    #@472
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@475
    move-result-object v10

    #@476
    .line 277
    sget-object v11, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    #@478
    .line 275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v10

    #@47c
    .line 277
    const-string/jumbo v11, "\\p{Nd}"

    #@47f
    .line 275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@482
    move-result-object v10

    #@483
    .line 277
    const-string/jumbo v11, "]*"

    #@486
    .line 275
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@489
    move-result-object v10

    #@48a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48d
    move-result-object v10

    #@48e
    .line 274
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    #@490
    .line 295
    const-string/jumbo v8, "x\uff58#\uff03~\uff5e"

    #@493
    .line 299
    .local v8, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@495
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@498
    const-string/jumbo v11, ","

    #@49b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49e
    move-result-object v10

    #@49f
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a2
    move-result-object v10

    #@4a3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a6
    move-result-object v9

    #@4a7
    .line 301
    .local v9, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    #@4aa
    move-result-object v10

    #@4ab
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    #@4ad
    .line 302
    invoke-static {v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    #@4b0
    move-result-object v10

    #@4b1
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    #@4b3
    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    #@4b5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4b8
    const-string/jumbo v11, "(?:"

    #@4bb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4be
    move-result-object v10

    #@4bf
    sget-object v11, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    #@4c1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    move-result-object v10

    #@4c5
    const-string/jumbo v11, ")$"

    #@4c8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cb
    move-result-object v10

    #@4cc
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cf
    move-result-object v10

    #@4d0
    const/16 v11, 0x42

    #@4d2
    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@4d5
    move-result-object v10

    #@4d6
    .line 329
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    #@4d8
    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    #@4da
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4dd
    sget-object v11, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    #@4df
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e2
    move-result-object v10

    #@4e3
    const-string/jumbo v11, "(?:"

    #@4e6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e9
    move-result-object v10

    #@4ea
    sget-object v11, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    #@4ec
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ef
    move-result-object v10

    #@4f0
    const-string/jumbo v11, ")?"

    #@4f3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f6
    move-result-object v10

    #@4f7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4fa
    move-result-object v10

    #@4fb
    const/16 v11, 0x42

    #@4fd
    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@500
    move-result-object v10

    #@501
    .line 334
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    #@503
    .line 337
    const-string/jumbo v10, "(\\D+)"

    #@506
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@509
    move-result-object v10

    #@50a
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    #@50c
    .line 343
    const-string/jumbo v10, "(\\$\\d)"

    #@50f
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@512
    move-result-object v10

    #@513
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    #@515
    .line 344
    const-string/jumbo v10, "\\$NP"

    #@518
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@51b
    move-result-object v10

    #@51c
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    #@51e
    .line 345
    const-string/jumbo v10, "\\$FG"

    #@521
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@524
    move-result-object v10

    #@525
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    #@527
    .line 346
    const-string/jumbo v10, "\\$CC"

    #@52a
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@52d
    move-result-object v10

    #@52e
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    #@530
    .line 351
    const-string/jumbo v10, "\\(?\\$1\\)?"

    #@533
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@536
    move-result-object v10

    #@537
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    #@539
    .line 353
    const/4 v10, 0x0

    #@53a
    sput-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@53c
    .line 54
    return-void
.end method

.method constructor <init>(Lcom/android/i18n/phonenumbers/MetadataSource;Ljava/util/Map;)V
    .locals 7
    .param p1, "metadataSource"    # Lcom/android/i18n/phonenumbers/MetadataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/MetadataSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    #@1
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 543
    new-instance v3, Ljava/util/HashSet;

    #@6
    const/16 v4, 0x23

    #@8
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@b
    iput-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    #@d
    .line 548
    new-instance v3, Lcom/android/i18n/phonenumbers/RegexCache;

    #@f
    const/16 v4, 0x64

    #@11
    invoke-direct {v3, v4}, Lcom/android/i18n/phonenumbers/RegexCache;-><init>(I)V

    #@14
    iput-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@16
    .line 553
    new-instance v3, Ljava/util/HashSet;

    #@18
    const/16 v4, 0x140

    #@1a
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@1d
    iput-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    #@1f
    .line 557
    new-instance v3, Ljava/util/HashSet;

    #@21
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@24
    iput-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    #@26
    .line 565
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

    #@28
    .line 566
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@2a
    .line 567
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_1

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/util/Map$Entry;

    #@3e
    .line 568
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Ljava/util/List;

    #@44
    .line 571
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@47
    move-result v3

    #@48
    if-ne v3, v6, :cond_0

    #@4a
    const-string/jumbo v3, "001"

    #@4d
    const/4 v4, 0x0

    #@4e
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_0

    #@58
    .line 573
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    #@5a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Ljava/lang/Integer;

    #@60
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@63
    goto :goto_0

    #@64
    .line 576
    :cond_0
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    #@66
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@69
    goto :goto_0

    #@6a
    .line 582
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    #@6c
    const-string/jumbo v4, "001"

    #@6f
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_2

    #@75
    .line 583
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@77
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@79
    const-string/jumbo v5, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    #@7c
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@7f
    .line 586
    :cond_2
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    #@81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v3

    #@85
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    move-result-object v3

    #@89
    check-cast v3, Ljava/util/Collection;

    #@8b
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@8e
    .line 564
    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2907
    const-string/jumbo v6, ";phone-context="

    #@4
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 2908
    .local v2, "indexOfPhoneContext":I
    if-lez v2, :cond_4

    #@a
    .line 2909
    const-string/jumbo v6, ";phone-context="

    #@d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@10
    move-result v6

    #@11
    add-int v5, v2, v6

    #@13
    .line 2912
    .local v5, "phoneContextStart":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v6

    #@17
    const/16 v7, 0x2b

    #@19
    if-ne v6, v7, :cond_0

    #@1b
    .line 2916
    const/16 v6, 0x3b

    #@1d
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    #@20
    move-result v4

    #@21
    .line 2917
    .local v4, "phoneContextEnd":I
    if-lez v4, :cond_3

    #@23
    .line 2918
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 2928
    .end local v4    # "phoneContextEnd":I
    :cond_0
    :goto_0
    const-string/jumbo v6, "tel:"

    #@2d
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@30
    move-result v3

    #@31
    .line 2929
    .local v3, "indexOfRfc3966Prefix":I
    if-ltz v3, :cond_1

    #@33
    .line 2930
    const-string/jumbo v6, "tel:"

    #@36
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@39
    move-result v6

    #@3a
    add-int v1, v3, v6

    #@3c
    .line 2931
    .local v1, "indexOfNationalNumber":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 2940
    .end local v1    # "indexOfNationalNumber":I
    .end local v3    # "indexOfRfc3966Prefix":I
    .end local v5    # "phoneContextStart":I
    :goto_1
    const-string/jumbo v6, ";isub="

    #@46
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@49
    move-result v0

    #@4a
    .line 2941
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_2

    #@4c
    .line 2942
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@4f
    move-result v6

    #@50
    invoke-virtual {p2, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@53
    .line 2906
    :cond_2
    return-void

    #@54
    .line 2920
    .end local v0    # "indexOfIsdn":I
    .restart local v4    # "phoneContextEnd":I
    .restart local v5    # "phoneContextStart":I
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    goto :goto_0

    #@5c
    .line 2935
    .end local v4    # "phoneContextEnd":I
    .end local v5    # "phoneContextStart":I
    :cond_4
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_1
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2644
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_2

    #@7
    .line 2646
    if-eqz p1, :cond_0

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 2648
    :cond_0
    return v1

    #@10
    .line 2647
    :cond_1
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 2651
    :cond_2
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 721
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 322
    const-string/jumbo v1, "]|int|anexo|\uff49\uff4e\uff54)"

    #@13
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 323
    const-string/jumbo v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    #@1a
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 323
    const-string/jumbo v1, "(\\p{Nd}{1,7})"

    #@21
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 323
    const-string/jumbo v1, "#?|"

    #@28
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 324
    const-string/jumbo v1, "[- ]+("

    #@2f
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 324
    const-string/jumbo v1, "\\p{Nd}"

    #@36
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 324
    const-string/jumbo v1, "{1,5})#"

    #@3d
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0
.end method

.method public static createInstance(Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2
    .param p0, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@0
    .prologue
    .line 972
    if-nez p0, :cond_0

    #@2
    .line 973
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "metadataLoader could not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 975
    :cond_0
    new-instance v0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;

    #@d
    invoke-direct {v0, p0}, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/MetadataLoader;)V

    #@10
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/i18n/phonenumbers/MetadataSource;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static createInstance(Lcom/android/i18n/phonenumbers/MetadataSource;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2
    .param p0, "metadataSource"    # Lcom/android/i18n/phonenumbers/MetadataSource;

    #@0
    .prologue
    .line 952
    if-nez p0, :cond_0

    #@2
    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "metadataSource could not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 955
    :cond_0
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@d
    .line 956
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    #@10
    move-result-object v1

    #@11
    .line 955
    invoke-direct {v0, p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;-><init>(Lcom/android/i18n/phonenumbers/MetadataSource;Ljava/util/Map;)V

    #@14
    return-object v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 605
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v0

    #@7
    .line 606
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 607
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    .line 609
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    #@17
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1a
    move-result-object v2

    #@1b
    .line 610
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 611
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@24
    move-result v3

    #@25
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    .line 612
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@2b
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Stripped trailing characters: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@44
    .line 615
    :cond_0
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    #@46
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@49
    move-result-object v1

    #@4a
    .line 616
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_1

    #@50
    .line 617
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    #@53
    move-result v3

    #@54
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object p0

    #@58
    .line 619
    :cond_1
    return-object p0

    #@59
    .line 621
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    :cond_2
    const-string/jumbo v3, ""

    #@5c
    return-object v3
.end method

.method private formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@0
    .prologue
    .line 1697
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1708
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1712
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@c
    if-ne p3, v3, :cond_1

    #@e
    .line 1713
    :cond_0
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    .line 1715
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@15
    move-result-object v1

    #@16
    .line 1716
    .local v1, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    #@18
    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    #@19
    .line 1714
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0

    #@1e
    .line 1718
    .restart local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v1    # "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    goto :goto_1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1750
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 1752
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@6
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    #@9
    move-result-object v8

    #@a
    invoke-virtual {v7, v8}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@11
    move-result-object v3

    #@12
    .line 1753
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v2, ""

    #@15
    .line 1754
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@17
    if-ne p3, v7, :cond_2

    #@19
    .line 1755
    if-eqz p4, :cond_2

    #@1b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@1e
    move-result v7

    #@1f
    if-lez v7, :cond_2

    #@21
    .line 1756
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@28
    move-result v7

    #@29
    if-lez v7, :cond_2

    #@2b
    .line 1758
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1760
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    #@31
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 1763
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    #@3b
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 1765
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 1779
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@49
    if-ne p3, v7, :cond_1

    #@4b
    .line 1781
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    #@4d
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@50
    move-result-object v4

    #@51
    .line 1782
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_0

    #@57
    .line 1783
    const-string/jumbo v7, ""

    #@5a
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 1786
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@61
    move-result-object v7

    #@62
    const-string/jumbo v8, "-"

    #@65
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 1788
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    #@6a
    .line 1768
    :cond_2
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    .line 1769
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@70
    if-ne p3, v7, :cond_3

    #@72
    .line 1770
    if-eqz v5, :cond_3

    #@74
    .line 1771
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@77
    move-result v7

    #@78
    if-lez v7, :cond_3

    #@7a
    .line 1772
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    #@7c
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7f
    move-result-object v1

    #@80
    .line 1774
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    goto :goto_0

    #@89
    .line 1776
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    goto :goto_0
.end method

.method static formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nationalPrefixFormattingRule"    # Ljava/lang/String;

    #@0
    .prologue
    .line 983
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 984
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@f
    move-result v0

    #@10
    .line 983
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2137
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3
    move-result-object v0

    #@4
    .line 2138
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@6
    .line 2139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid region code: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 2141
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public static getCountryMobileToken(I)Ljava/lang/String;
    .locals 2
    .param p0, "countryCallingCode"    # I

    #@0
    .prologue
    .line 862
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 863
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    #@e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    return-object v0

    #@19
    .line 865
    :cond_0
    const-string/jumbo v0, ""

    #@1c
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2

    #@0
    .prologue
    const-class v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    monitor-enter v1

    #@3
    .line 933
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 934
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

    #@9
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V

    #@10
    .line 936
    :cond_0
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1185
    const-string/jumbo v0, "001"

    #@3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@c
    move-result-object v0

    #@d
    .line 1185
    :goto_0
    return-object v0

    #@e
    .line 1187
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 2
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@0
    .prologue
    .line 1921
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1922
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@c
    return-object v1

    #@d
    .line 1925
    :cond_0
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1926
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@19
    return-object v1

    #@1a
    .line 1928
    :cond_1
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 1929
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@26
    return-object v1

    #@27
    .line 1931
    :cond_2
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 1932
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@33
    return-object v1

    #@34
    .line 1934
    :cond_3
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 1935
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@40
    return-object v1

    #@41
    .line 1937
    :cond_4
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_5

    #@4b
    .line 1938
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@4d
    return-object v1

    #@4e
    .line 1940
    :cond_5
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_6

    #@58
    .line 1941
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@5a
    return-object v1

    #@5b
    .line 1943
    :cond_6
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_7

    #@65
    .line 1944
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@67
    return-object v1

    #@68
    .line 1946
    :cond_7
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_8

    #@72
    .line 1947
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@74
    return-object v1

    #@75
    .line 1950
    :cond_8
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@7c
    move-result v0

    #@7d
    .line 1951
    .local v0, "isFixedLine":Z
    if-eqz v0, :cond_b

    #@7f
    .line 1952
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    #@82
    move-result v1

    #@83
    if-eqz v1, :cond_9

    #@85
    .line 1953
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@87
    return-object v1

    #@88
    .line 1954
    :cond_9
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@8f
    move-result v1

    #@90
    if-eqz v1, :cond_a

    #@92
    .line 1955
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@94
    return-object v1

    #@95
    .line 1957
    :cond_a
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@97
    return-object v1

    #@98
    .line 1961
    :cond_b
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    #@9b
    move-result v1

    #@9c
    if-nez v1, :cond_c

    #@9e
    .line 1962
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@a5
    move-result v1

    #@a6
    .line 1961
    if-eqz v1, :cond_c

    #@a8
    .line 1963
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@aa
    return-object v1

    #@ab
    .line 1965
    :cond_c
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@ad
    return-object v1
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 6
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
    .line 2069
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 2070
    .local v1, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_2

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/String;

    #@14
    .line 2073
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@17
    move-result-object v0

    #@18
    .line 2074
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 2075
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@20
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_0

    #@32
    .line 2077
    return-object v2

    #@33
    .line 2079
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@36
    move-result-object v4

    #@37
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@39
    if-eq v4, v5, :cond_0

    #@3b
    .line 2080
    return-object v2

    #@3c
    .line 2083
    .end local v0    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    #@3d
    return-object v4
.end method

.method private hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1527
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@4
    move-result v0

    #@5
    .line 1528
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 1530
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@c
    move-result-object v2

    #@d
    .line 1531
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_0

    #@f
    .line 1532
    return v5

    #@10
    .line 1534
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 1536
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {p0, v6, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@1b
    move-result-object v1

    #@1c
    .line 1537
    .local v1, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_1

    #@1e
    const/4 v5, 0x1

    #@1f
    :cond_1
    return v5
.end method

.method private hasUnexpectedItalianLeadingZero(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1523
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isLeadingZeroPossible(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 3029
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@3
    move-result-wide v2

    #@4
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 3030
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 3032
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    .line 3033
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    .line 3032
    :goto_0
    return v2

    #@1b
    :cond_0
    const/4 v2, 0x1

    #@1c
    goto :goto_0
.end method

.method private isShorterThanPossibleNormalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z
    .locals 3
    .param p1, "regionMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2257
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2
    .line 2258
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 2257
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    .line 2259
    .local v0, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@11
    move-result-object v1

    #@12
    .line 2260
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@14
    .line 2259
    if-ne v1, v2, :cond_0

    #@16
    const/4 v1, 0x1

    #@17
    :goto_0
    return v1

    #@18
    :cond_0
    const/4 v1, 0x0

    #@19
    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1009
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 638
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 640
    :cond_0
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    #@b
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@e
    move-result-object v0

    #@f
    .line 641
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@12
    move-result v1

    #@13
    return v1
.end method

.method private maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1863
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 1864
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@12
    if-ne p3, v0, :cond_1

    #@14
    .line 1865
    const-string/jumbo v0, ";ext="

    #@17
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 1862
    :cond_0
    :goto_0
    return-void

    #@23
    .line 1867
    :cond_1
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 1868
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_0

    #@39
    .line 1870
    :cond_2
    const-string/jumbo v0, " ext. "

    #@3c
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    goto :goto_0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    .line 662
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 663
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-static {p0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 665
    :cond_0
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 677
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 678
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {p0, v2, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 676
    return-void
.end method

.method static normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 713
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    #@0
    .prologue
    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 694
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v4

    #@d
    const/4 v3, 0x0

    #@e
    array-length v5, v4

    #@f
    :goto_0
    if-ge v3, v5, :cond_2

    #@11
    aget-char v0, v4, v3

    #@13
    .line 695
    .local v0, "c":C
    const/16 v6, 0xa

    #@15
    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    #@18
    move-result v1

    #@19
    .line 696
    .local v1, "digit":I
    const/4 v6, -0x1

    #@1a
    if-eq v1, v6, :cond_1

    #@1c
    .line 697
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 694
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 698
    :cond_1
    if-eqz p1, :cond_0

    #@24
    .line 699
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    goto :goto_1

    #@28
    .line 702
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2
    return-object v2
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 884
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 885
    .local v3, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-ge v1, v4, :cond_2

    #@10
    .line 886
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 887
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    #@17
    move-result v4

    #@18
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/Character;

    #@22
    .line 888
    .local v2, "newDigit":Ljava/lang/Character;
    if-eqz v2, :cond_1

    #@24
    .line 889
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    .line 885
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 890
    :cond_1
    if-nez p2, :cond_0

    #@2c
    .line 891
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_1

    #@30
    .line 895
    .end local v0    # "character":C
    .end local v2    # "newDigit":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 17
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 2793
    if-nez p1, :cond_0

    #@2
    .line 2794
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@4
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@6
    .line 2795
    const-string/jumbo v6, "The phone number supplied was null."

    #@9
    .line 2794
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 2796
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    const/16 v3, 0xfa

    #@13
    if-le v2, v3, :cond_1

    #@15
    .line 2797
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@17
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@19
    .line 2798
    const-string/jumbo v6, "The string supplied was too long to parse."

    #@1c
    .line 2797
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 2801
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    .line 2802
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@27
    move-object/from16 v1, p1

    #@29
    invoke-direct {v0, v1, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@2c
    .line 2804
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_2

    #@36
    .line 2805
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@38
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@3a
    .line 2806
    const-string/jumbo v6, "The string supplied did not seem to be a phone number."

    #@3d
    .line 2805
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 2811
    :cond_2
    if-eqz p4, :cond_3

    #@43
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, p2

    #@4b
    invoke-direct {v0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_8

    #@51
    .line 2816
    :cond_3
    if-eqz p3, :cond_4

    #@53
    .line 2817
    move-object/from16 v0, p5

    #@55
    move-object/from16 v1, p1

    #@57
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@5a
    .line 2821
    :cond_4
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@5f
    move-result-object v11

    #@60
    .line 2822
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@63
    move-result v2

    #@64
    if-lez v2, :cond_5

    #@66
    .line 2823
    move-object/from16 v0, p5

    #@68
    invoke-virtual {v0, v11}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@6b
    .line 2826
    :cond_5
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, p2

    #@6f
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@72
    move-result-object v4

    #@73
    .line 2829
    .local v4, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    .line 2830
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    #@79
    .line 2835
    .local v9, "countryCode":I
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    move-object/from16 v2, p0

    #@7f
    move/from16 v6, p3

    #@81
    move-object/from16 v7, p5

    #@83
    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@86
    move-result v9

    #@87
    .line 2853
    :cond_6
    if-eqz v9, :cond_a

    #@89
    .line 2854
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v0, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@8e
    move-result-object v15

    #@8f
    .line 2855
    .local v15, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v2

    #@95
    if-nez v2, :cond_7

    #@97
    .line 2857
    move-object/from16 v0, p0

    #@99
    invoke-direct {v0, v9, v15}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@9c
    move-result-object v4

    #@9d
    .line 2871
    .end local v15    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@a0
    move-result v2

    #@a1
    const/4 v3, 0x2

    #@a2
    if-ge v2, v3, :cond_c

    #@a4
    .line 2872
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@a6
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@a8
    .line 2873
    const-string/jumbo v6, "The string supplied is too short to be a phone number."

    #@ab
    .line 2872
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@ae
    throw v2

    #@af
    .line 2812
    .end local v4    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .end local v9    # "countryCode":I
    .end local v11    # "extension":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@b1
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@b3
    .line 2813
    const-string/jumbo v6, "Missing or invalid default region."

    #@b6
    .line 2812
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@b9
    throw v2

    #@ba
    .line 2837
    .restart local v4    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .restart local v9    # "countryCode":I
    .restart local v11    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@bb
    .line 2838
    .local v10, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    #@bd
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c4
    move-result-object v13

    #@c5
    .line 2839
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@c8
    move-result-object v2

    #@c9
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@cb
    if-ne v2, v3, :cond_9

    #@cd
    .line 2840
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@d0
    move-result v2

    #@d1
    .line 2839
    if-eqz v2, :cond_9

    #@d3
    .line 2842
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    #@d6
    move-result v2

    #@d7
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    move-object/from16 v2, p0

    #@dd
    move/from16 v6, p3

    #@df
    move-object/from16 v7, p5

    #@e1
    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    #@e4
    move-result v9

    #@e5
    .line 2845
    if-nez v9, :cond_6

    #@e7
    .line 2846
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@e9
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@eb
    .line 2847
    const-string/jumbo v6, "Could not interpret numbers after plus-sign."

    #@ee
    .line 2846
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@f1
    throw v2

    #@f2
    .line 2850
    :cond_9
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@f4
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v10}, Lcom/android/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@ff
    throw v2

    #@100
    .line 2862
    .end local v10    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_a
    invoke-static {v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    #@103
    .line 2863
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@106
    .line 2864
    if-eqz p2, :cond_b

    #@108
    .line 2865
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    #@10b
    move-result v9

    #@10c
    .line 2866
    move-object/from16 v0, p5

    #@10e
    invoke-virtual {v0, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@111
    goto :goto_0

    #@112
    .line 2867
    :cond_b
    if-eqz p3, :cond_7

    #@114
    .line 2868
    invoke-virtual/range {p5 .. p5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@117
    goto :goto_0

    #@118
    .line 2875
    :cond_c
    if-eqz v4, :cond_d

    #@11a
    .line 2876
    new-instance v8, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    .line 2877
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    #@121
    move-object/from16 v0, v16

    #@123
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@126
    .line 2878
    .local v16, "potentialNationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, v16

    #@12a
    invoke-virtual {v0, v1, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    #@12d
    .line 2882
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v2

    #@131
    move-object/from16 v0, p0

    #@133
    invoke-direct {v0, v4, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isShorterThanPossibleNormalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    #@136
    move-result v2

    #@137
    if-nez v2, :cond_d

    #@139
    .line 2883
    move-object/from16 v5, v16

    #@13b
    .line 2884
    if-eqz p3, :cond_d

    #@13d
    .line 2885
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v2

    #@141
    move-object/from16 v0, p5

    #@143
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@146
    .line 2889
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    .end local v16    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@149
    move-result v12

    #@14a
    .line 2890
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x2

    #@14b
    if-ge v12, v2, :cond_e

    #@14d
    .line 2891
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@14f
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@151
    .line 2892
    const-string/jumbo v6, "The string supplied is too short to be a phone number."

    #@154
    .line 2891
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@157
    throw v2

    #@158
    .line 2894
    :cond_e
    const/16 v2, 0x11

    #@15a
    if-le v12, v2, :cond_f

    #@15c
    .line 2895
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@15e
    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@160
    .line 2896
    const-string/jumbo v6, "The string supplied is too long to be a phone number."

    #@163
    .line 2895
    invoke-direct {v2, v3, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@166
    throw v2

    #@167
    .line 2898
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v2

    #@16b
    move-object/from16 v0, p5

    #@16d
    invoke-static {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@170
    .line 2899
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v2

    #@174
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@177
    move-result-wide v2

    #@178
    move-object/from16 v0, p5

    #@17a
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@17d
    .line 2792
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2497
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v1

    #@6
    .line 2498
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 2499
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@f
    move-result v2

    #@10
    .line 2502
    .local v2, "matchEnd":I
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    #@12
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@19
    move-result-object v0

    #@1a
    .line 2503
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 2504
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 2505
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string/jumbo v4, "0"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 2506
    return v6

    #@32
    .line 2509
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@35
    .line 2510
    return v7

    #@36
    .line 2512
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    :cond_1
    return v6
.end method

.method private prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v3, 0x2b

    #@2
    const/4 v2, 0x0

    #@3
    .line 1678
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-getcom-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberFormatSwitchesValues()[I

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    #@a
    move-result v1

    #@b
    aget v0, v0, v1

    #@d
    packed-switch v0, :pswitch_data_0

    #@10
    .line 1691
    :pswitch_0
    return-void

    #@11
    .line 1680
    :pswitch_1
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@18
    .line 1681
    return-void

    #@19
    .line 1683
    :pswitch_2
    const-string/jumbo v0, " "

    #@1c
    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@27
    .line 1684
    return-void

    #@28
    .line 1686
    :pswitch_3
    const-string/jumbo v0, "-"

    #@2b
    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1687
    const-string/jumbo v1, "tel:"

    #@3a
    .line 1686
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 1688
    return-void

    #@3e
    .line 1678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1502
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1503
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1510
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0, v2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@16
    move-result-object v2

    #@17
    .line 1509
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 1511
    :catch_0
    move-exception v0

    #@1d
    .line 1512
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v3

    #@1e
    .line 1515
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    return v3
.end method

.method static declared-synchronized setInstance(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 2
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@0
    .prologue
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    monitor-enter v0

    #@3
    .line 904
    :try_start_0
    sput-object p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 903
    return-void

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method static setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 4
    .param p0, "nationalNumber"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/16 v3, 0x30

    #@2
    const/4 v2, 0x1

    #@3
    .line 2769
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-le v1, v2, :cond_1

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    if-ne v1, v3, :cond_1

    #@10
    .line 2770
    invoke-virtual {p1, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@13
    .line 2771
    const/4 v0, 0x1

    #@14
    .line 2774
    .local v0, "numberOfLeadingZeros":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    if-ge v0, v1, :cond_0

    #@1c
    .line 2775
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    if-ne v1, v3, :cond_0

    #@22
    .line 2776
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 2778
    :cond_0
    if-eq v0, v2, :cond_1

    #@27
    .line 2779
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@2a
    .line 2768
    .end local v0    # "numberOfLeadingZeros":I
    :cond_1
    return-void
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 2
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2241
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    .line 2242
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2243
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@c
    return-object v1

    #@d
    .line 2245
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 2246
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@15
    return-object v1

    #@16
    .line 2248
    :cond_1
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@18
    return-object v1
.end method


# virtual methods
.method canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3132
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@8
    move-result-object v0

    #@9
    .line 3133
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@b
    .line 3136
    return v2

    #@c
    .line 3138
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 3139
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    const/4 v2, 0x0

    #@1b
    :cond_1
    return v2
.end method

.method chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 6
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    #@0
    .prologue
    .line 1723
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "numFormat$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_2

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@10
    .line 1724
    .local v1, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    #@13
    move-result v3

    #@14
    .line 1725
    .local v3, "size":I
    if-eqz v3, :cond_1

    #@16
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@18
    .line 1727
    add-int/lit8 v5, v3, -0x1

    #@1a
    invoke-virtual {v1, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 1725
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_0

    #@2c
    .line 1728
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2e
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@39
    move-result-object v0

    #@3a
    .line 1729
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_0

    #@40
    .line 1730
    return-object v1

    #@41
    .line 1734
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "size":I
    :cond_2
    const/4 v4, 0x0

    #@42
    return-object v4
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2371
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@a
    move-result v3

    #@b
    const/16 v4, 0x30

    #@d
    if-ne v3, v4, :cond_1

    #@f
    .line 2373
    :cond_0
    return v5

    #@10
    .line 2376
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@13
    move-result v1

    #@14
    .line 2377
    .local v1, "numberLength":I
    const/4 v0, 0x1

    #@15
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    #@16
    if-gt v0, v3, :cond_3

    #@18
    if-gt v0, v1, :cond_3

    #@1a
    .line 2378
    invoke-virtual {p1, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v2

    #@22
    .line 2379
    .local v2, "potentialCountryCode":I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 2380
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 2381
    return v2

    #@36
    .line 2377
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 2384
    .end local v2    # "potentialCountryCode":I
    :cond_3
    return v5
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2735
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@2
    const-wide v4, 0x7fffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2756
    new-instance v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    move-wide v6, p4

    #@7
    invoke-direct/range {v1 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    #@a
    return-object v1
.end method

.method public format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@0
    .prologue
    .line 1034
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-nez v2, :cond_0

    #@a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1040
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1041
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@17
    move-result v2

    #@18
    if-lez v2, :cond_0

    #@1a
    .line 1042
    return-object v1

    #@1b
    .line 1045
    .end local v1    # "rawInput":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    const/16 v2, 0x14

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@22
    .line 1046
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@25
    .line 1047
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1057
    const/4 v4, 0x0

    #@1
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@4
    .line 1058
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@7
    move-result v0

    #@8
    .line 1059
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1061
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@e
    if-ne p2, v4, :cond_0

    #@10
    .line 1064
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 1065
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@15
    invoke-direct {p0, v0, v4, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@18
    .line 1067
    return-void

    #@19
    .line 1069
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 1070
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 1071
    return-void

    #@23
    .line 1076
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 1080
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@2a
    move-result-object v1

    #@2b
    .line 1081
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 1082
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@35
    .line 1083
    invoke-direct {p0, v0, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@38
    .line 1055
    return-void
.end method

.method public formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1100
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v0

    #@4
    .line 1101
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 1102
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_0

    #@e
    .line 1103
    return-object v6

    #@f
    .line 1108
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@12
    move-result-object v8

    #@13
    .line 1111
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@16
    move-result-object v3

    #@17
    .line 1113
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    const/16 v9, 0x14

    #@1b
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1e
    .line 1116
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p3, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@21
    move-result-object v2

    #@22
    .line 1117
    .local v2, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    #@24
    .line 1119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 1144
    :goto_0
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@2a
    .line 1145
    invoke-direct {p0, v0, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@2d
    .line 1146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v9

    #@31
    return-object v9

    #@32
    .line 1121
    :cond_1
    new-instance v7, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@34
    invoke-direct {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    #@37
    .line 1125
    .local v7, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@3a
    .line 1126
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 1127
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@41
    move-result v9

    #@42
    if-lez v9, :cond_2

    #@44
    .line 1128
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 1129
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4b
    move-result v9

    #@4c
    if-lez v9, :cond_3

    #@4e
    .line 1132
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    #@50
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    .line 1134
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    #@5a
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5d
    move-result-object v9

    #@5e
    const-string/jumbo v10, "\\$1"

    #@61
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 1135
    invoke-virtual {v7, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@68
    .line 1142
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0, v6, v7, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    .line 1141
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    goto :goto_0

    #@70
    .line 1138
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@73
    goto :goto_1
.end method

.method public formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1403
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    #@3
    move-result v17

    #@4
    if-eqz v17, :cond_0

    #@6
    .line 1404
    invoke-direct/range {p0 .. p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasUnexpectedItalianLeadingZero(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@9
    move-result v17

    #@a
    if-nez v17, :cond_1

    #@c
    invoke-direct/range {p0 .. p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@f
    move-result v17

    #@10
    if-eqz v17, :cond_1

    #@12
    .line 1409
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    #@15
    move-result v17

    #@16
    if-nez v17, :cond_2

    #@18
    .line 1410
    sget-object v17, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@1a
    move-object/from16 v0, p0

    #@1c
    move-object/from16 v1, p1

    #@1e
    move-object/from16 v2, v17

    #@20
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@23
    move-result-object v17

    #@24
    return-object v17

    #@25
    .line 1407
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@28
    move-result-object v17

    #@29
    return-object v17

    #@2a
    .line 1413
    :cond_2
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-getcom-android-i18n-phonenumbers-Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues()[I

    #@2d
    move-result-object v17

    #@2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@31
    move-result-object v18

    #@32
    invoke-virtual/range {v18 .. v18}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    #@35
    move-result v18

    #@36
    aget v17, v17, v18

    #@38
    packed-switch v17, :pswitch_data_0

    #@3b
    .line 1426
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3e
    move-result v17

    #@3f
    move-object/from16 v0, p0

    #@41
    move/from16 v1, v17

    #@43
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@46
    move-result-object v16

    #@47
    .line 1429
    .local v16, "regionCode":Ljava/lang/String;
    const/16 v17, 0x1

    #@49
    move-object/from16 v0, p0

    #@4b
    move-object/from16 v1, v16

    #@4d
    move/from16 v2, v17

    #@4f
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    .line 1430
    .local v10, "nationalPrefix":Ljava/lang/String;
    sget-object v17, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@55
    move-object/from16 v0, p0

    #@57
    move-object/from16 v1, p1

    #@59
    move-object/from16 v2, v17

    #@5b
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    .line 1431
    .local v8, "nationalFormat":Ljava/lang/String;
    if-eqz v10, :cond_3

    #@61
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@64
    move-result v17

    #@65
    if-nez v17, :cond_5

    #@67
    .line 1434
    :cond_3
    move-object v5, v8

    #@68
    .line 1485
    .end local v8    # "nationalFormat":Ljava/lang/String;
    .end local v10    # "nationalPrefix":Ljava/lang/String;
    .end local v16    # "regionCode":Ljava/lang/String;
    .local v5, "formattedNumber":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@6b
    move-result-object v15

    #@6c
    .line 1488
    .local v15, "rawInput":Ljava/lang/String;
    if-eqz v5, :cond_4

    #@6e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@71
    move-result v17

    #@72
    if-lez v17, :cond_4

    #@74
    .line 1489
    invoke-static {v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v11

    #@78
    .line 1490
    .local v11, "normalizedFormattedNumber":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@7b
    move-result-object v12

    #@7c
    .line 1491
    .local v12, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v17

    #@80
    if-nez v17, :cond_4

    #@82
    .line 1492
    move-object v5, v15

    #@83
    .line 1495
    .end local v11    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v12    # "normalizedRawInput":Ljava/lang/String;
    :cond_4
    return-object v5

    #@84
    .line 1415
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .end local v15    # "rawInput":Ljava/lang/String;
    :pswitch_0
    sget-object v17, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@86
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, p1

    #@8a
    move-object/from16 v2, v17

    #@8c
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    #@91
    .line 1418
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    #@96
    .line 1421
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_2
    sget-object v17, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@98
    move-object/from16 v0, p0

    #@9a
    move-object/from16 v1, p1

    #@9c
    move-object/from16 v2, v17

    #@9e
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@a1
    move-result-object v17

    #@a2
    const/16 v18, 0x1

    #@a4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    #@a9
    .line 1439
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .restart local v8    # "nationalFormat":Ljava/lang/String;
    .restart local v10    # "nationalPrefix":Ljava/lang/String;
    .restart local v16    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@ac
    move-result-object v17

    #@ad
    .line 1438
    move-object/from16 v0, p0

    #@af
    move-object/from16 v1, v17

    #@b1
    move-object/from16 v2, v16

    #@b3
    invoke-direct {v0, v1, v10, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@b6
    move-result v17

    #@b7
    if-eqz v17, :cond_6

    #@b9
    .line 1441
    move-object v5, v8

    #@ba
    .line 1442
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    #@bb
    .line 1446
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@bd
    move-object/from16 v1, v16

    #@bf
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@c2
    move-result-object v7

    #@c3
    .line 1447
    .local v7, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual/range {p0 .. p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@c6
    move-result-object v9

    #@c7
    .line 1449
    .local v9, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@ca
    move-result-object v17

    #@cb
    move-object/from16 v0, p0

    #@cd
    move-object/from16 v1, v17

    #@cf
    invoke-virtual {v0, v1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@d2
    move-result-object v4

    #@d3
    .line 1453
    .local v4, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v4, :cond_7

    #@d5
    .line 1454
    move-object v5, v8

    #@d6
    .line 1455
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    #@d7
    .line 1461
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    .line 1463
    .local v3, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string/jumbo v17, "$1"

    #@de
    move-object/from16 v0, v17

    #@e0
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e3
    move-result v6

    #@e4
    .line 1464
    .local v6, "indexOfFirstGroup":I
    if-gtz v6, :cond_8

    #@e6
    .line 1465
    move-object v5, v8

    #@e7
    .line 1466
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    #@e8
    .line 1469
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    #@ea
    move/from16 v0, v17

    #@ec
    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    .line 1470
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@f3
    move-result-object v3

    #@f4
    .line 1471
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@f7
    move-result v17

    #@f8
    if-nez v17, :cond_9

    #@fa
    .line 1473
    move-object v5, v8

    #@fb
    .line 1474
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    #@fd
    .line 1477
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@ff
    invoke-direct {v13}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    #@102
    .line 1478
    .local v13, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v13, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@105
    .line 1479
    invoke-virtual {v13}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@108
    .line 1480
    new-instance v14, Ljava/util/ArrayList;

    #@10a
    const/16 v17, 0x1

    #@10c
    move/from16 v0, v17

    #@10e
    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@111
    .line 1481
    .local v14, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@114
    .line 1482
    sget-object v17, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@116
    move-object/from16 v0, p0

    #@118
    move-object/from16 v1, p1

    #@11a
    move-object/from16 v2, v17

    #@11c
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    #@11f
    move-result-object v5

    #@120
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    #@122
    .line 1413
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1161
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@3
    move-result v0

    #@4
    .line 1162
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 1163
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 1164
    return-object v3

    #@f
    .line 1170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 1172
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@16
    move-result-object v2

    #@17
    .line 1174
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    const/16 v5, 0x14

    #@1b
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1e
    .line 1176
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@20
    .line 1175
    invoke-direct {p0, v3, v2, v5, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 1177
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@29
    invoke-direct {p0, p1, v2, v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@2c
    .line 1178
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@2e
    invoke-direct {p0, v0, v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@31
    .line 1180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    return-object v5
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1209
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1210
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    #@9
    move-result-object p2

    #@a
    .line 1209
    .end local p2    # "fallbackCarrierCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@0
    .prologue
    .line 1741
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatNumberForMobileDialing(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1228
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@4
    move-result v0

    #@5
    .line 1229
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@8
    move-result v8

    #@9
    if-nez v8, :cond_1

    #@b
    .line 1230
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_0

    #@11
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    :goto_0
    return-object v8

    #@16
    :cond_0
    const-string/jumbo v8, ""

    #@19
    goto :goto_0

    #@1a
    .line 1233
    :cond_1
    const-string/jumbo v1, ""

    #@1d
    .line 1235
    .local v1, "formattedNumber":Ljava/lang/String;
    new-instance v8, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1f
    invoke-direct {v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@22
    invoke-virtual {v8, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@29
    move-result-object v4

    #@2a
    .line 1236
    .local v4, "numberNoExt":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 1237
    .local v6, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@31
    move-result-object v5

    #@32
    .line 1238
    .local v5, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@34
    if-eq v5, v8, :cond_4

    #@36
    const/4 v3, 0x1

    #@37
    .line 1239
    .local v3, "isValidNumber":Z
    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_11

    #@3d
    .line 1241
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@3f
    if-eq v5, v8, :cond_2

    #@41
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@43
    if-ne v5, v8, :cond_5

    #@45
    :cond_2
    const/4 v2, 0x1

    #@46
    .line 1244
    .local v2, "isFixedLineOrMobile":Z
    :goto_2
    const-string/jumbo v8, "CO"

    #@49
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_7

    #@4f
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@51
    if-ne v5, v8, :cond_7

    #@53
    .line 1246
    const-string/jumbo v8, "3"

    #@56
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .line 1302
    .end local v2    # "isFixedLineOrMobile":Z
    :cond_3
    :goto_3
    if-eqz p3, :cond_13

    #@5c
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :goto_4
    return-object v1

    #@5d
    .line 1238
    .end local v3    # "isValidNumber":Z
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    #@5e
    .restart local v3    # "isValidNumber":Z
    goto :goto_1

    #@5f
    .line 1242
    :cond_5
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@61
    if-ne v5, v8, :cond_6

    #@63
    const/4 v2, 0x1

    #@64
    .restart local v2    # "isFixedLineOrMobile":Z
    goto :goto_2

    #@65
    .end local v2    # "isFixedLineOrMobile":Z
    :cond_6
    const/4 v2, 0x0

    #@66
    .restart local v2    # "isFixedLineOrMobile":Z
    goto :goto_2

    #@67
    .line 1247
    :cond_7
    const-string/jumbo v8, "BR"

    #@6a
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v8

    #@6e
    if-eqz v8, :cond_9

    #@70
    if-eqz v2, :cond_9

    #@72
    .line 1248
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    #@75
    move-result v8

    #@76
    if-eqz v8, :cond_8

    #@78
    .line 1249
    const-string/jumbo v8, ""

    #@7b
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    goto :goto_3

    #@80
    .line 1253
    :cond_8
    const-string/jumbo v1, ""

    #@83
    goto :goto_3

    #@84
    .line 1254
    :cond_9
    if-eqz v3, :cond_a

    #@86
    const-string/jumbo v8, "HU"

    #@89
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v8

    #@8d
    if-eqz v8, :cond_a

    #@8f
    .line 1260
    new-instance v8, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {p0, v6, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v8

    #@9c
    .line 1261
    const-string/jumbo v9, " "

    #@9f
    .line 1260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v8

    #@a3
    .line 1261
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@a5
    invoke-virtual {p0, v4, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@a8
    move-result-object v9

    #@a9
    .line 1260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v8

    #@ad
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    goto :goto_3

    #@b2
    .line 1262
    :cond_a
    if-ne v0, v9, :cond_d

    #@b4
    .line 1266
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@b7
    move-result-object v7

    #@b8
    .line 1267
    .local v7, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@bb
    move-result v8

    #@bc
    if-eqz v8, :cond_b

    #@be
    .line 1269
    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@c1
    move-result-object v8

    #@c2
    .line 1268
    invoke-direct {p0, v7, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isShorterThanPossibleNormalNumber(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    #@c5
    move-result v8

    #@c6
    if-eqz v8, :cond_c

    #@c8
    .line 1272
    :cond_b
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@ca
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@cd
    move-result-object v1

    #@ce
    goto :goto_3

    #@cf
    .line 1270
    :cond_c
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@d1
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    goto :goto_3

    #@d6
    .line 1278
    .end local v7    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_d
    const-string/jumbo v8, "001"

    #@d9
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v8

    #@dd
    if-nez v8, :cond_f

    #@df
    .line 1287
    const-string/jumbo v8, "MX"

    #@e2
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e5
    move-result v8

    #@e6
    if-nez v8, :cond_e

    #@e8
    const-string/jumbo v8, "CL"

    #@eb
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result v8

    #@ef
    if-eqz v8, :cond_10

    #@f1
    .line 1278
    :cond_e
    if-eqz v2, :cond_10

    #@f3
    .line 1289
    :cond_f
    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@f6
    move-result v8

    #@f7
    .line 1278
    if-eqz v8, :cond_10

    #@f9
    .line 1290
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@fb
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    goto/16 :goto_3

    #@101
    .line 1292
    :cond_10
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@103
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@106
    move-result-object v1

    #@107
    goto/16 :goto_3

    #@109
    .line 1295
    .end local v2    # "isFixedLineOrMobile":Z
    :cond_11
    if-eqz v3, :cond_3

    #@10b
    invoke-virtual {p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@10e
    move-result v8

    #@10f
    if-eqz v8, :cond_3

    #@111
    .line 1299
    if-eqz p3, :cond_12

    #@113
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@115
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@118
    move-result-object v8

    #@119
    :goto_5
    return-object v8

    #@11a
    .line 1300
    :cond_12
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@11c
    invoke-virtual {p0, v4, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@11f
    move-result-object v8

    #@120
    goto :goto_5

    #@121
    .line 1303
    :cond_13
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    #@124
    move-result-object v1

    #@125
    goto/16 :goto_4
.end method

.method public formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1325
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    #@4
    move-result v9

    #@5
    if-nez v9, :cond_0

    #@7
    .line 1326
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@9
    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@b
    .line 1327
    new-instance v11, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v12, "Trying to format number from invalid region "

    #@13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    .line 1329
    const-string/jumbo v12, ". International formatting applied."

    #@1e
    .line 1327
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v11

    #@22
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v11

    #@26
    .line 1326
    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@29
    .line 1330
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@2b
    invoke-virtual {p0, p1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@2e
    move-result-object v9

    #@2f
    return-object v9

    #@30
    .line 1332
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@33
    move-result v0

    #@34
    .line 1333
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    .line 1334
    .local v7, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@3b
    move-result v9

    #@3c
    if-nez v9, :cond_1

    #@3e
    .line 1335
    return-object v7

    #@3f
    .line 1337
    :cond_1
    const/4 v9, 0x1

    #@40
    if-ne v0, v9, :cond_2

    #@42
    .line 1338
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_3

    #@48
    .line 1341
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    const-string/jumbo v10, " "

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@5a
    invoke-virtual {p0, p1, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    return-object v9

    #@67
    .line 1343
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    #@6a
    move-result v9

    #@6b
    if-ne v0, v9, :cond_3

    #@6d
    .line 1350
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@6f
    invoke-virtual {p0, p1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    return-object v9

    #@74
    .line 1353
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@77
    move-result-object v6

    #@78
    .line 1354
    .local v6, "metadataForRegionCallingFrom":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    .line 1358
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@7f
    .line 1359
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    #@81
    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    #@88
    move-result v9

    #@89
    if-eqz v9, :cond_5

    #@8b
    .line 1360
    move-object v4, v3

    #@8c
    .line 1366
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    .line 1369
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@93
    move-result-object v5

    #@94
    .line 1371
    .local v5, "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@96
    invoke-direct {p0, v7, v5, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    .line 1372
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9f
    .line 1373
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@a1
    invoke-direct {p0, p1, v5, v9, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@a4
    .line 1375
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@a7
    move-result v9

    #@a8
    if-lez v9, :cond_6

    #@aa
    .line 1376
    const-string/jumbo v9, " "

    #@ad
    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    invoke-virtual {v9, v11, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    const-string/jumbo v10, " "

    #@b8
    invoke-virtual {v9, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v9

    #@bc
    invoke-virtual {v9, v11, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 1383
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v9

    #@c3
    return-object v9

    #@c4
    .line 1361
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v5    # "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v8    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    #@c7
    move-result v9

    #@c8
    if-eqz v9, :cond_4

    #@ca
    .line 1363
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    #@cd
    move-result-object v4

    #@ce
    goto :goto_0

    #@cf
    .line 1380
    .restart local v1    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v5    # "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v8    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@d1
    .line 1379
    invoke-direct {p0, v0, v9, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@d4
    goto :goto_1
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1566
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 1569
    .local v12, "rawInput":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@7
    move-result v14

    #@8
    if-nez v14, :cond_0

    #@a
    .line 1570
    invoke-virtual/range {p0 .. p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v14

    #@e
    return-object v14

    #@f
    .line 1572
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@12
    move-result v2

    #@13
    .line 1573
    .local v2, "countryCode":I
    move-object/from16 v0, p0

    #@15
    invoke-direct {v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@18
    move-result v14

    #@19
    if-nez v14, :cond_1

    #@1b
    .line 1574
    return-object v12

    #@1c
    .line 1580
    :cond_1
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    #@1e
    const/4 v15, 0x1

    #@1f
    invoke-static {v12, v14, v15}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    #@22
    move-result-object v12

    #@23
    .line 1585
    invoke-virtual/range {p0 .. p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@26
    move-result-object v10

    #@27
    .line 1586
    .local v10, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@2a
    move-result v14

    #@2b
    const/4 v15, 0x3

    #@2c
    if-le v14, v15, :cond_2

    #@2e
    .line 1587
    const/4 v14, 0x0

    #@2f
    const/4 v15, 0x3

    #@30
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v14

    #@34
    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@37
    move-result v3

    #@38
    .line 1588
    .local v3, "firstNationalNumberDigit":I
    const/4 v14, -0x1

    #@39
    if-eq v3, v14, :cond_2

    #@3b
    .line 1589
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v12

    #@3f
    .line 1592
    .end local v3    # "firstNationalNumberDigit":I
    :cond_2
    move-object/from16 v0, p0

    #@41
    move-object/from16 v1, p2

    #@43
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@46
    move-result-object v9

    #@47
    .line 1593
    .local v9, "metadataForRegionCallingFrom":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v14, 0x1

    #@48
    if-ne v2, v14, :cond_3

    #@4a
    .line 1594
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, p2

    #@4e
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    #@51
    move-result v14

    #@52
    if-eqz v14, :cond_5

    #@54
    .line 1595
    new-instance v14, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v14

    #@5d
    const-string/jumbo v15, " "

    #@60
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v14

    #@64
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v14

    #@68
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v14

    #@6c
    return-object v14

    #@6d
    .line 1597
    :cond_3
    if-eqz v9, :cond_5

    #@6f
    .line 1598
    move-object/from16 v0, p0

    #@71
    move-object/from16 v1, p2

    #@73
    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    #@76
    move-result v14

    #@77
    if-ne v2, v14, :cond_5

    #@79
    .line 1600
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@7c
    move-result-object v14

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-virtual {v0, v14, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@82
    move-result-object v5

    #@83
    .line 1602
    .local v5, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_4

    #@85
    .line 1604
    return-object v12

    #@86
    .line 1606
    :cond_4
    new-instance v11, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@88
    invoke-direct {v11}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    #@8b
    .line 1607
    .local v11, "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v11, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@8e
    .line 1609
    const-string/jumbo v14, "(\\d+)(.*)"

    #@91
    invoke-virtual {v11, v14}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@94
    .line 1611
    const-string/jumbo v14, "$1$2"

    #@97
    invoke-virtual {v11, v14}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@9a
    .line 1617
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v12, v11, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@a1
    move-result-object v14

    #@a2
    return-object v14

    #@a3
    .line 1619
    .end local v5    # "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v11    # "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_5
    const-string/jumbo v7, ""

    #@a6
    .line 1623
    .local v7, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v9, :cond_6

    #@a8
    .line 1624
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    .line 1626
    .local v6, "internationalPrefix":Ljava/lang/String;
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    #@ae
    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@b1
    move-result-object v14

    #@b2
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    #@b5
    move-result v14

    #@b6
    if-eqz v14, :cond_7

    #@b8
    .line 1627
    move-object v7, v6

    #@b9
    .line 1630
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@be
    .line 1631
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@c0
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@c3
    move-result-object v13

    #@c4
    .line 1633
    .local v13, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c6
    invoke-direct {v0, v2, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@c9
    move-result-object v8

    #@ca
    .line 1635
    .local v8, "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@cc
    .line 1634
    move-object/from16 v0, p0

    #@ce
    move-object/from16 v1, p1

    #@d0
    invoke-direct {v0, v1, v8, v14, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@d3
    .line 1636
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@d6
    move-result v14

    #@d7
    if-lez v14, :cond_8

    #@d9
    .line 1637
    const-string/jumbo v14, " "

    #@dc
    const/4 v15, 0x0

    #@dd
    invoke-virtual {v4, v15, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v14

    #@e1
    const/4 v15, 0x0

    #@e2
    invoke-virtual {v14, v15, v2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v14

    #@e6
    const-string/jumbo v15, " "

    #@e9
    const/16 v16, 0x0

    #@eb
    move/from16 v0, v16

    #@ed
    invoke-virtual {v14, v0, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v14

    #@f1
    .line 1638
    const/4 v15, 0x0

    #@f2
    .line 1637
    invoke-virtual {v14, v15, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    .line 1650
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v14

    #@f9
    return-object v14

    #@fa
    .line 1628
    .end local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v8    # "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v13    # "regionCode":Ljava/lang/String;
    .restart local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    #@fd
    move-result-object v7

    #@fe
    goto :goto_0

    #@ff
    .line 1642
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    .restart local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v8    # "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v13    # "regionCode":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@101
    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@103
    .line 1643
    new-instance v16, Ljava/lang/StringBuilder;

    #@105
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v17, "Trying to format number from invalid region "

    #@10b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v16

    #@10f
    move-object/from16 v0, v16

    #@111
    move-object/from16 v1, p2

    #@113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v16

    #@117
    .line 1645
    const-string/jumbo v17, ". International formatting applied."

    #@11a
    .line 1643
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v16

    #@11e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v16

    #@122
    .line 1642
    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@125
    .line 1647
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@127
    .line 1646
    move-object/from16 v0, p0

    #@129
    invoke-direct {v0, v2, v14, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    #@12c
    goto :goto_1
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2363
    new-instance v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    #@2
    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2118
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 2119
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@8
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@a
    .line 2120
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Invalid or missing region code ("

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 2121
    if-nez p1, :cond_0

    #@18
    const-string/jumbo p1, "null"

    #@1b
    .line 2120
    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 2122
    const-string/jumbo v3, ") provided."

    #@22
    .line 2120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 2119
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@2d
    .line 2123
    const/4 v0, 0x0

    #@2e
    return v0

    #@2f
    .line 2125
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1800
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 8
    .param p1, "countryCallingCode"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1839
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@4
    move-result-object v2

    #@5
    .line 1840
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1

    #@7
    .line 1841
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@a
    move-result-object v0

    #@b
    .line 1843
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "+"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "ZZ"

    #@30
    invoke-virtual {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 1846
    :catch_0
    move-exception v1

    #@36
    .line 1847
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@38
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@3a
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@41
    .line 1853
    .end local v0    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    :goto_0
    return-object v7

    #@42
    .line 1850
    :cond_1
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@44
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@46
    .line 1851
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, "Invalid or unknown country calling code provided: "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    .line 1850
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5d
    goto :goto_0
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1815
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1816
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@9
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Invalid or unknown region code provided: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@22
    .line 1817
    return-object v6

    #@23
    .line 1819
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v2, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2a
    move-result-object v0

    #@2b
    .line 1821
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 1822
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0, v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 1824
    :catch_0
    move-exception v1

    #@3b
    .line 1825
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@3d
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@3f
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@46
    .line 1827
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_1
    return-object v6
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 3
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 766
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@8
    move-result-object v0

    #@9
    .line 767
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@b
    .line 768
    return v2

    #@c
    .line 772
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 776
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 777
    return v2

    #@1f
    .line 773
    :cond_2
    return v2

    #@20
    .line 780
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    .line 819
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 822
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@a
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@d
    .line 823
    .local v0, "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@10
    .line 824
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@13
    .line 830
    :goto_0
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@15
    .line 829
    invoke-virtual {p0, v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 831
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    #@1b
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 835
    .local v3, "numberGroups":[Ljava/lang/String;
    array-length v4, v3

    #@20
    if-gt v4, v7, :cond_1

    #@22
    .line 836
    const/4 v4, 0x0

    #@23
    return v4

    #@24
    .line 826
    .end local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v3    # "numberGroups":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    #@25
    .restart local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    #@26
    .line 839
    .restart local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v3    # "numberGroups":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@29
    move-result-object v4

    #@2a
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2c
    if-ne v4, v5, :cond_2

    #@2e
    .line 845
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 846
    .local v1, "mobileToken":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@39
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_2

    #@3f
    .line 847
    aget-object v4, v3, v6

    #@41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@44
    move-result v4

    #@45
    aget-object v5, v3, v7

    #@47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4a
    move-result v5

    #@4b
    add-int/2addr v4, v5

    #@4c
    return v4

    #@4d
    .line 850
    .end local v1    # "mobileToken":Ljava/lang/String;
    :cond_2
    aget-object v4, v3, v6

    #@4f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@52
    move-result v4

    #@53
    return v4
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p1, "countryCallingCode"    # I

    #@0
    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1981
    const/4 v0, 0x0

    #@d
    return-object v0

    #@e
    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

    #@10
    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataSource;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1973
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1974
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

    #@a
    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1663
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1664
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    #@e
    move-result v2

    #@f
    new-array v1, v2, [C

    #@11
    .line 1665
    .local v1, "zeros":[C
    const/16 v2, 0x30

    #@13
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    #@16
    .line 1666
    new-instance v2, Ljava/lang/String;

    #@18
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1668
    .end local v1    # "zeros":[C
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@21
    move-result-wide v2

    #@22
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@25
    .line 1669
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2159
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@4
    move-result-object v0

    #@5
    .line 2160
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    #@7
    .line 2161
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@9
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@b
    .line 2162
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Invalid or missing region code ("

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    .line 2163
    if-nez p1, :cond_0

    #@19
    const-string/jumbo p1, "null"

    #@1c
    .line 2162
    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 2164
    const-string/jumbo v5, ") provided."

    #@23
    .line 2162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 2161
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@2e
    .line 2165
    return-object v6

    #@2f
    .line 2167
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 2169
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_2

    #@39
    .line 2170
    return-object v6

    #@3a
    .line 2172
    :cond_2
    if-eqz p2, :cond_3

    #@3c
    .line 2175
    const-string/jumbo v2, "~"

    #@3f
    const-string/jumbo v3, ""

    #@42
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 2177
    :cond_3
    return-object v1
.end method

.method getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 2
    .param p1, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@0
    .prologue
    .line 1877
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->-getcom-android-i18n-phonenumbers-PhoneNumberUtil$PhoneNumberTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 1900
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 1879
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 1881
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 1883
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 1886
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 1888
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    .line 1890
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 1892
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    .line 1894
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 1896
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@3d
    move-result-object v0

    #@3e
    return-object v0

    #@3f
    .line 1898
    :pswitch_9
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    .line 1877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 1911
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1912
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@7
    move-result v3

    #@8
    invoke-direct {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@b
    move-result-object v0

    #@c
    .line 1913
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@e
    .line 1914
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@10
    return-object v3

    #@11
    .line 1916
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1917
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@18
    move-result-object v3

    #@19
    return-object v3
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    #@0
    .prologue
    .line 2095
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

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
    .line 2096
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@e
    const-string/jumbo v1, "ZZ"

    #@11
    :goto_0
    return-object v1

    #@12
    :cond_0
    const/4 v1, 0x0

    #@13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    goto :goto_0
.end method

.method public getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2052
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@4
    move-result v0

    #@5
    .line 2053
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/util/List;

    #@11
    .line 2054
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    #@13
    .line 2055
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 2056
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@19
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@1b
    .line 2057
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Missing/invalid country_code ("

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    const-string/jumbo v6, ") for number "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 2056
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@3d
    .line 2058
    return-object v7

    #@3e
    .line 2060
    .end local v1    # "numberString":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@41
    move-result v3

    #@42
    const/4 v4, 0x1

    #@43
    if-ne v3, v4, :cond_1

    #@45
    .line 2061
    const/4 v3, 0x0

    #@46
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Ljava/lang/String;

    #@4c
    return-object v3

    #@4d
    .line 2063
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    return-object v3
.end method

.method public getRegionCodesForCountryCode(I)Ljava/util/List;
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
    .line 2105
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

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
    .line 2106
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

.method public getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
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
    .line 911
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2215
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 2217
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 2219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    .line 2220
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@10
    .line 2221
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method isLeadingZeroPossible(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    #@0
    .prologue
    .line 2197
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 2196
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@7
    move-result-object v0

    #@8
    .line 2198
    .local v0, "mainMetadataForCallingCode":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@a
    .line 2199
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 2201
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .locals 5
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3150
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3
    move-result-object v0

    #@4
    .line 3151
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    #@6
    .line 3152
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    #@8
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Invalid or unknown region code provided: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@21
    .line 3153
    const/4 v1, 0x0

    #@22
    return v1

    #@23
    .line 3155
    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isMobileNumberPortableRegion()Z

    #@26
    move-result v1

    #@27
    return v1
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isNumberGeographical(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 3
    .param p1, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 998
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@4
    move-result-object v0

    #@5
    .line 1001
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 1002
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 1001
    :cond_0
    :goto_0
    return v1

    #@e
    .line 1002
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 6
    .param p1, "firstNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 2972
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@5
    .line 2973
    .local v0, "firstNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@8
    .line 2974
    new-instance v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@a
    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@d
    .line 2975
    .local v2, "secondNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@10
    .line 2978
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@13
    .line 2979
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@16
    .line 2980
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@19
    .line 2981
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1c
    .line 2982
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1f
    .line 2983
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@22
    .line 2984
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 2985
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2f
    move-result v4

    #@30
    if-nez v4, :cond_0

    #@32
    .line 2986
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@35
    .line 2988
    :cond_0
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 2989
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_1

    #@45
    .line 2990
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@48
    .line 2993
    :cond_1
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_2

    #@4e
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_2

    #@54
    .line 2994
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_3

    #@62
    .line 2997
    :cond_2
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@65
    move-result v1

    #@66
    .line 2998
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@69
    move-result v3

    #@6a
    .line 3000
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_6

    #@6c
    if-eqz v3, :cond_6

    #@6e
    .line 3001
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_4

    #@74
    .line 3002
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@76
    return-object v4

    #@77
    .line 2995
    .end local v1    # "firstNumberCountryCode":I
    .end local v3    # "secondNumberCountryCode":I
    :cond_3
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@79
    return-object v4

    #@7a
    .line 3003
    .restart local v1    # "firstNumberCountryCode":I
    .restart local v3    # "secondNumberCountryCode":I
    :cond_4
    if-ne v1, v3, :cond_5

    #@7c
    .line 3004
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@7f
    move-result v4

    #@80
    .line 3003
    if-eqz v4, :cond_5

    #@82
    .line 3008
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@84
    return-object v4

    #@85
    .line 3011
    :cond_5
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@87
    return-object v4

    #@88
    .line 3015
    :cond_6
    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@8b
    .line 3017
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@8e
    move-result v4

    #@8f
    if-eqz v4, :cond_7

    #@91
    .line 3018
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@93
    return-object v4

    #@94
    .line 3020
    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@97
    move-result v4

    #@98
    if-eqz v4, :cond_8

    #@9a
    .line 3021
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@9c
    return-object v4

    #@9d
    .line 3023
    :cond_8
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@9f
    return-object v4
.end method

.method public isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 12
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3089
    :try_start_0
    const-string/jumbo v0, "ZZ"

    #@3
    invoke-virtual {p0, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@6
    move-result-object v10

    #@7
    .line 3090
    .local v10, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 3091
    .end local v10    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v6

    #@d
    .line 3092
    .local v6, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@10
    move-result-object v0

    #@11
    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@13
    if-ne v0, v1, :cond_2

    #@15
    .line 3096
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    .line 3098
    .local v8, "firstNumberRegion":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v0, "ZZ"

    #@20
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 3099
    invoke-virtual {p0, p2, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@29
    move-result-object v11

    #@2a
    .line 3100
    .local v11, "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v11}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@2d
    move-result-object v9

    #@2e
    .line 3101
    .local v9, "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@30
    if-ne v9, v0, :cond_0

    #@32
    .line 3102
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@34
    return-object v0

    #@35
    .line 3104
    :cond_0
    return-object v9

    #@36
    .line 3108
    .end local v9    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v11    # "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    new-instance v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@38
    invoke-direct {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@3b
    .line 3109
    .local v5, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    #@3c
    const/4 v3, 0x0

    #@3d
    const/4 v4, 0x0

    #@3e
    move-object v0, p0

    #@3f
    move-object v1, p2

    #@40
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@43
    .line 3110
    invoke-virtual {p0, p1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 3112
    .end local v5    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v7

    #@49
    .line 3118
    .end local v8    # "firstNumberRegion":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@4b
    return-object v0
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 20
    .param p1, "firstNumber"    # Ljava/lang/String;
    .param p2, "secondNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3049
    :try_start_0
    const-string/jumbo v3, "ZZ"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, p1

    #@7
    invoke-virtual {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@a
    move-result-object v18

    #@b
    .line 3050
    .local v18, "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    #@d
    move-object/from16 v1, v18

    #@f
    move-object/from16 v2, p2

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 3051
    .end local v18    # "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v15

    #@17
    .line 3052
    .local v15, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@1a
    move-result-object v3

    #@1b
    sget-object v4, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@1d
    if-ne v3, v4, :cond_0

    #@1f
    .line 3054
    :try_start_1
    const-string/jumbo v3, "ZZ"

    #@22
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, p2

    #@26
    invoke-virtual {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@29
    move-result-object v19

    #@2a
    .line 3055
    .local v19, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v19

    #@2e
    move-object/from16 v2, p1

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 3056
    .end local v19    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v16

    #@36
    .line 3057
    .local v16, "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@39
    move-result-object v3

    #@3a
    sget-object v4, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@3c
    if-ne v3, v4, :cond_0

    #@3e
    .line 3059
    :try_start_2
    new-instance v8, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@40
    invoke-direct {v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@43
    .line 3060
    .local v8, "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@45
    invoke-direct {v14}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@48
    .line 3061
    .local v14, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    #@49
    const/4 v6, 0x0

    #@4a
    const/4 v7, 0x0

    #@4b
    move-object/from16 v3, p0

    #@4d
    move-object/from16 v4, p1

    #@4f
    invoke-direct/range {v3 .. v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@52
    .line 3062
    const/4 v11, 0x0

    #@53
    const/4 v12, 0x0

    #@54
    const/4 v13, 0x0

    #@55
    move-object/from16 v9, p0

    #@57
    move-object/from16 v10, p2

    #@59
    invoke-direct/range {v9 .. v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@5c
    .line 3063
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v8, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_2
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    #@61
    move-result-object v3

    #@62
    return-object v3

    #@63
    .line 3064
    .end local v8    # "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2
    move-exception v17

    #@64
    .line 3072
    .end local v16    # "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_0
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@66
    return-object v3
.end method

.method isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 1995
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v0

    #@e
    .line 1997
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberPossibleForDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1998
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@17
    move-result v1

    #@18
    .line 1997
    :goto_0
    return v1

    #@19
    :cond_0
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method isNumberPossibleForDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@0
    .prologue
    .line 1988
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v0

    #@e
    .line 1990
    .local v0, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2323
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2324
    :catch_0
    move-exception v0

    #@a
    .line 2325
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 2285
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 2286
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@7
    move-result v0

    #@8
    .line 2291
    .local v0, "countryCode":I
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 2292
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@10
    return-object v5

    #@11
    .line 2294
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 2296
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@18
    move-result-object v1

    #@19
    .line 2298
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@1b
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@26
    move-result-object v3

    #@27
    .line 2299
    .local v3, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@2a
    move-result-object v5

    #@2b
    return-object v5
.end method

.method public isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 2009
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2010
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2030
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@4
    move-result v0

    #@5
    .line 2031
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@8
    move-result-object v1

    #@9
    .line 2032
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_0

    #@b
    .line 2033
    const-string/jumbo v4, "001"

    #@e
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 2034
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    #@17
    move-result v4

    #@18
    if-eq v0, v4, :cond_1

    #@1a
    .line 2037
    :cond_0
    return v3

    #@1b
    .line 2039
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 2040
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@22
    move-result-object v4

    #@23
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@25
    if-eq v4, v5, :cond_2

    #@27
    const/4 v3, 0x1

    #@28
    :cond_2
    return v3
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 15
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 2423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v12

    #@4
    if-nez v12, :cond_0

    #@6
    .line 2424
    const/4 v12, 0x0

    #@7
    return v12

    #@8
    .line 2426
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    .line 2428
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "NonMatch"

    #@12
    .line 2429
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@14
    .line 2430
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    .line 2434
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@1b
    move-result-object v1

    #@1c
    .line 2435
    .local v1, "countryCodeSource":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_2

    #@1e
    .line 2436
    move-object/from16 v0, p5

    #@20
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@23
    .line 2438
    :cond_2
    sget-object v12, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@25
    if-eq v1, v12, :cond_5

    #@27
    .line 2439
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@2a
    move-result v12

    #@2b
    const/4 v13, 0x2

    #@2c
    if-gt v12, v13, :cond_3

    #@2e
    .line 2440
    new-instance v12, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@30
    sget-object v13, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@32
    .line 2441
    const-string/jumbo v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    #@35
    .line 2440
    invoke-direct {v12, v13, v14}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@38
    throw v12

    #@39
    .line 2444
    :cond_3
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {p0, v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    #@3e
    move-result v9

    #@3f
    .line 2445
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_4

    #@41
    .line 2446
    move-object/from16 v0, p5

    #@43
    invoke-virtual {v0, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@46
    .line 2447
    return v9

    #@47
    .line 2452
    :cond_4
    new-instance v12, Lcom/android/i18n/phonenumbers/NumberParseException;

    #@49
    sget-object v13, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@4b
    .line 2453
    const-string/jumbo v14, "Country calling code supplied was not recognised."

    #@4e
    .line 2452
    invoke-direct {v12, v13, v14}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    #@51
    throw v12

    #@52
    .line 2454
    .end local v9    # "potentialCountryCode":I
    :cond_5
    if-eqz p2, :cond_9

    #@54
    .line 2458
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    #@57
    move-result v2

    #@58
    .line 2459
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 2460
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .line 2461
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@63
    move-result v12

    #@64
    if-eqz v12, :cond_9

    #@66
    .line 2463
    new-instance v10, Ljava/lang/StringBuilder;

    #@68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6b
    move-result v12

    #@6c
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v12

    #@70
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@73
    .line 2464
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@76
    move-result-object v5

    #@77
    .line 2466
    .local v5, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@79
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    #@7c
    move-result-object v13

    #@7d
    invoke-virtual {v12, v13}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@80
    move-result-object v11

    #@81
    .line 2468
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    #@82
    .line 2467
    move-object/from16 v0, p2

    #@84
    invoke-virtual {p0, v10, v0, v12}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    #@87
    .line 2470
    iget-object v12, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@89
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    #@8c
    move-result-object v13

    #@8d
    invoke-virtual {v12, v13}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@90
    move-result-object v8

    #@91
    .line 2474
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@94
    move-result-object v12

    #@95
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    #@98
    move-result v12

    #@99
    if-nez v12, :cond_6

    #@9b
    .line 2475
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9e
    move-result-object v12

    #@9f
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    #@a2
    move-result v12

    #@a3
    .line 2474
    if-nez v12, :cond_7

    #@a5
    .line 2476
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v12

    #@a9
    invoke-direct {p0, v8, v12}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@ac
    move-result-object v12

    #@ad
    .line 2477
    sget-object v13, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@af
    .line 2476
    if-ne v12, v13, :cond_9

    #@b1
    .line 2478
    :cond_7
    move-object/from16 v0, p3

    #@b3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b6
    .line 2479
    if-eqz p4, :cond_8

    #@b8
    .line 2480
    sget-object v12, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@ba
    move-object/from16 v0, p5

    #@bc
    invoke-virtual {v0, v12}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@bf
    .line 2482
    :cond_8
    move-object/from16 v0, p5

    #@c1
    invoke-virtual {v0, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@c4
    .line 2483
    return v2

    #@c5
    .line 2488
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v12, 0x0

    #@c6
    move-object/from16 v0, p5

    #@c8
    invoke-virtual {v0, v12}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@cb
    .line 2489
    const/4 v12, 0x0

    #@cc
    return v12
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 2620
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v3

    #@6
    .line 2623
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@f
    move-result v4

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {p1, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 2625
    const/4 v1, 0x1

    #@1c
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    #@1f
    move-result v2

    #@20
    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    #@22
    .line 2626
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 2629
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 2630
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@33
    move-result v5

    #@34
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@37
    .line 2631
    return-object v0

    #@38
    .line 2625
    .end local v0    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 2635
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const-string/jumbo v4, ""

    #@3e
    return-object v4
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 4
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2531
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 2532
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@9
    return-object v2

    #@a
    .line 2535
    :cond_0
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    #@c
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@f
    move-result-object v1

    #@10
    .line 2536
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 2537
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@1d
    .line 2539
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    #@20
    .line 2540
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@22
    return-object v2

    #@23
    .line 2543
    :cond_1
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@25
    invoke-virtual {v2, p2}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@28
    move-result-object v0

    #@29
    .line 2544
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    #@2c
    .line 2545
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 2546
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@34
    .line 2545
    :goto_0
    return-object v2

    #@35
    .line 2547
    :cond_2
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@37
    goto :goto_0
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 2562
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v3

    #@6
    .line 2563
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 2564
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@f
    move-result v8

    #@10
    if-nez v8, :cond_1

    #@12
    .line 2566
    :cond_0
    return v10

    #@13
    .line 2569
    :cond_1
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@15
    invoke-virtual {v8, v4}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1c
    move-result-object v5

    #@1d
    .line 2570
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_a

    #@23
    .line 2572
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@25
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    #@28
    move-result-object v9

    #@29
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v8, v9}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@30
    move-result-object v1

    #@31
    .line 2574
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    #@38
    move-result v0

    #@39
    .line 2578
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    #@3c
    move-result v2

    #@3d
    .line 2579
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    .line 2580
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@43
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_5

    #@49
    .line 2583
    :cond_2
    if-eqz v0, :cond_3

    #@4b
    .line 2584
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    #@4e
    move-result v8

    #@4f
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    #@5a
    move-result v8

    #@5b
    if-eqz v8, :cond_8

    #@5d
    .line 2587
    :cond_3
    if-eqz p3, :cond_4

    #@5f
    if-lez v2, :cond_4

    #@61
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    if-eqz v8, :cond_4

    #@67
    .line 2588
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 2590
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    #@71
    move-result v8

    #@72
    invoke-virtual {p1, v10, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@75
    .line 2591
    return v11

    #@76
    .line 2581
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    if-eqz v8, :cond_2

    #@7c
    .line 2595
    new-instance v7, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@81
    .line 2596
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v7, v10, v3, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 2597
    if-eqz v0, :cond_6

    #@8a
    .line 2598
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    #@95
    move-result v8

    #@96
    if-eqz v8, :cond_9

    #@98
    .line 2601
    :cond_6
    if-eqz p3, :cond_7

    #@9a
    if-le v2, v11, :cond_7

    #@9c
    .line 2602
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 2604
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@a6
    move-result v8

    #@a7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    invoke-virtual {p1, v10, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 2605
    return v11

    #@af
    .line 2585
    .end local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_8
    return v10

    #@b0
    .line 2599
    .restart local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_9
    return v10

    #@b1
    .line 2608
    .end local v0    # "isViableOriginalNumber":Z
    .end local v1    # "nationalNumberRule":Ljava/util/regex/Pattern;
    .end local v2    # "numOfGroups":I
    .end local v6    # "transformRule":Ljava/lang/String;
    .end local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_a
    return v10
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 2676
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@5
    .line 2677
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@8
    .line 2678
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 2687
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v5, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@9
    .line 2686
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 2707
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@5
    .line 2708
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@8
    .line 2709
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, v3

    #@5
    move-object v5, p3

    #@6
    .line 2719
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    #@9
    .line 2718
    return-void
.end method

.method public truncateTooLongNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 2337
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 2338
    return v6

    #@8
    .line 2340
    :cond_0
    new-instance v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@a
    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    #@d
    .line 2341
    .local v2, "numberCopy":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@10
    .line 2342
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@13
    move-result-wide v0

    #@14
    .line 2344
    .local v0, "nationalNumber":J
    :cond_1
    const-wide/16 v4, 0xa

    #@16
    div-long/2addr v0, v4

    #@17
    .line 2345
    invoke-virtual {v2, v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1a
    .line 2346
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@1d
    move-result-object v3

    #@1e
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@20
    if-eq v3, v4, :cond_2

    #@22
    .line 2347
    const-wide/16 v4, 0x0

    #@24
    cmp-long v3, v0, v4

    #@26
    if-nez v3, :cond_3

    #@28
    .line 2348
    :cond_2
    const/4 v3, 0x0

    #@29
    return v3

    #@2a
    .line 2350
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 2351
    invoke-virtual {p1, v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@33
    .line 2352
    return v6
.end method
