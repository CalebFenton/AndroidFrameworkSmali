.class public Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    }
.end annotation


# static fields
.field private static final blacklist ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
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

.field private static final blacklist ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist COUNTRIES_WITHOUT_NATIONAL_PREFIX_WITH_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final blacklist EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final blacklist FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final blacklist RFC3966_DOMAINLABEL:Ljava/lang/String;

.field private static final blacklist RFC3966_DOMAINNAME:Ljava/lang/String;

.field static final blacklist RFC3966_DOMAINNAME_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist RFC3966_GLOBAL_NUMBER_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist RFC3966_TOPLABEL:Ljava/lang/String;

.field static final blacklist SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field static final blacklist UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_ALPHA:Ljava/lang/String;

.field private static final blacklist VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final blacklist VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static blacklist instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

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

.field private final blacklist countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

.field private final blacklist metadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

.field private final blacklist nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

.field private final blacklist supportedRegions:Ljava/util/Set;
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
    .registers 13

    .line 58
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x36

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 125
    const-string v3, "9"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x56

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 133
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x34

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 153
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 134
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->COUNTRIES_WITHOUT_NATIONAL_PREFIX_WITH_AREA_CODES:Ljava/util/Set;

    .line 138
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 139
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x37

    .line 156
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3e

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x30

    .line 149
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x31

    .line 150
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x32

    .line 151
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x33

    .line 152
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x35

    .line 154
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x38

    .line 157
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x39

    .line 158
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0x28

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    const/16 v11, 0x41

    .line 161
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x42

    .line 162
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x43

    .line 163
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x44

    .line 164
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x45

    .line 165
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x46

    .line 166
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x47

    .line 167
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x48

    .line 168
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x49

    .line 169
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4a

    .line 170
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4b

    .line 171
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4c

    .line 172
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4d

    .line 173
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4e

    .line 174
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4f

    .line 175
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    .line 176
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 177
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    .line 178
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 179
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x54

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55

    .line 181
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57

    .line 183
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x58

    .line 184
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x59

    .line 185
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 186
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 189
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 190
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 191
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 192
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v3, 0x2b

    .line 196
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2a

    .line 197
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x23

    .line 198
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_207
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_226

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 204
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_207

    .line 207
    :cond_226
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x2d

    .line 209
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0d

    .line 210
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2010

    .line 211
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2011

    .line 212
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2012

    .line 213
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2013

    .line 214
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2014

    .line 215
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2015

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2212

    .line 217
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 218
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0f

    .line 219
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 220
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3000

    .line 221
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2060

    .line 222
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 223
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0e

    .line 224
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 234
    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 249
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[, \\[\\]]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 253
    const-string v1, "[+\uff0b]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 254
    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 255
    const-string v1, "(\\p{Nd})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 264
    const-string v1, "[+\uff0b\\p{Nd}]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 272
    const-string v1, "[\\\\/] *x"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 278
    const-string v1, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 282
    const-string v1, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\p{Nd}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    const/4 v3, 0x1

    .line 314
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    const/4 v4, 0x0

    .line 315
    invoke-static {v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 324
    const-string v4, "^\\+(\\p{Nd}|[\\-\\.\\(\\)]?)*\\p{Nd}(\\p{Nd}|[\\-\\.\\(\\)]?)*$"

    .line 325
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_GLOBAL_NUMBER_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHANUM:Ljava/lang/String;

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]+((\\-)*["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "])*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINLABEL:Ljava/lang/String;

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]+((\\-)*["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "])*"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_TOPLABEL:Ljava/lang/String;

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\.)*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\.?$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME:Ljava/lang/String;

    .line 336
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 436
    const-string v0, "(\\D+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 442
    const-string v0, "(\\$\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 452
    const-string v0, "\\(?\\$1\\)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 454
    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 688
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 693
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 698
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 702
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 710
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

    .line 711
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 712
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "001"

    const/4 v2, 0x1

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 713
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 716
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_69

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 721
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 727
    :cond_6f
    iget-object p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 728
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 731
    :cond_80
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3438
    const-string v0, ";phone-context="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3440
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractPhoneContext(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3441
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPhoneContextValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    if-eqz v1, :cond_30

    const/4 p0, 0x0

    .line 3448
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1e

    .line 3452
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3459
    :cond_1e
    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_28

    add-int/lit8 p0, v1, 0x4

    .line 3462
    :cond_28
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3466
    :cond_30
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3471
    :goto_37
    const-string p0, ";isub="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_46

    .line 3473
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_46
    return-void

    .line 3442
    :cond_47
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The phone-context value is invalid."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    .line 3113
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    if-eqz p1, :cond_1a

    .line 3115
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 3116
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p0

    if-nez p0, :cond_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist convertAlphaCharactersInNumber(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 855
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist copyCoreFieldsOnly(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4

    .line 3487
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3488
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3489
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3490
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 3491
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3493
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    .line 3494
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3496
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_35
    return-object v0
.end method

.method private static blacklist createExtnPattern(Z)Ljava/lang/String;
    .registers 9

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ \u00a0\\t,]*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 383
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[- ]+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_f1

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ \u00a0\\t]*"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(?:,{2}|;)"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xf

    .line 411
    invoke-static {v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(?:,)+"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f1
    return-object v2
.end method

.method public static blacklist createInstance(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    .registers 4

    if-eqz p0, :cond_1c

    .line 1205
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSourceImpl;

    .line 1206
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getPhoneNumberMetadataFileNameProvider()Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;

    move-result-object v1

    .line 1208
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getMetadataParser()Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;Lcom/android/internal/telephony/phonenumbers/metadata/init/MetadataParser;)V

    .line 1205
    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object p0

    return-object p0

    .line 1203
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataLoader could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist createInstance(Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    .registers 3

    if-eqz p0, :cond_c

    .line 1228
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    .line 1229
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;-><init>(Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;Ljava/util/Map;)V

    return-object v0

    .line 1226
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataSource could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist descHasData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 2

    .line 1112
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1113
    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 4

    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_10

    goto :goto_11

    :cond_10
    return v0

    :cond_11
    :goto_11
    return v1
.end method

.method private static blacklist ensureMetadataIsNonNull(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 2348
    :cond_3
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/MissingMetadataException;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/MissingMetadataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist extnDigits(I)Ljava/lang/String;
    .registers 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\p{Nd}{1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist extractPhoneContext(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 p0, -0x1

    if-ne p2, p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    add-int/lit8 p2, p2, 0xf

    .line 3403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_10

    .line 3404
    const-string p0, ""

    return-object p0

    :cond_10
    const/16 v0, 0x3b

    .line 3407
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, p0, :cond_1d

    .line 3410
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3412
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 750
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 752
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 754
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 756
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 759
    :cond_2d
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 761
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_41
    return-object p0

    .line 765
    :cond_42
    const-string p0, ""

    return-object p0
.end method

.method private blacklist formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1949
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    .line 1960
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    .line 1964
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_f

    goto :goto_14

    .line 1966
    :cond_f
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object p2

    goto :goto_18

    .line 1965
    :cond_14
    :goto_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p2

    .line 1967
    :goto_18
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p2

    if-nez p2, :cond_1f

    return-object p1

    .line 1970
    :cond_1f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .line 2002
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 2003
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 2004
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2006
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, p1, :cond_41

    if-eqz p4, :cond_41

    .line 2007
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 2008
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 2010
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object p1

    .line 2011
    const-string p2, "$CC"

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2014
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 2015
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2016
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_62

    .line 2019
    :cond_41
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object p2

    if-ne p3, p1, :cond_5e

    if-eqz p2, :cond_5e

    .line 2022
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5e

    .line 2023
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2025
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_62

    .line 2027
    :cond_5e
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2030
    :goto_62
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, p1, :cond_82

    .line 2032
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2033
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 2034
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2037
    :cond_78
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_82
    return-object p0
.end method

.method static blacklist formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .registers 2

    .line 1237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1238
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getCountryCodeForValidRegion(Ljava/lang/String;)I
    .registers 4

    .line 2503
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2507
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p0

    return p0

    .line 2505
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid region code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getCountryMobileToken(I)Ljava/lang/String;
    .registers 3

    .line 1014
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1015
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1017
    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1181
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    if-nez v1, :cond_19

    .line 1182
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getInstance()Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;

    move-result-object v1

    .line 1183
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/metadata/DefaultMetadataDependenciesProvider;->getMetadataLoader()Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    move-result-object v1

    .line 1184
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)V

    goto :goto_19

    :catchall_17
    move-exception v1

    goto :goto_1d

    .line 1186
    :cond_19
    :goto_19
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_17

    monitor-exit v0

    return-object v1

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_17

    throw v1
.end method

.method private blacklist getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 1438
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1439
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0

    .line 1440
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 4

    .line 2266
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2267
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2270
    :cond_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2271
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2273
    :cond_1a
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2274
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2276
    :cond_27
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2277
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2279
    :cond_34
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2280
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2282
    :cond_41
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2283
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2285
    :cond_4e
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2286
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2288
    :cond_5b
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2289
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2291
    :cond_68
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2292
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2295
    :cond_75
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 2297
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2298
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2299
    :cond_88
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_95

    .line 2300
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2302
    :cond_95
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2306
    :cond_98
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 2307
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_ab

    .line 2308
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2310
    :cond_ab
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0
.end method

.method private blacklist getRegionCodeForNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
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

    .line 2435
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2436
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2439
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2440
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2441
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2442
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3b

    .line 2445
    :cond_33
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v1, v2, :cond_8

    :goto_3b
    return-object v0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSupportedTypesForMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1122
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1123
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 1124
    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_25

    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v5, :cond_18

    goto :goto_25

    .line 1129
    :cond_18
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1130
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1133
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasFormattingPatternForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4

    .line 1774
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1775
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1777
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 1781
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 1783
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v1
.end method

.method private blacklist hasValidCountryCallingCode(I)Z
    .registers 2

    .line 1272
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNationalNumberSuffixOfTheOther(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 3563
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 3564
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3566
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 3567
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isPhoneContextValid(Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x1

    if-nez p1, :cond_4

    return p0

    .line 3423
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 3428
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_GLOBAL_NUMBER_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->RFC3966_DOMAINNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 3429
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    return v1

    :cond_26
    :goto_26
    return p0
.end method

.method private blacklist isValidRegionCode(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 1265
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist isViablePhoneNumber(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 781
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 784
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 785
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private blacklist maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 2208
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result p0

    if-eqz p0, :cond_42

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_42

    .line 2209
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, p0, :cond_21

    .line 2210
    const-string p0, ";ext="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 2212
    :cond_21
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result p0

    if-eqz p0, :cond_36

    .line 2213
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 2215
    :cond_36
    const-string p0, " ext. "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    return-void
.end method

.method static blacklist normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    .line 805
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 807
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 809
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static blacklist normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 847
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .registers 7

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 827
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 828
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 829
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 831
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_21
    if-eqz p1, :cond_26

    .line 833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_29
    return-object v0
.end method

.method public static blacklist normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 822
    invoke-static {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 7
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

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1036
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1037
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1038
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_28

    .line 1040
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_28
    if-nez p2, :cond_2d

    .line 1042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1046
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    if-eqz p1, :cond_13e

    .line 3279
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_134

    .line 3284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3285
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3286
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3288
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    if-eqz p4, :cond_2f

    .line 3295
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_25

    goto :goto_2f

    .line 3296
    :cond_25
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Missing or invalid default region."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    if-eqz p3, :cond_34

    .line 3301
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3305
    :cond_34
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_41

    .line 3307
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3310
    :cond_41
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move v6, p3

    move-object v7, p5

    .line 3319
    :try_start_4d
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result p0
    :try_end_51
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_4d .. :try_end_51} :catch_52

    goto :goto_80

    :catch_52
    move-exception v0

    move-object p0, v0

    .line 3322
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3323
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object p3

    sget-object p4, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne p3, p4, :cond_11c

    .line 3324
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p3

    if-eqz p3, :cond_11c

    .line 3326
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v8, v6

    move-object v9, v7

    move-object v6, v4

    move-object v7, v5

    move-object v5, p0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result p0

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    if-eqz p0, :cond_112

    :goto_80
    if-eqz p0, :cond_91

    .line 3338
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p1

    .line 3339
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a7

    .line 3341
    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    goto :goto_a7

    .line 3346
    :cond_91
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a2

    .line 3348
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p0

    .line 3349
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_a7

    :cond_a2
    if-eqz v6, :cond_a7

    .line 3351
    invoke-virtual {v7}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3354
    :cond_a7
    :goto_a7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const-string p1, "The string supplied is too short to be a phone number."

    const/4 p2, 0x2

    if-lt p0, p2, :cond_10a

    if-eqz v4, :cond_df

    .line 3359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3360
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3361
    invoke-virtual {v2, p3, v4, p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3365
    invoke-direct {v2, p3, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p4

    .line 3366
    sget-object p5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p4, p5, :cond_df

    sget-object p5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p4, p5, :cond_df

    sget-object p5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p4, p5, :cond_df

    if-eqz v6, :cond_de

    .line 3370
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-lez p4, :cond_de

    .line 3371
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_de
    move-object v5, p3

    .line 3375
    :cond_df
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lt p0, p2, :cond_102

    const/16 p1, 0x11

    if-gt p0, p1, :cond_f8

    .line 3384
    invoke-static {v5, v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return-void

    .line 3381
    :cond_f8
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The string supplied is too long to be a phone number."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3377
    :cond_102
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3355
    :cond_10a
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3330
    :cond_112
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Could not interpret numbers after plus-sign."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3334
    :cond_11c
    new-instance p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p1

    .line 3289
    :cond_12a
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The string supplied did not seem to be a phone number."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3280
    :cond_134
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The string supplied was too long to parse."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3277
    :cond_13e
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The phone number supplied was null."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .registers 6

    .line 2966
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2967
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 2968
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    .line 2971
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2972
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    .line 2973
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2974
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    .line 2978
    :cond_31
    invoke-virtual {p2, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v2

    :cond_35
    return v0
.end method

.method private blacklist prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 6

    .line 1930
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 p2, 0x2b

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    const/4 v1, 0x1

    if-eq p0, v1, :cond_24

    const/4 v1, 0x3

    if-eq p0, v1, :cond_10

    return-void

    .line 1938
    :cond_10
    const-string p0, "-"

    invoke-virtual {p3, v0, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "tel:"

    .line 1939
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1935
    :cond_24
    const-string p0, " "

    invoke-virtual {p3, v0, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    .line 1932
    :cond_32
    invoke-virtual {p3, v0, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void
.end method

.method private blacklist rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1757
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1758
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1765
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 1764
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0
    :try_end_1b
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_b .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    :cond_1c
    return v1
.end method

.method static declared-synchronized blacklist setInstance(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)V
    .registers 2

    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1055
    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 1056
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method static blacklist setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 6

    .line 3249
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_29

    .line 3250
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move v0, v1

    .line 3254
    :goto_14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_24

    .line 3255
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_24
    if-eq v0, v1, :cond_29

    .line 3259
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_29
    return-void
.end method

.method private blacklist testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 4

    .line 2615
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 7

    .line 2624
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2631
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2632
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2634
    :goto_1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v0

    .line 2636
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, v2, :cond_7d

    .line 2637
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p3

    if-nez p3, :cond_36

    .line 2640
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0

    .line 2642
    :cond_36
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    .line 2643
    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p3

    if-eqz p3, :cond_7d

    .line 2645
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2649
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v1

    if-nez v1, :cond_56

    .line 2650
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object p2

    goto :goto_5a

    .line 2651
    :cond_56
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object p2

    .line 2649
    :goto_5a
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2654
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2656
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 2657
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v0

    :goto_6a
    move-object v1, p3

    goto :goto_7d

    .line 2659
    :cond_6c
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2660
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2661
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, p2

    goto :goto_6a

    :cond_7d
    :goto_7d
    const/4 p0, 0x0

    .line 2669
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_8e

    .line 2670
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2673
    :cond_8e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2676
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 2677
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2680
    :cond_9f
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_ae

    .line 2682
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    :cond_ae
    if-le p0, p1, :cond_b3

    .line 2684
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2685
    :cond_b3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, p1, :cond_c8

    .line 2686
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2689
    :cond_c8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_dd

    .line 2690
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    :cond_dd
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0
.end method


# virtual methods
.method public blacklist canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4

    .line 3665
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 3671
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 3672
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method blacklist chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .line 1975
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1976
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 1977
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    add-int/lit8 v1, v1, -0x1

    .line 1979
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v1

    .line 1977
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1979
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1980
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1981
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 9

    .line 2845
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_10

    goto :goto_39

    .line 2850
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    :goto_15
    const/4 v3, 0x3

    if-gt v2, v3, :cond_39

    if-gt v2, v0, :cond_39

    .line 2852
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2853
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2854
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_39
    :goto_39
    return v1
.end method

.method public blacklist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3215
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3235
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method

.method public blacklist format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 7

    .line 1290
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1a

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    return-object v0

    .line 1299
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1300
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7

    const/4 v0, 0x0

    .line 1311
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1312
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1313
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v2, :cond_17

    .line 1318
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-direct {p0, v0, v2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    return-void

    .line 1323
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1324
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1330
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1334
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1335
    invoke-direct {p0, v1, v2, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1337
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public blacklist formatByPattern(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1354
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    .line 1362
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1365
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1367
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1370
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p3

    if-nez p3, :cond_28

    .line 1373
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1375
    :cond_28
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v4

    .line 1379
    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1380
    invoke-virtual {p3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object p3

    .line 1381
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_58

    .line 1382
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v5

    .line 1383
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_55

    .line 1385
    const-string v6, "$NP"

    .line 1386
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1387
    const-string v5, "$FG"

    const-string v6, "$1"

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1388
    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_58

    .line 1391
    :cond_55
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1395
    :cond_58
    :goto_58
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p3

    invoke-virtual {p0, v1, p3, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p3

    .line 1394
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    :goto_63
    invoke-direct {p0, p1, v2, p2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1398
    invoke-direct {p0, v0, p2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatInOriginalFormat(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1659
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1662
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1664
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1665
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1668
    :cond_1e
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_a5

    .line 1681
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1684
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1685
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_bb

    .line 1686
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_bb

    .line 1694
    :cond_4f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v4

    .line 1693
    invoke-direct {p0, v4, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_bb

    .line 1701
    :cond_5a
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1702
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p2

    if-nez p2, :cond_6d

    goto :goto_bb

    .line 1716
    :cond_6d
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1718
    const-string v4, "$1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_7a

    goto :goto_bb

    :cond_7a
    const/4 v5, 0x0

    .line 1724
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1725
    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_bb

    .line 1732
    :cond_8a
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v0

    .line 1733
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1734
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1735
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1736
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    .line 1676
    :cond_a5
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    .line 1673
    :cond_b0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    .line 1670
    :cond_b5
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    .line 1740
    :cond_bb
    :goto_bb
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_d6

    .line 1743
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d6

    .line 1744
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1745
    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1746
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d6

    return-object p0

    :cond_d6
    return-object v3
.end method

.method public blacklist formatNationalNumberWithCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8

    .line 1414
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1415
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    .line 1423
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1425
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1427
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1428
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v2, v4, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    invoke-direct {p0, p1, v2, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1431
    invoke-direct {p0, v0, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1433
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatNationalNumberWithPreferredCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 1466
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1467
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .line 1462
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1993
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatNumberForMobileDialing(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    .line 1485
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1486
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_18

    .line 1487
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v2

    .line 1492
    :cond_18
    new-instance v1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 1493
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1494
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    .line 1495
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_35

    move v4, v6

    goto :goto_36

    :cond_35
    move v4, v5

    .line 1496
    :goto_36
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 1497
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v4, :cond_48

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v4, :cond_48

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v4, :cond_49

    :cond_48
    move v5, v6

    .line 1501
    :cond_49
    const-string v3, "BR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    if-eqz v5, :cond_63

    .line 1505
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_d8

    .line 1506
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d8

    :cond_63
    if-ne v0, v6, :cond_8a

    .line 1515
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1516
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p2

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p2, v0, :cond_82

    .line 1519
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_88

    .line 1521
    :cond_82
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    :goto_88
    move-object v2, p0

    goto :goto_d8

    .line 1527
    :cond_8a
    const-string p2, "001"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ac

    const-string p2, "MX"

    .line 1541
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_aa

    const-string p2, "CL"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_aa

    const-string p2, "UZ"

    .line 1542
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b9

    :cond_aa
    if-eqz v5, :cond_b9

    .line 1543
    :cond_ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 1544
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_88

    .line 1546
    :cond_b9
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_88

    :cond_c0
    if-eqz v4, :cond_d8

    .line 1549
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p2

    if-eqz p2, :cond_d8

    if-eqz p3, :cond_d1

    .line 1553
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1554
    :cond_d1
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d8
    :goto_d8
    if-eqz p3, :cond_db

    return-object v2

    .line 1557
    :cond_db
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatOutOfCountryCallingNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1579
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1580
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to format number from invalid region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". International formatting applied."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1584
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1586
    :cond_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1587
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1588
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_39

    return-object v1

    :cond_39
    const/4 v2, 0x1

    .line 1591
    const-string v3, " "

    if-ne v0, v2, :cond_5d

    .line 1592
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1597
    :cond_5d
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_6a

    .line 1604
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1607
    :cond_6a
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1608
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1614
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1616
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    goto :goto_8c

    .line 1617
    :cond_7d
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_8a

    goto :goto_8c

    :cond_8a
    const-string v2, ""

    .line 1621
    :goto_8c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1624
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1625
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1626
    invoke-direct {p0, v1, p2, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1628
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1630
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b9

    const/4 p0, 0x0

    .line 1631
    invoke-virtual {v5, p0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1632
    invoke-virtual {p1, p0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bc

    .line 1634
    :cond_b9
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1638
    :goto_bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatOutOfCountryKeepingAlphaChars(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1813
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1816
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1817
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1819
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1820
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return-object v0

    .line 1827
    :cond_1a
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1833
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_3c

    .line 1834
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    .line 1836
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1839
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 1840
    const-string v5, " "

    if-ne v1, v3, :cond_5d

    .line 1841
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1842
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    if-eqz v4, :cond_8c

    .line 1845
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_8c

    .line 1847
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p1

    if-nez p1, :cond_70

    return-object v0

    .line 1853
    :cond_70
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object p2

    .line 1854
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1856
    const-string p1, "(\\d+)(.*)"

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1858
    const-string p1, "$1$2"

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1864
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8c
    if-eqz v4, :cond_a4

    .line 1871
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1873
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9f

    goto :goto_a6

    .line 1875
    :cond_9f
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    goto :goto_a6

    .line 1870
    :cond_a4
    const-string v2, ""

    .line 1877
    :goto_a6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1880
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1882
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1884
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1886
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d1

    .line 1887
    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1888
    invoke-virtual {p0, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f7

    .line 1892
    :cond_d1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f4

    .line 1893
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to format number from invalid region "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". International formatting applied."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1898
    :cond_f4
    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1902
    :goto_f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;
    .registers 2

    .line 2837
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getCountryCodeForRegion(Ljava/lang/String;)I
    .registers 5

    .line 2484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2485
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or missing region code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_18

    .line 2487
    const-string p1, "null"

    :cond_18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2485
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2491
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 2051
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExampleNumberForNonGeoEntity(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 10

    .line 2177
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 2183
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 2184
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2185
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2183
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    if-eqz v0, :cond_2e

    .line 2187
    :try_start_3c
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZZ"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0
    :try_end_60
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_3c .. :try_end_60} :catch_61

    return-object p0

    :catch_61
    move-exception v0

    .line 2191
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2e

    .line 2195
    :cond_6e
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown country calling code provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_86
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getExampleNumberForType(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 7

    .line 2146
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2147
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    .line 2153
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2155
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2154
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 2157
    :try_start_3b
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZZ"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0
    :try_end_5f
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_3b .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    move-exception v1

    .line 2161
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_23

    :cond_6d
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getExampleNumberForType(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 6

    .line 2122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 2123
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2126
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 2128
    :try_start_28
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2129
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0
    :try_end_36
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_28 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception p0

    .line 2132
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_43
    return-object v1
.end method

.method public blacklist getInvalidExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 7

    .line 2066
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 2067
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or unknown region code provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2074
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2076
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-nez v2, :cond_31

    return-object v1

    .line 2080
    :cond_31
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    .line 2092
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3b
    const/4 v3, 0x2

    if-lt v2, v3, :cond_51

    const/4 v3, 0x0

    .line 2095
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2097
    :try_start_43
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 2098
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4
    :try_end_4b
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_43 .. :try_end_4b} :catch_4e

    if-nez v4, :cond_4e

    return-object v3

    :catch_4e
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    :cond_51
    return-object v1
.end method

.method public blacklist getLengthOfGeographicalAreaCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 7

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 905
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    .line 906
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 911
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->COUNTRIES_WITHOUT_NATIONAL_PREFIX_WITH_AREA_CODES:Ljava/util/Set;

    .line 912
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    return v1

    .line 916
    :cond_2d
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v0, :cond_3e

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    return v1

    .line 924
    :cond_3e
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v0

    if-nez v0, :cond_45

    return v1

    .line 928
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result p0

    return p0
.end method

.method public blacklist getLengthOfNationalDestinationCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 6

    .line 971
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 974
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 975
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 976
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_13

    :cond_12
    move-object v0, p1

    .line 981
    :goto_13
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 983
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 987
    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_25

    const/4 p0, 0x0

    return p0

    .line 991
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v3, 0x2

    if-ne p0, v1, :cond_4c

    .line 997
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object p0

    .line 998
    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    .line 999
    aget-object p0, v0, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 1002
    :cond_4c
    aget-object p0, v0, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method blacklist getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 2336
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 2339
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/NonGeographicalEntityMetadataSource;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing metadata for country code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ensureMetadataIsNonNull(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)V

    return-object p0
.end method

.method blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 2320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2323
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/internal/telephony/phonenumbers/metadata/source/MetadataSource;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/metadata/source/RegionMetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    .line 2324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing metadata for region code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ensureMetadataIsNonNull(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 4

    .line 1914
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1915
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    if-lez v0, :cond_24

    .line 1916
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    new-array v0, v0, [C

    const/16 v1, 0x30

    .line 1917
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1918
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1921
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    .line 2525
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_29

    .line 2527
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or missing region code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_19

    .line 2529
    const-string p1, "null"

    :cond_19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2527
    invoke-virtual {p0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0

    .line 2533
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object p0

    .line 2535
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_34

    return-object v0

    :cond_34
    if-eqz p2, :cond_3e

    .line 2541
    const-string p1, "~"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3e
    return-object p0
.end method

.method blacklist getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3

    .line 2222
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_3e

    .line 2245
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2243
    :pswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2241
    :pswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2239
    :pswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2237
    :pswitch_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2235
    :pswitch_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2233
    :pswitch_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2224
    :pswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2226
    :pswitch_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2228
    :pswitch_34
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2231
    :pswitch_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

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

.method public blacklist getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 4

    .line 2256
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2257
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2259
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2261
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2262
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegionCodeForCountryCode(I)Ljava/lang/String;
    .registers 2

    .line 2461
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_11

    .line 2462
    const-string p0, "ZZ"

    return-object p0

    :cond_11
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5

    .line 2420
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2421
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_31

    .line 2423
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing/invalid country_code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2426
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_40

    const/4 p0, 0x0

    .line 2427
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2429
    :cond_40
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2471
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_14

    .line 2472
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_14
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedCallingCodes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1088
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1075
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedRegions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1065
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedTypesForNonGeoEntity(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1162
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1164
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown country calling code for a non-geographical entity provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1166
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1168
    :cond_28
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedTypesForRegion(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1145
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1146
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1148
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAlphaNumber(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 2566
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2570
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2571
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2572
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public blacklist isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .registers 5

    .line 3683
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    if-nez p0, :cond_20

    .line 3685
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3688
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result p0

    return p0
.end method

.method public blacklist isNANPACountry(Ljava/lang/String;)Z
    .registers 2

    .line 2552
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z
    .registers 3

    .line 1255
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 1257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 1247
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result p0

    return p0
.end method

.method public blacklist isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 6

    .line 3524
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 3525
    invoke-static {p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p2

    .line 3527
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3528
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 3529
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3531
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 3532
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 3535
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3536
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    :cond_3a
    if-ne v0, v1, :cond_45

    .line 3538
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 3542
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3545
    :cond_45
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3549
    :cond_48
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3551
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3552
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3554
    :cond_54
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 3555
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3557
    :cond_5d
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method public blacklist isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 10

    .line 3623
    const-string v1, "ZZ"

    :try_start_2
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3624
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_a
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    .line 3626
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v2, :cond_43

    .line 3630
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 3632
    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 3633
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p2

    .line 3634
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0

    .line 3635
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne p0, p1, :cond_30

    .line 3636
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    :cond_30
    return-object p0

    .line 3642
    :cond_31
    new-instance v6, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v6}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 3643
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3644
    invoke-virtual {v1, p1, v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_42
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_1c .. :try_end_42} :catch_43

    return-object p0

    .line 3652
    :catch_43
    :cond_43
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method public blacklist isNumberMatch(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 11

    .line 3583
    const-string v1, "ZZ"

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3584
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_a
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    .line 3586
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v2, :cond_46

    .line 3588
    :try_start_14
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3589
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_1c
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception v0

    .line 3591
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_46

    .line 3593
    :try_start_26
    new-instance v7, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v7}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3594
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 3595
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    move-object v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    move-object v6, v0

    .line 3596
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3597
    invoke-virtual {v1, v7, v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_45
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_26 .. :try_end_45} :catch_46

    return-object p0

    .line 3606
    :catch_46
    :cond_46
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method blacklist isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 7

    .line 2356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2357
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2358
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v3

    .line 2361
    :cond_1a
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {p0, p1, p2, v3}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isPossibleNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 2

    .line 2587
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    .line 2588
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_f

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isPossibleNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    .line 2797
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0
    :try_end_8
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPossibleNumberForType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .registers 3

    .line 2605
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    .line 2606
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_f

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isPossibleNumberForTypeWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 5

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2760
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    .line 2767
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2768
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2770
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2772
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    .line 2773
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isPossibleNumberWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 3

    .line 2722
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 2376
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2377
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isValidNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7

    .line 2397
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2398
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2399
    const-string v3, "001"

    .line 2400
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2401
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result p2

    if-eq v0, p2, :cond_1a

    goto :goto_28

    .line 2406
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2407
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p0, p1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v2
.end method

.method blacklist maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 2897
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2900
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_14

    .line 2904
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    .line 2903
    :cond_14
    const-string p1, "NonMatch"

    .line 2908
    :goto_16
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object p1

    if-eqz p4, :cond_1f

    .line 2910
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2912
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq p1, v2, :cond_48

    .line 2913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_3e

    .line 2918
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result p0

    if-eqz p0, :cond_34

    .line 2920
    invoke-virtual {p5, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return p0

    .line 2926
    :cond_34
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Country calling code supplied was not recognised."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 2914
    :cond_3e
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    :cond_48
    if-eqz p2, :cond_97

    .line 2932
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p1

    .line 2933
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2935
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2936
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2937
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    const/4 v3, 0x0

    .line 2939
    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2944
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v3

    if-nez v3, :cond_81

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 2945
    invoke-interface {v3, v4, v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v2

    if-nez v2, :cond_89

    .line 2946
    :cond_81
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne p0, p2, :cond_97

    .line 2947
    :cond_89
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_93

    .line 2949
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {p5, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2951
    :cond_93
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return p1

    .line 2957
    :cond_97
    invoke-virtual {p5, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return v1
.end method

.method blacklist maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5

    .line 3089
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3092
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3094
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_20
    if-gt v1, v0, :cond_3b

    .line 3095
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 3098
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3099
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3104
    :cond_3b
    const-string p0, ""

    return-object p0
.end method

.method blacklist maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 5

    .line 3000
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 3001
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0

    .line 3004
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3005
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 p0, 0x0

    .line 3006
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3008
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 3009
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0

    .line 3012
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 3013
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 3014
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 3015
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0

    .line 3016
    :cond_35
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method blacklist maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .registers 12

    .line 3031
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 3032
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_a3

    .line 3033
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_a3

    .line 3038
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3039
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 3040
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 3042
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {v4, p1, v3, v2}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v4

    .line 3046
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    .line 3047
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x1

    if-eqz p2, :cond_77

    .line 3048
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_77

    .line 3049
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_45

    goto :goto_77

    .line 3064
    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3065
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v2, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_60

    .line 3066
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 3067
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, v3, v2}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    if-nez p0, :cond_60

    return v2

    :cond_60
    if-eqz p3, :cond_6b

    if-le v5, v6, :cond_6b

    .line 3071
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    :cond_6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return v6

    :cond_77
    :goto_77
    if-eqz v4, :cond_8a

    .line 3051
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 3053
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 3052
    invoke-interface {p0, p2, v3, v2}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    if-nez p0, :cond_8a

    return v2

    :cond_8a
    if-eqz p3, :cond_9b

    if-lez v5, :cond_9b

    .line 3056
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 3057
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    :cond_9b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v6

    :cond_a3
    :goto_a3
    return v2
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3158
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3159
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-object v0
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3169
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-void
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3188
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3189
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-object v0
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3200
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-void
.end method

.method public blacklist truncateTooLongNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8

    .line 2811
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2814
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2815
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2816
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    :cond_14
    const-wide/16 v4, 0xa

    .line 2818
    div-long/2addr v2, v4

    .line 2819
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2820
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_33

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_29

    goto :goto_33

    .line 2824
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2825
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return v1

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method
