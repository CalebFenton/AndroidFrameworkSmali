.class public Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALPHANUM:Ljava/lang/String;

.field private static final greylist-max-o ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o CC_STRING:Ljava/lang/String; = "$CC"

.field private static final blacklist COUNTRIES_WITHOUT_NATIONAL_PREFIX_WITH_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final greylist-max-o DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final greylist-max-o EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final greylist-max-o EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final greylist-max-o FG_STRING:Ljava/lang/String; = "$FG"

.field private static final greylist-max-o FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final greylist-max-o MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final greylist-max-o MAX_LENGTH_FOR_NSN:I = 0x11

.field private static final greylist-max-o MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final greylist-max-o MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NANPA_COUNTRY_CODE:I = 0x1

.field static final greylist-max-o NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o NP_STRING:Ljava/lang/String; = "$NP"

.field static final greylist-max-o PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final greylist-max-o PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o PLUS_SIGN:C = '+'

.field static final greylist-max-o REGEX_FLAGS:I = 0x42

.field public static final blacklist REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final blacklist RFC3966_DOMAINLABEL:Ljava/lang/String;

.field private static final blacklist RFC3966_DOMAINNAME:Ljava/lang/String;

.field static final blacklist RFC3966_DOMAINNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final blacklist RFC3966_GLOBAL_NUMBER_DIGITS:Ljava/lang/String; = "^\\+(\\p{Nd}|[\\-\\.\\(\\)]?)*\\p{Nd}(\\p{Nd}|[\\-\\.\\(\\)]?)*$"

.field static final blacklist RFC3966_GLOBAL_NUMBER_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final greylist-max-o RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final blacklist RFC3966_PHONE_DIGIT:Ljava/lang/String; = "(\\p{Nd}|[\\-\\.\\(\\)]?)"

.field private static final greylist-max-o RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final blacklist RFC3966_TOPLABEL:Ljava/lang/String;

.field private static final blacklist RFC3966_VISUAL_SEPARATOR:Ljava/lang/String; = "[\\-\\.\\(\\)]?"

.field private static final greylist-max-o SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final greylist-max-o SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final greylist-max-o STAR_SIGN:C = '*'

.field private static final greylist-max-o UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final greylist-max-o UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final greylist-max-o UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o VALID_ALPHA:Ljava/lang/String;

.field private static final greylist-max-o VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final greylist-max-o VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final greylist-max-o VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final greylist-max-o VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static greylist-max-o instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private static final greylist-max-o logger:Ljava/util/logging/Logger;


# instance fields
.field private final greylist-max-o countryCallingCodeToRegionCodeMap:Ljava/util/Map;
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

.field private final greylist-max-o countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

.field private final blacklist metadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

.field private final greylist-max-o nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

.field private final greylist-max-o supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 60
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 157
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 127
    const-string v3, "9"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 130
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v3, "geoMobileCountriesWithoutMobileAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v4, 0x56

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    nop

    .line 133
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 135
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v5, "countriesWithoutNationalPrefixWithAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v6, 0x34

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 155
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 136
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    nop

    .line 138
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    sput-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->COUNTRIES_WITHOUT_NATIONAL_PREFIX_WITH_AREA_CODES:Ljava/util/Set;

    .line 140
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v8, "geoMobileCountries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v2, 0x37

    .line 158
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 150
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v10, 0x33

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v2, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v2, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v12, 0x38

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v12, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v13, 0x39

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v2, v13, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v14, Ljava/util/HashMap;

    const/16 v15, 0x28

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 163
    .local v14, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v15, 0x41

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v15, 0x42

    move/from16 v16, v4

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v4, 0x43

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v4, 0x44

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v4, 0x45

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v4, 0x46

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v4, 0x47

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v4, 0x48

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v4, 0x49

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v4, 0x4a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v4, 0x4b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v4, 0x4c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/16 v4, 0x4d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v4, 0x4e

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/16 v4, 0x4f

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v14, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 191
    new-instance v1, Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 192
    .local v1, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 193
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 194
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 196
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v4, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 198
    const/16 v6, 0x2b

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/16 v6, 0x23

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 203
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v6, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_20f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_23a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    .line 206
    .local v9, "c":C
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v9    # "c":C
    goto :goto_20f

    .line 209
    :cond_23a
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 211
    const/16 v7, 0x2d

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const v9, 0xff0d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/16 v9, 0x2010

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/16 v9, 0x2011

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/16 v9, 0x2012

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/16 v9, 0x2013

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/16 v9, 0x2014

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/16 v9, 0x2015

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/16 v9, 0x2212

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/16 v7, 0x2f

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const v9, 0xff0f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const/16 v9, 0x3000

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/16 v9, 0x2060

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/16 v7, 0x2e

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const v9, 0xff0e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 236
    .end local v0    # "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v2    # "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v3    # "geoMobileCountriesWithoutMobileAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v5    # "countriesWithoutNationalPrefixWithAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v8    # "geoMobileCountries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14    # "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    nop

    .line 237
    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 251
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[, \\[\\]]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 252
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 255
    const-string v0, "[+\uff0b]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 256
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 257
    const-string v0, "(\\p{Nd})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 266
    const-string v0, "[+\uff0b\\p{Nd}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 274
    const-string v0, "[\\\\/] *x"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 280
    const-string v0, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 284
    const-string v0, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 316
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 326
    nop

    .line 327
    const-string v0, "^\\+(\\p{Nd}|[\\-\\.\\(\\)]?)*\\p{Nd}(\\p{Nd}|[\\-\\.\\(\\)]?)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_GLOBAL_NUMBER_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHANUM:Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHANUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]+((\\-)*["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHANUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINLABEL:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]+((\\-)*["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHANUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_TOPLABEL:Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINLABEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\.)*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_TOPLABEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\.?$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME:Ljava/lang/String;

    .line 338
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 438
    const-string v0, "(\\D+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 444
    const-string v0, "(\\$\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 454
    const-string v0, "\\(?\\$1\\)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;Ljava/util/Map;)V
    .registers 9
    .param p1, "metadataSource"    # Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 742
    .local p2, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    invoke-static {}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 721
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 726
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 731
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 735
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 743
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

    .line 744
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 745
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "001"

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 746
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 749
    .local v4, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_69

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 751
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 754
    :cond_69
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 756
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6e
    goto :goto_37

    .line 760
    :cond_6f
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 761
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 764
    :cond_80
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 765
    return-void
.end method

.method private greylist-max-o buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3483
    const-string v0, ";phone-context="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3485
    .local v0, "indexOfPhoneContext":I
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPhoneContext(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3486
    .local v1, "phoneContext":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPhoneContextValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3490
    if-eqz v1, :cond_33

    .line 3493
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    .line 3497
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3504
    :cond_1e
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 3506
    .local v4, "indexOfRfc3966Prefix":I
    if-ltz v4, :cond_2b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    .line 3507
    .local v2, "indexOfNationalNumber":I
    :cond_2b
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    .end local v2    # "indexOfNationalNumber":I
    .end local v4    # "indexOfRfc3966Prefix":I
    goto :goto_3a

    .line 3511
    :cond_33
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3516
    :goto_3a
    const-string v2, ";isub="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3517
    .local v2, "indexOfIsdn":I
    if-lez v2, :cond_49

    .line 3518
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3524
    :cond_49
    return-void

    .line 3487
    .end local v2    # "indexOfIsdn":I
    :cond_4a
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "The phone-context value is invalid."

    invoke-direct {v2, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .line 3157
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3159
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 3160
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3161
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 3164
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist convertAlphaCharactersInNumber(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 888
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o copyCoreFieldsOnly(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p0, "phoneNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3532
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3533
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3534
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3535
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 3536
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3538
    :cond_24
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3539
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3541
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3543
    :cond_35
    return-object v0
.end method

.method private static blacklist createExtnPattern(Z)Ljava/lang/String;
    .registers 22
    .param p0, "forParsing"    # Z

    .line 358
    const/16 v0, 0x14

    .line 359
    .local v0, "extLimitAfterExplicitLabel":I
    const/16 v1, 0xf

    .line 360
    .local v1, "extLimitAfterLikelyLabel":I
    const/16 v2, 0x9

    .line 361
    .local v2, "extLimitAfterAmbiguousChar":I
    const/4 v3, 0x6

    .line 363
    .local v3, "extLimitWhenNotSure":I
    const-string v4, "[ \u00a0\\t,]*"

    .line 365
    .local v4, "possibleSeparatorsBetweenNumberAndExtLabel":Ljava/lang/String;
    const-string v5, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    .line 366
    .local v5, "possibleCharsAfterExtLabel":Ljava/lang/String;
    const-string v6, "#?"

    .line 372
    .local v6, "optionalExtnSuffix":Ljava/lang/String;
    const-string v7, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    .line 376
    .local v7, "explicitExtLabels":Ljava/lang/String;
    const-string v8, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    .line 378
    .local v8, "ambiguousExtLabels":Ljava/lang/String;
    const-string v9, "[- ]+"

    .line 380
    .local v9, "ambiguousSeparator":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ";ext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, "rfcExtn":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 382
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, "explicitExtn":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 385
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 386
    .local v12, "ambiguousExtn":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 396
    .local v13, "americanStyleExtnWithSuffix":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, "extensionPattern":Ljava/lang/String;
    if-eqz p0, :cond_120

    .line 405
    move/from16 v16, v0

    .end local v0    # "extLimitAfterExplicitLabel":I
    .local v16, "extLimitAfterExplicitLabel":I
    const-string v0, "[ \u00a0\\t]*"

    .line 409
    .local v0, "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    move/from16 v17, v1

    .end local v1    # "extLimitAfterLikelyLabel":I
    .local v17, "extLimitAfterLikelyLabel":I
    const-string v1, "(?:,{2}|;)"

    .line 411
    .local v1, "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    move/from16 v18, v2

    .end local v2    # "extLimitAfterAmbiguousChar":I
    .local v18, "extLimitAfterAmbiguousChar":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    move-object/from16 v19, v1

    .end local v1    # "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    .local v19, "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "autoDiallingExtn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v20, v0

    .end local v0    # "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    .local v20, "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    const-string v0, "(?:,)+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    invoke-static/range {v18 .. v18}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "onlyCommasExtn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 425
    .end local v16    # "extLimitAfterExplicitLabel":I
    .end local v17    # "extLimitAfterLikelyLabel":I
    .end local v18    # "extLimitAfterAmbiguousChar":I
    .end local v19    # "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    .end local v20    # "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    .local v0, "extLimitAfterExplicitLabel":I
    .local v1, "extLimitAfterLikelyLabel":I
    .restart local v2    # "extLimitAfterAmbiguousChar":I
    :cond_120
    return-object v14
.end method

.method public static blacklist createInstance(Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 4
    .param p0, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 1236
    if-eqz p0, :cond_1c

    .line 1239
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/source/MetadataSourceImpl;

    .line 1240
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getPhoneNumberMetadataFileNameProvider()Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    move-result-object v1

    .line 1242
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getMetadataParser()Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/i18n/phonenumbers/MetadataLoader;Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;)V

    .line 1239
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0

    .line 1237
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createInstance(Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 3
    .param p0, "metadataSource"    # Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

    .line 1259
    if-eqz p0, :cond_c

    .line 1262
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 1263
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;-><init>(Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;Ljava/util/Map;)V

    .line 1262
    return-object v0

    .line 1260
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataSource could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o descHasData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 2
    .param p0, "desc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 1145
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1146
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1147
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1145
    :goto_16
    return v0
.end method

.method private static greylist-max-o descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 5
    .param p0, "desc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 1130
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v0

    :cond_11
    :goto_11
    return v1
.end method

.method private static blacklist ensureMetadataIsNonNull(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)V
    .registers 3
    .param p0, "phoneMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p1, "message"    # Ljava/lang/String;

    .line 2385
    if-eqz p0, :cond_3

    .line 2388
    return-void

    .line 2386
    :cond_3
    new-instance v0, Lcom/android/i18n/phonenumbers/MissingMetadataException;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/MissingMetadataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist extnDigits(I)Ljava/lang/String;
    .registers 3
    .param p0, "maxLength"    # I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\p{Nd}{1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist extractPhoneContext(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "numberToExtractFrom"    # Ljava/lang/String;
    .param p2, "indexOfPhoneContext"    # I

    .line 3442
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 3443
    const/4 v0, 0x0

    return-object v0

    .line 3446
    :cond_5
    const-string v1, ";phone-context="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 3448
    .local v1, "phoneContextStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_15

    .line 3449
    const-string v0, ""

    return-object v0

    .line 3452
    :cond_15
    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3454
    .local v2, "phoneContextEnd":I
    if-eq v2, v0, :cond_22

    .line 3455
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3457
    :cond_22
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 783
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 784
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 785
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 787
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 788
    .local v1, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 789
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 792
    :cond_2d
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 793
    .local v2, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 794
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 796
    :cond_41
    return-object p0

    .line 798
    .end local v1    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "secondNumber":Ljava/util/regex/Matcher;
    :cond_42
    const-string v1, ""

    return-object v1
.end method

.method private greylist-max-o formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1986
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/CharSequence;

    .line 1997
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    .line 2001
    .local v0, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v1, :cond_f

    goto :goto_14

    .line 2003
    :cond_f
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v1

    goto :goto_18

    .line 2002
    :cond_14
    :goto_14
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v1

    .line 2003
    :goto_18
    nop

    .line 2004
    .local v1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p0, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 2005
    .local v2, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_21

    .line 2006
    move-object v3, p1

    goto :goto_25

    .line 2007
    :cond_21
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2005
    :goto_25
    return-object v3
.end method

.method private greylist-max-o formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/CharSequence;

    .line 2039
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, "numberFormatRule":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 2041
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2042
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 2043
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_43

    if-eqz p4, :cond_43

    .line 2044
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 2045
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 2047
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 2048
    .local v3, "carrierCodeFormattingRule":Ljava/lang/String;
    const-string v4, "$CC"

    invoke-virtual {v3, v4, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2051
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2052
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2053
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2054
    .end local v3    # "carrierCodeFormattingRule":Ljava/lang/String;
    goto :goto_67

    .line 2056
    :cond_43
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 2057
    .local v3, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v4, :cond_63

    if-eqz v3, :cond_63

    .line 2059
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    .line 2060
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2061
    .local v4, "firstGroupMatcher":Ljava/util/regex/Matcher;
    nop

    .line 2062
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2063
    .end local v4    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    goto :goto_67

    .line 2064
    :cond_63
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2067
    .end local v3    # "nationalPrefixFormattingRule":Ljava/lang/String;
    :goto_67
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_87

    .line 2069
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2070
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2071
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2074
    :cond_7d
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2076
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_87
    return-object v2
.end method

.method static greylist-max-o formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .registers 2
    .param p0, "nationalPrefixFormattingRule"    # Ljava/lang/String;

    .line 1271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1272
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1271
    :goto_16
    return v0
.end method

.method private greylist-max-o getCountryCodeForValidRegion(Ljava/lang/String;)I
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2544
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2545
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_b

    .line 2548
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1

    .line 2546
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getCountryMobileToken(I)Ljava/lang/String;
    .registers 3
    .param p0, "countryCallingCode"    # I

    .line 1047
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1048
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1050
    :cond_19
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized greylist getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 3

    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1215
    :try_start_3
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v1, :cond_16

    .line 1216
    invoke-static {}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v1

    .line 1217
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getMetadataLoader()Lcom/android/i18n/phonenumbers/MetadataLoader;

    move-result-object v1

    .line 1218
    .local v1, "metadataLoader":Lcom/android/i18n/phonenumbers/MetadataLoader;
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V

    .line 1220
    .end local v1    # "metadataLoader":Lcom/android/i18n/phonenumbers/MetadataLoader;
    :cond_16
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    .line 1214
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private greylist-max-o getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 1473
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1474
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_11

    .line 1475
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1473
    :goto_11
    return-object v0
.end method

.method private greylist-max-o getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 5
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 2304
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2305
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2308
    :cond_d
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2309
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2311
    :cond_1a
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2312
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2314
    :cond_27
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2315
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2317
    :cond_34
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2318
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2320
    :cond_41
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2321
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2323
    :cond_4e
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2324
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2326
    :cond_5b
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2327
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2329
    :cond_68
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2330
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2333
    :cond_75
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    .line 2334
    .local v0, "isFixedLine":Z
    if-eqz v0, :cond_98

    .line 2335
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2336
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2337
    :cond_88
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2338
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2340
    :cond_95
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2344
    :cond_98
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 2345
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 2346
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2348
    :cond_ab
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1
.end method

.method private greylist-max-o getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
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

    .line 2475
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2476
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2479
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2480
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2481
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2482
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2483
    return-object v2

    .line 2485
    :cond_33
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_3c

    .line 2486
    return-object v2

    .line 2488
    .end local v2    # "regionCode":Ljava/lang/String;
    .end local v3    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3c
    goto :goto_8

    .line 2489
    :cond_3d
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getSupportedTypesForMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;
    .registers 8
    .param p1, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1155
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1156
    .local v0, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 1157
    .local v4, "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_25

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v5, :cond_18

    .line 1160
    goto :goto_25

    .line 1162
    :cond_18
    invoke-virtual {p0, p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-static {v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1163
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    .end local v4    # "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1166
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1810
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1811
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1812
    .local v1, "phoneNumberRegion":Ljava/lang/String;
    nop

    .line 1813
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1814
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 1815
    return v3

    .line 1817
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 1818
    .local v4, "nationalNumber":Ljava/lang/String;
    nop

    .line 1819
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1820
    .local v5, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v5, :cond_21

    const/4 v3, 0x1

    :cond_21
    return v3
.end method

.method private greylist-max-o hasValidCountryCallingCode(I)Z
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 1306
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3609
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3610
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3612
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3613
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    .line 3612
    :goto_20
    return v2
.end method

.method private blacklist isPhoneContextValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "phoneContext"    # Ljava/lang/String;

    .line 3465
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 3466
    return v0

    .line 3468
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3469
    return v2

    .line 3473
    :cond_c
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_GLOBAL_NUMBER_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 3474
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    move v0, v2

    goto :goto_28

    :cond_27
    :goto_27
    nop

    .line 3473
    :goto_28
    return v0
.end method

.method private greylist-max-o isValidRegionCode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 1299
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static greylist-max-o isViablePhoneNumber(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 814
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 815
    const/4 v0, 0x0

    return v0

    .line 817
    :cond_9
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 818
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .line 2245
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 2246
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_22

    .line 2247
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 2249
    :cond_22
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2250
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 2252
    :cond_38
    const-string v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    :cond_45
    :goto_45
    return-void
.end method

.method static greylist-max-o normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .line 838
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 839
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 840
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 842
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :goto_27
    return-object p0
.end method

.method public static blacklist normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 880
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "keepNonDigits"    # Z

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 860
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 861
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 862
    .local v2, "c":C
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 863
    .local v3, "digit":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 864
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 865
    :cond_21
    if-eqz p1, :cond_26

    .line 866
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    .end local v2    # "c":C
    .end local v3    # "digit":I
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 869
    .end local v1    # "i":I
    :cond_29
    return-object v0
.end method

.method public static blacklist normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 855
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 7
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1068
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1069
    .local v0, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1070
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1071
    .local v2, "character":C
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 1072
    .local v3, "newDigit":Ljava/lang/Character;
    if-eqz v3, :cond_28

    .line 1073
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1074
    :cond_28
    if-nez p2, :cond_2d

    .line 1075
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1069
    .end local v2    # "character":C
    .end local v3    # "newDigit":Ljava/lang/Character;
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1079
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 21
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3321
    move-object/from16 v1, p2

    move-object/from16 v7, p5

    if-eqz p1, :cond_148

    .line 3324
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_13e

    .line 3329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3330
    .local v3, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3331
    .local v8, "numberBeingParsed":Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3333
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 3340
    if-eqz p4, :cond_33

    invoke-direct {p0, v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_33

    .line 3341
    :cond_29
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "Missing or invalid default region."

    invoke-direct {v0, v2, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 3345
    :cond_33
    :goto_33
    if-eqz p3, :cond_38

    .line 3346
    invoke-virtual {v7, v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3350
    :cond_38
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 3351
    .local v9, "extension":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 3352
    invoke-virtual {v7, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3355
    :cond_45
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3358
    .local v4, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3359
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 3364
    .local v10, "countryCode":I
    move-object v2, p0

    move/from16 v6, p3

    :try_start_52
    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v0
    :try_end_56
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_52 .. :try_end_56} :catch_5a

    move-object v11, v3

    .line 3381
    .end local v3    # "nationalNumber":Ljava/lang/StringBuilder;
    .end local v10    # "countryCode":I
    .local v0, "countryCode":I
    .local v11, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v7, p5

    goto :goto_84

    .line 3366
    .end local v0    # "countryCode":I
    .end local v11    # "nationalNumber":Ljava/lang/StringBuilder;
    .restart local v3    # "nationalNumber":Ljava/lang/StringBuilder;
    .restart local v10    # "countryCode":I
    :catch_5a
    move-exception v0

    move-object v11, v3

    .line 3367
    .end local v3    # "nationalNumber":Ljava/lang/StringBuilder;
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .restart local v11    # "nationalNumber":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 3368
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_123

    .line 3369
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 3371
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v3

    .line 3374
    .end local v10    # "countryCode":I
    .local v3, "countryCode":I
    if-eqz v3, :cond_116

    move v0, v3

    .line 3382
    .end local v3    # "countryCode":I
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .local v0, "countryCode":I
    :goto_84
    if-eqz v0, :cond_95

    .line 3383
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 3384
    .local v3, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 3386
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3388
    .end local v3    # "phoneNumberRegion":Ljava/lang/String;
    :cond_94
    goto :goto_ab

    .line 3391
    :cond_95
    invoke-static {v11}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3392
    if-eqz v1, :cond_a6

    .line 3393
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    .line 3394
    invoke-virtual {v7, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_ab

    .line 3395
    :cond_a6
    if-eqz p3, :cond_ab

    .line 3396
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3399
    :cond_ab
    :goto_ab
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v6, "The string supplied is too short to be a phone number."

    const/4 v10, 0x2

    if-lt v3, v10, :cond_10e

    .line 3403
    if-eqz v4, :cond_e3

    .line 3404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3405
    .local v3, "carrierCode":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3406
    .local v12, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v12, v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3410
    invoke-direct {p0, v12, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v13

    .line 3411
    .local v13, "validationResult":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v13, v14, :cond_e3

    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v13, v14, :cond_e3

    sget-object v14, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v13, v14, :cond_e3

    .line 3414
    move-object v5, v12

    .line 3415
    if-eqz p3, :cond_e3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_e3

    .line 3416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3420
    .end local v3    # "carrierCode":Ljava/lang/StringBuilder;
    .end local v12    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v13    # "validationResult":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    :cond_e3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3421
    .local v3, "lengthOfNationalNumber":I
    if-lt v3, v10, :cond_106

    .line 3425
    const/16 v6, 0x11

    if-gt v3, v6, :cond_fc

    .line 3429
    invoke-static {v5, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3430
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3431
    return-void

    .line 3426
    :cond_fc
    new-instance v6, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v10, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v12, "The string supplied is too long to be a phone number."

    invoke-direct {v6, v10, v12}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v6

    .line 3422
    :cond_106
    new-instance v10, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v12, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {v10, v12, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v10

    .line 3400
    .end local v3    # "lengthOfNationalNumber":I
    :cond_10e
    new-instance v3, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v10, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {v3, v10, v6}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v3

    .line 3375
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .local v3, "countryCode":I
    .local v12, "matcher":Ljava/util/regex/Matcher;
    :cond_116
    new-instance v6, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v10, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v13, "Could not interpret numbers after plus-sign."

    invoke-direct {v6, v10, v13}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v6

    .line 3369
    .end local v3    # "countryCode":I
    .restart local v10    # "countryCode":I
    :cond_120
    move-object/from16 v7, p5

    goto :goto_125

    .line 3368
    :cond_123
    move-object/from16 v7, p5

    .line 3379
    :goto_125
    new-instance v3, Lcom/android/i18n/phonenumbers/NumberParseException;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v6, v13}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v3

    .line 3334
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v4    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v10    # "countryCode":I
    .end local v11    # "nationalNumber":Ljava/lang/StringBuilder;
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .local v3, "nationalNumber":Ljava/lang/StringBuilder;
    :cond_133
    move-object v11, v3

    .end local v3    # "nationalNumber":Ljava/lang/StringBuilder;
    .restart local v11    # "nationalNumber":Ljava/lang/StringBuilder;
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "The string supplied did not seem to be a phone number."

    invoke-direct {v0, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 3325
    .end local v8    # "numberBeingParsed":Ljava/lang/String;
    .end local v11    # "nationalNumber":Ljava/lang/StringBuilder;
    :cond_13e
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "The string supplied was too long to parse."

    invoke-direct {v0, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 3322
    :cond_148
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "The phone number supplied was null."

    invoke-direct {v0, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .line 3010
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3011
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 3012
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 3015
    .local v1, "matchEnd":I
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3016
    .local v3, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_31

    .line 3017
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 3018
    .local v4, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3019
    return v2

    .line 3022
    .end local v4    # "normalizedGroup":Ljava/lang/String;
    :cond_31
    invoke-virtual {p2, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3023
    return v5

    .line 3025
    .end local v1    # "matchEnd":I
    .end local v3    # "digitMatcher":Ljava/util/regex/Matcher;
    :cond_35
    return v2
.end method

.method private greylist-max-o prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .line 1967
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v0

    const/16 v1, 0x2b

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_36

    .line 1980
    :pswitch_a
    return-void

    .line 1975
    :pswitch_b
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1976
    const-string v1, "tel:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    return-void

    .line 1972
    :pswitch_1f
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1973
    return-void

    .line 1969
    :pswitch_2d
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1970
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_1f
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .line 1793
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1800
    nop

    .line 1801
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1800
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1
    :try_end_1c
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_c .. :try_end_1c} :catch_1d

    return v1

    .line 1802
    :catch_1d
    move-exception v1

    .line 1803
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v2

    .line 1806
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_1f
    return v2
.end method

.method static declared-synchronized greylist-max-o setInstance(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V
    .registers 2
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1088
    :try_start_3
    sput-object p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 1089
    monitor-exit v0

    return-void

    .line 1087
    .end local p0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method static greylist-max-o setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 6
    .param p0, "nationalNumber"    # Ljava/lang/CharSequence;
    .param p1, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3294
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_29

    .line 3295
    invoke-virtual {p1, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3296
    const/4 v0, 0x1

    .line 3299
    .local v0, "numberOfLeadingZeros":I
    :goto_14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_24

    .line 3300
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_24

    .line 3301
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 3303
    :cond_24
    if-eq v0, v1, :cond_29

    .line 3304
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3307
    .end local v0    # "numberOfLeadingZeros":I
    :cond_29
    return-void
.end method

.method private greylist-max-o testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 2657
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 11
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2666
    invoke-virtual {p0, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2673
    .local v0, "descForType":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2674
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2676
    .local v1, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1b
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v2

    .line 2678
    .local v2, "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, v3, :cond_7c

    .line 2679
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 2682
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v3

    return-object v3

    .line 2684
    :cond_36
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 2685
    .local v3, "mobileDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 2687
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v4

    .line 2691
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v4

    if-nez v4, :cond_57

    .line 2692
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v4

    goto :goto_5b

    .line 2693
    :cond_57
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v4

    .line 2691
    :goto_5b
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2696
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2698
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2699
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v2

    goto :goto_7c

    .line 2701
    :cond_6c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 2702
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2703
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2711
    .end local v3    # "mobileDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7c
    :goto_7c
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8d

    .line 2712
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v3

    .line 2715
    :cond_8d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2718
    .local v4, "actualLength":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 2719
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v3

    .line 2722
    :cond_9e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2723
    .local v3, "minimumLength":I
    if-ne v3, v4, :cond_ad

    .line 2724
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v5

    .line 2725
    :cond_ad
    if-le v3, v4, :cond_b2

    .line 2726
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v5

    .line 2727
    :cond_b2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_c7

    .line 2728
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v5

    .line 2731
    :cond_c7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 2732
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_de

    :cond_dc
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2731
    :goto_de
    return-object v5
.end method


# virtual methods
.method public blacklist canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3711
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3712
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 3715
    return v1

    .line 3717
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 3718
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    xor-int/2addr v1, v3

    return v1
.end method

.method greylist-max-o chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 8
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .line 2012
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 2013
    .local v1, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v2

    .line 2014
    .local v2, "size":I
    if-eqz v2, :cond_2c

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    add-int/lit8 v4, v2, -0x1

    .line 2016
    invoke-virtual {v1, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v4

    .line 2014
    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 2016
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2017
    :cond_2c
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2018
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2019
    return-object v1

    .line 2022
    .end local v1    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "size":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_41
    goto :goto_4

    .line 2023
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 9
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .line 2889
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_10

    goto :goto_3a

    .line 2894
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2895
    .local v0, "numberLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_15
    const/4 v3, 0x3

    if-gt v2, v3, :cond_39

    if-gt v2, v0, :cond_39

    .line 2896
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2897
    .local v3, "potentialCountryCode":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2898
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    return v3

    .line 2895
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2902
    .end local v2    # "i":I
    .end local v3    # "potentialCountryCode":I
    :cond_39
    return v1

    .line 2891
    .end local v0    # "numberLength":I
    :cond_3a
    :goto_3a
    return v1
.end method

.method public blacklist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3259
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "defaultRegion":Ljava/lang/String;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "defaultRegion":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public greylist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .registers 13
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
            "Ljava/lang/Iterable<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3280
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "defaultRegion":Ljava/lang/String;
    .end local p3    # "leniency":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .end local p4    # "maxTries":J
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "defaultRegion":Ljava/lang/String;
    .local v4, "leniency":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .local v5, "maxTries":J
    invoke-direct/range {v0 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method

.method public greylist format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1325
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 1329
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1330
    .local v0, "rawInput":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1a

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1331
    :cond_1a
    return-object v0

    .line 1334
    .end local v0    # "rawInput":Ljava/lang/String;
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1335
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1347
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1348
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1350
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v2, :cond_19

    .line 1353
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1356
    return-void

    .line 1358
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1359
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    return-void

    .line 1365
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, "regionCode":Ljava/lang/String;
    nop

    .line 1369
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1370
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v1, v3, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1372
    invoke-direct {p0, v0, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1373
    return-void
.end method

.method public blacklist formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1389
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1390
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1392
    return-object v1

    .line 1397
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "regionCode":Ljava/lang/String;
    nop

    .line 1400
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1402
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1404
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    nop

    .line 1405
    invoke-virtual {p0, p3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1406
    .local v5, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_2a

    .line 1408
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 1410
    :cond_2a
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v6

    .line 1414
    .local v6, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v6, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1415
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v7

    .line 1416
    .local v7, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5b

    .line 1417
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v8

    .line 1418
    .local v8, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_58

    .line 1420
    nop

    .line 1421
    const-string v9, "$NP"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1422
    const-string v9, "$FG"

    const-string v10, "$1"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1423
    invoke-virtual {v6, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_5b

    .line 1426
    :cond_58
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1429
    .end local v8    # "nationalPrefix":Ljava/lang/String;
    :cond_5b
    :goto_5b
    nop

    .line 1430
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v8

    invoke-virtual {p0, v1, v8, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1429
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .end local v6    # "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .end local v7    # "nationalPrefixFormattingRule":Ljava/lang/String;
    :goto_67
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1433
    invoke-direct {p0, v0, p2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public greylist formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .line 1695
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1698
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1700
    :cond_11
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1701
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1704
    :cond_1e
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_e6

    .line 1717
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1721
    .local v2, "nationalPrefix":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    .line 1722
    .local v3, "nationalFormat":Ljava/lang/String;
    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_64

    goto/16 :goto_c8

    .line 1712
    .end local v0    # "regionCode":Ljava/lang/String;
    .end local v2    # "nationalPrefix":Ljava/lang/String;
    .end local v3    # "nationalFormat":Ljava/lang/String;
    :pswitch_4a
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1713
    .local v0, "formattedNumber":Ljava/lang/String;
    goto/16 :goto_ca

    .line 1709
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1710
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_ca

    .line 1706
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :pswitch_5c
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_ca

    .line 1729
    .local v0, "regionCode":Ljava/lang/String;
    .restart local v2    # "nationalPrefix":Ljava/lang/String;
    .restart local v3    # "nationalFormat":Ljava/lang/String;
    :cond_64
    nop

    .line 1730
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v4

    .line 1729
    invoke-direct {p0, v4, v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1732
    move-object v1, v3

    .line 1733
    .local v1, "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1737
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_72
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 1738
    .local v4, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    .line 1739
    .local v5, "nationalNumber":Ljava/lang/String;
    nop

    .line 1740
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v6

    .line 1744
    .local v6, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v6, :cond_88

    .line 1745
    move-object v1, v3

    .line 1746
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1752
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_88
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v7

    .line 1754
    .local v7, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string v8, "$1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1755
    .local v8, "indexOfFirstGroup":I
    if-gtz v8, :cond_97

    .line 1756
    move-object v1, v3

    .line 1757
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1759
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_97
    nop

    .line 1760
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1761
    invoke-static {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1762
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_aa

    .line 1764
    move-object v1, v3

    .line 1765
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1768
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_aa
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v9

    .line 1769
    .local v9, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v9, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1770
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1771
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1772
    .local v10, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v1, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "formattedNumber":Ljava/lang/String;
    goto :goto_ca

    .line 1725
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v4    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "nationalNumber":Ljava/lang/String;
    .end local v6    # "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v7    # "candidateNationalPrefixRule":Ljava/lang/String;
    .end local v8    # "indexOfFirstGroup":I
    .end local v9    # "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .end local v10    # "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_c8
    :goto_c8
    move-object v1, v3

    .line 1726
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    .line 1776
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v2    # "nationalPrefix":Ljava/lang/String;
    .end local v3    # "nationalFormat":Ljava/lang/String;
    .local v0, "formattedNumber":Ljava/lang/String;
    :goto_ca
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "rawInput":Ljava/lang/String;
    if-eqz v0, :cond_e5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e5

    .line 1780
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1781
    .local v2, "normalizedFormattedNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1782
    .local v3, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e5

    .line 1783
    move-object v0, v1

    .line 1786
    .end local v2    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v3    # "normalizedRawInput":Ljava/lang/String;
    :cond_e5
    return-object v0

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_56
        :pswitch_4a
    .end packed-switch
.end method

.method public blacklist formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/CharSequence;

    .line 1449
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1450
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1451
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1452
    return-object v1

    .line 1458
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1462
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1463
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v3, v5, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v3, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1466
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1468
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public blacklist formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/CharSequence;

    .line 1497
    nop

    .line 1501
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1502
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 1503
    :cond_10
    move-object v0, p2

    .line 1497
    :goto_11
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 2030
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatNumberForMobileDialing(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .line 1520
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1521
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_17

    .line 1522
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    :cond_16
    return-object v2

    .line 1525
    :cond_17
    const-string v1, ""

    .line 1527
    .local v1, "formattedNumber":Ljava/lang/String;
    new-instance v3, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 1528
    .local v3, "numberNoExt":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1529
    .local v4, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    .line 1530
    .local v5, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_36

    move v6, v8

    goto :goto_37

    :cond_36
    move v6, v7

    .line 1531
    .local v6, "isValidNumber":Z
    :goto_37
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 1532
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v5, v9, :cond_49

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v5, v9, :cond_49

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v9, :cond_4a

    :cond_49
    move v7, v8

    .line 1536
    .local v7, "isFixedLineOrMobile":Z
    :cond_4a
    const-string v9, "BR"

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    if-eqz v7, :cond_67

    .line 1540
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_64

    .line 1541
    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_65

    .line 1545
    :cond_64
    nop

    :goto_65
    move-object v1, v2

    .end local v1    # "formattedNumber":Ljava/lang/String;
    .local v2, "formattedNumber":Ljava/lang/String;
    goto :goto_c2

    .line 1546
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    :cond_67
    if-ne v0, v8, :cond_8d

    .line 1550
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1551
    .local v2, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 1552
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v8, v9, :cond_86

    .line 1554
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    .line 1556
    :cond_86
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1558
    .end local v2    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :goto_8c
    goto :goto_c2

    .line 1562
    :cond_8d
    const-string v2, "001"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 1576
    const-string v2, "MX"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, "CL"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 1577
    const-string v2, "UZ"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    :cond_ad
    if-eqz v7, :cond_bc

    .line 1578
    :cond_af
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 1579
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c2

    .line 1581
    :cond_bc
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1584
    .end local v7    # "isFixedLineOrMobile":Z
    :cond_c2
    :goto_c2
    goto :goto_db

    :cond_c3
    if-eqz v6, :cond_c2

    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 1588
    if-eqz p3, :cond_d4

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_da

    .line 1589
    :cond_d4
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 1588
    :goto_da
    return-object v2

    .line 1591
    :goto_db
    if-eqz p3, :cond_df

    move-object v2, v1

    goto :goto_e3

    .line 1592
    :cond_df
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1591
    :goto_e3
    return-object v2
.end method

.method public blacklist formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .line 1614
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1615
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to format number from invalid region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". International formatting applied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1619
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1621
    :cond_2d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1622
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1623
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1624
    return-object v1

    .line 1626
    :cond_3c
    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v2, :cond_63

    .line 1627
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1632
    :cond_63
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_70

    .line 1639
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1642
    :cond_70
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1643
    .local v2, "metadataForRegionCallingFrom":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1648
    .local v4, "internationalPrefix":Ljava/lang/String;
    const-string v5, ""

    .line 1649
    .local v5, "internationalPrefixForFormatting":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1650
    nop

    .line 1651
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v5

    goto :goto_93

    .line 1652
    :cond_86
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1653
    move-object v5, v4

    .line 1656
    :cond_93
    :goto_93
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 1658
    .local v6, "regionCode":Ljava/lang/String;
    nop

    .line 1659
    invoke-direct {p0, v0, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1660
    .local v7, "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1661
    invoke-direct {p0, v1, v7, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1662
    .local v8, "formattedNationalNumber":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v9, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v7, v10, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1665
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c3

    .line 1666
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1667
    invoke-virtual {v3, v10, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 1669
    :cond_c3
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v3, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1673
    :goto_c8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public blacklist formatOutOfCountryKeepingAlphaChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .line 1849
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "rawInput":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1853
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1855
    :cond_f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1856
    .local v1, "countryCode":I
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1857
    return-object v0

    .line 1863
    :cond_1a
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 1868
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_3c

    .line 1870
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1871
    .local v4, "firstNationalNumberDigit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    .line 1872
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1875
    .end local v4    # "firstNationalNumberDigit":I
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 1876
    .local v4, "metadataForRegionCallingFrom":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v5, " "

    if-ne v1, v3, :cond_60

    .line 1877
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1880
    :cond_60
    if-eqz v4, :cond_90

    .line 1881
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_90

    .line 1882
    nop

    .line 1883
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v3

    .line 1885
    .local v3, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v3, :cond_74

    .line 1887
    return-object v0

    .line 1889
    :cond_74
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v5

    .line 1890
    .local v5, "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v5, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1892
    const-string v6, "(\\d+)(.*)"

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1894
    const-string v6, "$1$2"

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1900
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1902
    .end local v3    # "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v5    # "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    :cond_90
    const-string v3, ""

    .line 1906
    .local v3, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v4, :cond_ab

    .line 1907
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 1909
    .local v7, "internationalPrefix":Ljava/lang/String;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 1910
    move-object v8, v7

    goto :goto_aa

    .line 1911
    :cond_a6
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v8

    :goto_aa
    move-object v3, v8

    .line 1913
    .end local v7    # "internationalPrefix":Ljava/lang/String;
    :cond_ab
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v7, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1916
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1918
    .local v9, "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1920
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v9, v10, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1922
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d6

    .line 1923
    invoke-virtual {v7, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1924
    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 1928
    :cond_d6
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fc

    .line 1929
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying to format number from invalid region "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". International formatting applied."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1934
    :cond_fc
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v5, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1938
    :goto_101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public greylist getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2881
    new-instance v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getCountryCodeForRegion(Ljava/lang/String;)I
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2525
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2526
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2528
    if-nez p1, :cond_1a

    const-string v3, "null"

    goto :goto_1b

    :cond_1a
    move-object v3, p1

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2526
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2530
    const/4 v0, 0x0

    return v0

    .line 2532
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2088
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExampleNumberForNonGeoEntity(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "countryCallingCode"    # I

    .line 2214
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2215
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_88

    .line 2220
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2221
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2222
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2220
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 2224
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    if-eqz v2, :cond_85

    :try_start_50
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1
    :try_end_77
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_50 .. :try_end_77} :catch_78

    return-object v1

    .line 2227
    :catch_78
    move-exception v3

    .line 2228
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_86

    .line 2229
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_85
    nop

    .line 2230
    .end local v2    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_86
    goto :goto_42

    :cond_87
    goto :goto_a2

    .line 2232
    :cond_88
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown country calling code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2235
    :goto_a2
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getExampleNumberForType(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2183
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2184
    .local v1, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2185
    .local v2, "exampleNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v2, :cond_1b

    .line 2186
    return-object v2

    .line 2188
    .end local v1    # "regionCode":Ljava/lang/String;
    .end local v2    # "exampleNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1b
    goto :goto_8

    .line 2190
    :cond_1c
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2191
    .local v1, "countryCallingCode":I
    nop

    .line 2192
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2191
    invoke-virtual {p0, v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 2194
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_3d
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_64
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_3d .. :try_end_64} :catch_66

    return-object v0

    .line 2199
    :cond_65
    goto :goto_72

    .line 2197
    :catch_66
    move-exception v3

    .line 2198
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2200
    .end local v1    # "countryCallingCode":I
    .end local v2    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_72
    goto :goto_24

    .line 2202
    :cond_73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2159
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 2160
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2161
    return-object v1

    .line 2163
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2165
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_2a
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2166
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1
    :try_end_38
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2a .. :try_end_38} :catch_3a

    return-object v1

    .line 2170
    :cond_39
    goto :goto_46

    .line 2168
    :catch_3a
    move-exception v2

    .line 2169
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2171
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_46
    return-object v1
.end method

.method public blacklist getInvalidExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2103
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 2104
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2105
    return-object v1

    .line 2111
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2113
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-nez v2, :cond_33

    .line 2115
    return-object v1

    .line 2117
    :cond_33
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    .line 2129
    .local v2, "exampleNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2130
    .local v3, "phoneNumberLength":I
    :goto_3d
    const/4 v4, 0x2

    if-lt v3, v4, :cond_55

    .line 2132
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2134
    .local v4, "numberToTry":Ljava/lang/String;
    :try_start_45
    invoke-virtual {p0, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 2135
    .local v5, "possiblyValidNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v6
    :try_end_4d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_45 .. :try_end_4d} :catch_51

    if-nez v6, :cond_50

    .line 2136
    return-object v5

    .line 2141
    .end local v5    # "possiblyValidNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_50
    goto :goto_52

    .line 2138
    :catch_51
    move-exception v5

    .line 2131
    .end local v4    # "numberToTry":Ljava/lang/String;
    :goto_52
    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 2144
    .end local v3    # "phoneNumberLength":I
    :cond_55
    return-object v1
.end method

.method public blacklist getLengthOfGeographicalAreaCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 934
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 935
    return v1

    .line 938
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    .line 939
    .local v2, "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 944
    .local v3, "countryCallingCode":I
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v4

    if-nez v4, :cond_2d

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->COUNTRIES_WITHOUT_NATIONAL_PREFIX_WITH_AREA_CODES:Ljava/util/Set;

    .line 945
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 946
    return v1

    .line 949
    :cond_2d
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v4, :cond_3e

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 953
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 954
    return v1

    .line 957
    :cond_3e
    invoke-virtual {p0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v4

    if-nez v4, :cond_45

    .line 958
    return v1

    .line 961
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    return v1
.end method

.method public blacklist getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1004
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1007
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 1008
    .local v0, "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1009
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_13

    .line 1011
    .end local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_12
    move-object v0, p1

    .line 1014
    .restart local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_13
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "numberGroups":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-gt v3, v4, :cond_25

    .line 1021
    const/4 v3, 0x0

    return v3

    .line 1024
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v6, 0x2

    if-ne v3, v5, :cond_4c

    .line 1030
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, "mobileToken":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1032
    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    return v5

    .line 1035
    .end local v3    # "mobileToken":Ljava/lang/String;
    :cond_4c
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    return v3
.end method

.method greylist-max-o getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "countryCallingCode"    # I

    .line 2374
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2375
    const/4 v0, 0x0

    return-object v0

    .line 2377
    :cond_e
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2379
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing metadata for country code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ensureMetadataIsNonNull(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)V

    .line 2381
    return-object v0
.end method

.method greylist-max-o getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2358
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2359
    const/4 v0, 0x0

    return-object v0

    .line 2361
    :cond_8
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;

    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/metadata/source/MetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2362
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing metadata for region code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ensureMetadataIsNonNull(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)V

    .line 2363
    return-object v0
.end method

.method public greylist getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1952
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    if-lez v1, :cond_24

    .line 1953
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 1954
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1955
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    .end local v1    # "zeros":[C
    :cond_24
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1958
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .line 2566
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2567
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 2568
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing region code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2570
    if-nez p1, :cond_1b

    const-string v5, "null"

    goto :goto_1c

    :cond_1b
    move-object v5, p1

    :goto_1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") provided."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2568
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2572
    return-object v1

    .line 2574
    :cond_2e
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 2576
    .local v2, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_39

    .line 2577
    return-object v1

    .line 2579
    :cond_39
    if-eqz p2, :cond_43

    .line 2582
    const-string v1, "~"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2584
    :cond_43
    return-object v2
.end method

.method greylist-max-o getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 4
    .param p1, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2259
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 2282
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2280
    :pswitch_c
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2278
    :pswitch_11
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2276
    :pswitch_16
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2274
    :pswitch_1b
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2272
    :pswitch_20
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2270
    :pswitch_25
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2261
    :pswitch_2a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2263
    :pswitch_2f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2265
    :pswitch_34
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2268
    :pswitch_39
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_34
        :pswitch_39
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public greylist getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2294
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2295
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2296
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_11

    .line 2297
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 2299
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2300
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    return-object v3
.end method

.method public blacklist getRegionCodeForCountryCode(I)Ljava/lang/String;
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 2501
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2502
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_11

    const-string v1, "ZZ"

    goto :goto_18

    :cond_11
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_18
    return-object v1
.end method

.method public greylist getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2460
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2461
    .local v0, "countryCode":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2462
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_34

    .line 2463
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing/invalid country_code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2464
    const/4 v2, 0x0

    return-object v2

    .line 2466
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 2467
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 2469
    :cond_43
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
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

    .line 2511
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2512
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_16

    .line 2513
    :cond_15
    move-object v1, v0

    .line 2512
    :goto_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getSupportedCallingCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedRegions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedTypesForNonGeoEntity(I)Ljava/util/Set;
    .registers 7
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1196
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_2a

    .line 1197
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown country calling code for a non-geographical entity provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1199
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1201
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getSupportedTypesForRegion(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1178
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or unknown region code provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1181
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1182
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist isAlphaNumber(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 2607
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2609
    const/4 v0, 0x0

    return v0

    .line 2611
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2612
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2613
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public blacklist isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .registers 7
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 3729
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3730
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_22

    .line 3731
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3732
    const/4 v1, 0x0

    return v1

    .line 3734
    :cond_22
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result v1

    return v1
.end method

.method public blacklist isNANPACountry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2593
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z
    .registers 5
    .param p1, "phoneNumberType"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .param p2, "countryCallingCode"    # I

    .line 1289
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 1291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 1289
    :goto_1c
    return v0
.end method

.method public blacklist isNumberGeographical(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v0

    return v0
.end method

.method public greylist isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 8
    .param p1, "firstNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3570
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3571
    .local v0, "firstNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3573
    .local v1, "secondNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3574
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3575
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v2

    .line 3577
    :cond_25
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 3578
    .local v2, "firstNumberCountryCode":I
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 3580
    .local v3, "secondNumberCountryCode":I
    if-eqz v2, :cond_48

    if-eqz v3, :cond_48

    .line 3581
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 3582
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3583
    :cond_3a
    if-ne v2, v3, :cond_45

    .line 3584
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3588
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3591
    :cond_45
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3595
    :cond_48
    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3597
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3598
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3600
    :cond_54
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 3601
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3603
    :cond_5d
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4
.end method

.method public blacklist isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 13
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/CharSequence;

    .line 3669
    const-string v1, "ZZ"

    :try_start_2
    invoke-virtual {p0, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3670
    .local v0, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v1
    :try_end_a
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v1

    .line 3671
    .end local v0    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_b
    move-exception v0

    move-object v2, v0

    .line 3672
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v3, :cond_50

    .line 3676
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 3678
    .local v3, "firstNumberRegion":Ljava/lang/String;
    :try_start_1d
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_21
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1d .. :try_end_21} :catch_4c

    if-nez v0, :cond_37

    .line 3679
    :try_start_23
    invoke-virtual {p0, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3680
    .local v0, "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v1

    .line 3681
    .local v1, "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v1, v4, :cond_32

    .line 3682
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_31
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_23 .. :try_end_31} :catch_33

    return-object v4

    .line 3684
    :cond_32
    return-object v1

    .line 3692
    .end local v0    # "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v1    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :catch_33
    move-exception v0

    move-object v4, p0

    move-object v5, p2

    goto :goto_52

    .line 3688
    :cond_37
    :try_start_37
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V
    :try_end_3c
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_37 .. :try_end_3c} :catch_4c

    move-object v9, v0

    .line 3689
    .local v9, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p2

    .end local p2    # "secondNumber":Ljava/lang/CharSequence;
    .local v5, "secondNumber":Ljava/lang/CharSequence;
    :try_start_42
    invoke-direct/range {v4 .. v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3690
    invoke-virtual {p0, p1, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p2
    :try_end_49
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_42 .. :try_end_49} :catch_4a

    return-object p2

    .line 3692
    .end local v9    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_4a
    move-exception v0

    goto :goto_52

    .end local v5    # "secondNumber":Ljava/lang/CharSequence;
    .restart local p2    # "secondNumber":Ljava/lang/CharSequence;
    :catch_4c
    move-exception v0

    move-object v4, p0

    move-object v5, p2

    .end local p2    # "secondNumber":Ljava/lang/CharSequence;
    .restart local v5    # "secondNumber":Ljava/lang/CharSequence;
    goto :goto_52

    .line 3672
    .end local v3    # "firstNumberRegion":Ljava/lang/String;
    .end local v5    # "secondNumber":Ljava/lang/CharSequence;
    .restart local p2    # "secondNumber":Ljava/lang/CharSequence;
    :cond_50
    move-object v4, p0

    move-object v5, p2

    .line 3698
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local p2    # "secondNumber":Ljava/lang/CharSequence;
    .restart local v5    # "secondNumber":Ljava/lang/CharSequence;
    :goto_52
    sget-object p2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p2
.end method

.method public blacklist isNumberMatch(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 13
    .param p1, "firstNumber"    # Ljava/lang/CharSequence;
    .param p2, "secondNumber"    # Ljava/lang/CharSequence;

    .line 3629
    const-string v3, "ZZ"

    :try_start_2
    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3630
    .local v0, "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3
    :try_end_a
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v3

    .line 3631
    .end local v0    # "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_b
    move-exception v0

    move-object v7, v0

    .line 3632
    .local v7, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v4, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v4, :cond_4a

    .line 3634
    :try_start_15
    invoke-virtual {p0, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3635
    .local v0, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3
    :try_end_1d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-object v3

    .line 3636
    .end local v0    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1e
    move-exception v0

    move-object v8, v0

    .line 3637
    .local v8, "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v3, :cond_4a

    .line 3639
    :try_start_28
    new-instance v6, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3640
    .local v6, "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3641
    .local v0, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    move-object v9, v6

    .line 3642
    .end local v6    # "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v9, "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, v0

    .end local v0    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v6, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-direct/range {v1 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3643
    invoke-virtual {p0, v9, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0
    :try_end_48
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_28 .. :try_end_48} :catch_49

    return-object v0

    .line 3644
    .end local v6    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v9    # "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_49
    move-exception v0

    .line 3652
    .end local v7    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v8    # "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_4a
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method greylist-max-o isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 7
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 2394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2395
    .local v0, "actualLength":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2396
    .local v1, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2397
    return v3

    .line 2399
    :cond_1a
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v2, p1, p2, v3}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v2

    return v2
.end method

.method public greylist isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2629
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    .line 2630
    .local v0, "result":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public blacklist isPossibleNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 2840
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0
    :try_end_8
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2841
    :catch_9
    move-exception v0

    .line 2842
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isPossibleNumberForType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2647
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    .line 2648
    .local v0, "result":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public blacklist isPossibleNumberForTypeWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2802
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2803
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2810
    .local v1, "countryCode":I
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2811
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v2

    .line 2813
    :cond_11
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 2815
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2816
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v0, v3, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    return-object v4
.end method

.method public greylist isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 3
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2765
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2415
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2416
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 2436
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2437
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2438
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2439
    const-string v3, "001"

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2440
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v3, :cond_1a

    goto :goto_28

    .line 2445
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2446
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_27

    const/4 v2, 0x1

    :cond_27
    return v2

    .line 2443
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_28
    :goto_28
    return v2
.end method

.method greylist-max-o maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 22
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegionMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 2941
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_10

    .line 2942
    return v5

    .line 2944
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2946
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 2947
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 2948
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2951
    :cond_1f
    nop

    .line 2952
    invoke-virtual {v0, v4, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    .line 2953
    .local v8, "countryCodeSource":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_29

    .line 2954
    invoke-virtual {v3, v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2956
    :cond_29
    sget-object v9, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v8, v9, :cond_52

    .line 2957
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v9, 0x2

    if-le v5, v9, :cond_48

    .line 2962
    invoke-virtual {v0, v4, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v5

    .line 2963
    .local v5, "potentialCountryCode":I
    if-eqz v5, :cond_3e

    .line 2964
    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2965
    return v5

    .line 2970
    :cond_3e
    new-instance v9, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v10, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v11, "Country calling code supplied was not recognised."

    invoke-direct {v9, v10, v11}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v9

    .line 2958
    .end local v5    # "potentialCountryCode":I
    :cond_48
    new-instance v5, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v9, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v10, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v5, v9, v10}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v5

    .line 2972
    :cond_52
    if-eqz v1, :cond_a1

    .line 2976
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 2977
    .local v9, "defaultCountryCode":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 2978
    .local v10, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2979
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 2980
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2981
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2982
    .local v12, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v13

    .line 2983
    .local v13, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    const/4 v14, 0x0

    invoke-virtual {v0, v12, v1, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2988
    iget-object v14, v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v14, v4, v13, v5}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v14

    if-nez v14, :cond_8b

    iget-object v14, v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 2989
    invoke-interface {v14, v12, v13, v5}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v14

    if-nez v14, :cond_93

    .line 2990
    :cond_8b
    invoke-direct {v0, v4, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v14

    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v14, v15, :cond_a1

    .line 2991
    :cond_93
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2992
    if-eqz p4, :cond_9d

    .line 2993
    sget-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2995
    :cond_9d
    invoke-virtual {v3, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2996
    return v9

    .line 3001
    .end local v9    # "defaultCountryCode":I
    .end local v10    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v11    # "normalizedNumber":Ljava/lang/String;
    .end local v12    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v13    # "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a1
    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3002
    return v5
.end method

.method greylist-max-o maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .line 3133
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3136
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3138
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_20
    if-gt v1, v2, :cond_3b

    .line 3139
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 3142
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3143
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3144
    return-object v3

    .line 3138
    .end local v3    # "extension":Ljava/lang/String;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3148
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3b
    const-string v1, ""

    return-object v1
.end method

.method greylist-max-o maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 6
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .line 3044
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 3045
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v0

    .line 3048
    :cond_9
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3049
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3050
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3052
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 3053
    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v1

    .line 3056
    :cond_23
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1, p2}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3057
    .local v1, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 3058
    invoke-direct {p0, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3059
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_37

    .line 3060
    :cond_35
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 3058
    :goto_37
    return-object v2
.end method

.method greylist-max-o maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .registers 16
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .line 3075
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 3076
    .local v0, "numberLength":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v1

    .line 3077
    .local v1, "possibleNationalPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_a4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_a4

    .line 3082
    :cond_13
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v3, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3083
    .local v3, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 3084
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    .line 3086
    .local v4, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v5, p1, v4, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v5

    .line 3090
    .local v5, "isViableOriginalNumber":Z
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    .line 3091
    .local v6, "numOfGroups":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v7

    .line 3092
    .local v7, "transformRule":Ljava/lang/String;
    const/4 v8, 0x1

    if-eqz v7, :cond_77

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_77

    .line 3093
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_45

    goto :goto_77

    .line 3108
    :cond_45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3109
    .local v9, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v0, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    if-eqz v5, :cond_60

    iget-object v10, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 3111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v10

    if-nez v10, :cond_60

    .line 3112
    return v2

    .line 3114
    :cond_60
    if-eqz p3, :cond_6b

    if-le v6, v8, :cond_6b

    .line 3115
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    :cond_6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v2, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    return v8

    .line 3095
    .end local v9    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_77
    :goto_77
    if-eqz v5, :cond_8a

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 3097
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3096
    invoke-interface {v9, v10, v4, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v9

    if-nez v9, :cond_8a

    .line 3098
    return v2

    .line 3100
    :cond_8a
    if-eqz p3, :cond_9b

    if-lez v6, :cond_9b

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9b

    .line 3101
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    :cond_9b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p1, v2, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3104
    return v8

    .line 3121
    .end local v4    # "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v5    # "isViableOriginalNumber":Z
    .end local v6    # "numOfGroups":I
    .end local v7    # "transformRule":Ljava/lang/String;
    :cond_a3
    return v2

    .line 3079
    .end local v3    # "prefixMatcher":Ljava/util/regex/Matcher;
    :cond_a4
    :goto_a4
    return v2
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3202
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3203
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3204
    return-object v0
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3213
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "numberToParse":Ljava/lang/CharSequence;
    .end local p2    # "defaultRegion":Ljava/lang/String;
    .end local p3    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v1, "numberToParse":Ljava/lang/CharSequence;
    .local v2, "defaultRegion":Ljava/lang/String;
    .local v5, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3214
    return-void
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3232
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3233
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3234
    return-object v0
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3244
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "numberToParse":Ljava/lang/CharSequence;
    .end local p2    # "defaultRegion":Ljava/lang/String;
    .end local p3    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v1, "numberToParse":Ljava/lang/CharSequence;
    .local v2, "defaultRegion":Ljava/lang/String;
    .local v5, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3245
    return-void
.end method

.method public blacklist truncateTooLongNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2854
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2855
    return v1

    .line 2857
    :cond_8
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2858
    .local v0, "numberCopy":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2859
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    .line 2861
    .local v2, "nationalNumber":J
    :cond_14
    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    .line 2862
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2863
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_33

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_29

    goto :goto_33

    .line 2867
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2868
    invoke-virtual {p1, v2, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2869
    return v1

    .line 2865
    :cond_33
    :goto_33
    const/4 v1, 0x0

    return v1
.end method
