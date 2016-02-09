.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$NoImagePreloadHolder;,
        Ljava/util/Locale$Builder;
    }
.end annotation


# static fields
.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field private static final GRANDFATHERED_LOCALES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field public static final PRC:Ljava/util/Locale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Ljava/util/Locale;

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final TAIWAN:Ljava/util/Locale;

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final UK:Ljava/util/Locale;

.field private static final UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Ljava/util/Locale;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient cachedIcuLocaleId:Ljava/lang/String;

.field private transient cachedLanguageTag:Ljava/lang/String;

.field private transient cachedToStringResult:Ljava/lang/String;

.field private transient countryCode:Ljava/lang/String;

.field private transient extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transient hasValidatedFields:Z

.field private transient languageCode:Ljava/lang/String;

.field private transient scriptCode:Ljava/lang/String;

.field private transient unicodeAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient unicodeKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient variantCode:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/util/Locale;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/util/Locale;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "attributeOrType"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lowerCaseTypeList"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Locale;->isValidTypeList(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/Locale;->titleCaseAsciiWord(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Ljava/lang/String;Z)Ljava/util/Locale;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 144
    new-instance v0, Ljava/util/Locale;

    #@3
    const-string/jumbo v1, "en"

    #@6
    const-string/jumbo v2, "CA"

    #@9
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@c
    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    #@e
    .line 149
    new-instance v0, Ljava/util/Locale;

    #@10
    const-string/jumbo v1, "fr"

    #@13
    const-string/jumbo v2, "CA"

    #@16
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@19
    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    #@1b
    .line 154
    new-instance v0, Ljava/util/Locale;

    #@1d
    const-string/jumbo v1, "zh"

    #@20
    const-string/jumbo v2, "CN"

    #@23
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@26
    sput-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    #@28
    .line 159
    new-instance v0, Ljava/util/Locale;

    #@2a
    const-string/jumbo v1, "zh"

    #@2d
    const-string/jumbo v2, ""

    #@30
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@33
    sput-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    #@35
    .line 164
    new-instance v0, Ljava/util/Locale;

    #@37
    const-string/jumbo v1, "en"

    #@3a
    const-string/jumbo v2, ""

    #@3d
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@40
    sput-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@42
    .line 169
    new-instance v0, Ljava/util/Locale;

    #@44
    const-string/jumbo v1, "fr"

    #@47
    const-string/jumbo v2, "FR"

    #@4a
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@4d
    sput-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    #@4f
    .line 174
    new-instance v0, Ljava/util/Locale;

    #@51
    const-string/jumbo v1, "fr"

    #@54
    const-string/jumbo v2, ""

    #@57
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@5a
    sput-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    #@5c
    .line 179
    new-instance v0, Ljava/util/Locale;

    #@5e
    const-string/jumbo v1, "de"

    #@61
    const-string/jumbo v2, ""

    #@64
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@67
    sput-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    #@69
    .line 184
    new-instance v0, Ljava/util/Locale;

    #@6b
    const-string/jumbo v1, "de"

    #@6e
    const-string/jumbo v2, "DE"

    #@71
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@74
    sput-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    #@76
    .line 189
    new-instance v0, Ljava/util/Locale;

    #@78
    const-string/jumbo v1, "it"

    #@7b
    const-string/jumbo v2, ""

    #@7e
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@81
    sput-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    #@83
    .line 194
    new-instance v0, Ljava/util/Locale;

    #@85
    const-string/jumbo v1, "it"

    #@88
    const-string/jumbo v2, "IT"

    #@8b
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@8e
    sput-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    #@90
    .line 199
    new-instance v0, Ljava/util/Locale;

    #@92
    const-string/jumbo v1, "ja"

    #@95
    const-string/jumbo v2, "JP"

    #@98
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@9b
    sput-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    #@9d
    .line 204
    new-instance v0, Ljava/util/Locale;

    #@9f
    const-string/jumbo v1, "ja"

    #@a2
    const-string/jumbo v2, ""

    #@a5
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@a8
    sput-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    #@aa
    .line 209
    new-instance v0, Ljava/util/Locale;

    #@ac
    const-string/jumbo v1, "ko"

    #@af
    const-string/jumbo v2, "KR"

    #@b2
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@b5
    sput-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    #@b7
    .line 214
    new-instance v0, Ljava/util/Locale;

    #@b9
    const-string/jumbo v1, "ko"

    #@bc
    const-string/jumbo v2, ""

    #@bf
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@c2
    sput-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    #@c4
    .line 219
    new-instance v0, Ljava/util/Locale;

    #@c6
    const-string/jumbo v1, "zh"

    #@c9
    const-string/jumbo v2, "CN"

    #@cc
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@cf
    sput-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    #@d1
    .line 227
    new-instance v0, Ljava/util/Locale;

    #@d3
    const-string/jumbo v1, ""

    #@d6
    const-string/jumbo v2, ""

    #@d9
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@dc
    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@de
    .line 232
    new-instance v0, Ljava/util/Locale;

    #@e0
    const-string/jumbo v1, "zh"

    #@e3
    const-string/jumbo v2, "CN"

    #@e6
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@e9
    sput-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    #@eb
    .line 237
    new-instance v0, Ljava/util/Locale;

    #@ed
    const-string/jumbo v1, "zh"

    #@f0
    const-string/jumbo v2, "TW"

    #@f3
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@f6
    sput-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    #@f8
    .line 242
    new-instance v0, Ljava/util/Locale;

    #@fa
    const-string/jumbo v1, "zh"

    #@fd
    const-string/jumbo v2, "TW"

    #@100
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@103
    sput-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    #@105
    .line 247
    new-instance v0, Ljava/util/Locale;

    #@107
    const-string/jumbo v1, "en"

    #@10a
    const-string/jumbo v2, "GB"

    #@10d
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@110
    sput-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    #@112
    .line 252
    new-instance v0, Ljava/util/Locale;

    #@114
    const-string/jumbo v1, "en"

    #@117
    const-string/jumbo v2, "US"

    #@11a
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    #@11d
    sput-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11f
    .line 286
    new-instance v0, Ljava/util/TreeMap;

    #@121
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@123
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@126
    sput-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@128
    .line 293
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@12a
    const-string/jumbo v1, "en-GB-oed"

    #@12d
    const-string/jumbo v2, "en-GB-x-oed"

    #@130
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@133
    .line 294
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@135
    const-string/jumbo v1, "i-ami"

    #@138
    const-string/jumbo v2, "ami"

    #@13b
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13e
    .line 295
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@140
    const-string/jumbo v1, "i-bnn"

    #@143
    const-string/jumbo v2, "bnn"

    #@146
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@149
    .line 296
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@14b
    const-string/jumbo v1, "i-default"

    #@14e
    const-string/jumbo v2, "en-x-i-default"

    #@151
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    .line 297
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@156
    const-string/jumbo v1, "i-enochian"

    #@159
    const-string/jumbo v2, "und-x-i-enochian"

    #@15c
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    .line 298
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@161
    const-string/jumbo v1, "i-hak"

    #@164
    const-string/jumbo v2, "hak"

    #@167
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    .line 299
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@16c
    const-string/jumbo v1, "i-klingon"

    #@16f
    const-string/jumbo v2, "tlh"

    #@172
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@175
    .line 300
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@177
    const-string/jumbo v1, "i-lux"

    #@17a
    const-string/jumbo v2, "lb"

    #@17d
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@180
    .line 301
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@182
    const-string/jumbo v1, "i-mingo"

    #@185
    const-string/jumbo v2, "see-x-i-mingo"

    #@188
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18b
    .line 302
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@18d
    const-string/jumbo v1, "i-navajo"

    #@190
    const-string/jumbo v2, "nv"

    #@193
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@196
    .line 303
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@198
    const-string/jumbo v1, "i-pwn"

    #@19b
    const-string/jumbo v2, "pwn"

    #@19e
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a1
    .line 304
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1a3
    const-string/jumbo v1, "i-tao"

    #@1a6
    const-string/jumbo v2, "tao"

    #@1a9
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ac
    .line 305
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1ae
    const-string/jumbo v1, "i-tay"

    #@1b1
    const-string/jumbo v2, "tay"

    #@1b4
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b7
    .line 306
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1b9
    const-string/jumbo v1, "i-tsu"

    #@1bc
    const-string/jumbo v2, "tsu"

    #@1bf
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c2
    .line 307
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1c4
    const-string/jumbo v1, "sgn-BE-FR"

    #@1c7
    const-string/jumbo v2, "sfb"

    #@1ca
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    .line 308
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1cf
    const-string/jumbo v1, "sgn-BE-NL"

    #@1d2
    const-string/jumbo v2, "vgt"

    #@1d5
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d8
    .line 309
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1da
    const-string/jumbo v1, "sgn-CH-DE"

    #@1dd
    const-string/jumbo v2, "sgg"

    #@1e0
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e3
    .line 312
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1e5
    const-string/jumbo v1, "art-lojban"

    #@1e8
    const-string/jumbo v2, "jbo"

    #@1eb
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ee
    .line 313
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1f0
    const-string/jumbo v1, "cel-gaulish"

    #@1f3
    const-string/jumbo v2, "xtg-x-cel-gaulish"

    #@1f6
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f9
    .line 314
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@1fb
    const-string/jumbo v1, "no-bok"

    #@1fe
    const-string/jumbo v2, "nb"

    #@201
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@204
    .line 315
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@206
    const-string/jumbo v1, "no-nyn"

    #@209
    const-string/jumbo v2, "nn"

    #@20c
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20f
    .line 316
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@211
    const-string/jumbo v1, "zh-guoyu"

    #@214
    const-string/jumbo v2, "cmn"

    #@217
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21a
    .line 317
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@21c
    const-string/jumbo v1, "zh-hakka"

    #@21f
    const-string/jumbo v2, "hak"

    #@222
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@225
    .line 318
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@227
    const-string/jumbo v1, "zh-min"

    #@22a
    const-string/jumbo v2, "nan-x-zh-min"

    #@22d
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@230
    .line 319
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@232
    const-string/jumbo v1, "zh-min-nan"

    #@235
    const-string/jumbo v2, "nan"

    #@238
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23b
    .line 320
    sget-object v0, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@23d
    const-string/jumbo v1, "zh-xiang"

    #@240
    const-string/jumbo v2, "hsn"

    #@243
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@246
    .line 1764
    const/4 v0, 0x6

    #@247
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@249
    .line 1765
    new-instance v1, Ljava/io/ObjectStreamField;

    #@24b
    const-string/jumbo v2, "country"

    #@24e
    const-class v3, Ljava/lang/String;

    #@250
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@253
    const/4 v2, 0x0

    #@254
    aput-object v1, v0, v2

    #@256
    .line 1766
    new-instance v1, Ljava/io/ObjectStreamField;

    #@258
    const-string/jumbo v2, "hashcode"

    #@25b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@260
    aput-object v1, v0, v4

    #@262
    .line 1767
    new-instance v1, Ljava/io/ObjectStreamField;

    #@264
    const-string/jumbo v2, "language"

    #@267
    const-class v3, Ljava/lang/String;

    #@269
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@26c
    const/4 v2, 0x2

    #@26d
    aput-object v1, v0, v2

    #@26f
    .line 1768
    new-instance v1, Ljava/io/ObjectStreamField;

    #@271
    const-string/jumbo v2, "variant"

    #@274
    const-class v3, Ljava/lang/String;

    #@276
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@279
    const/4 v2, 0x3

    #@27a
    aput-object v1, v0, v2

    #@27c
    .line 1769
    new-instance v1, Ljava/io/ObjectStreamField;

    #@27e
    const-string/jumbo v2, "script"

    #@281
    const-class v3, Ljava/lang/String;

    #@283
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@286
    const/4 v2, 0x4

    #@287
    aput-object v1, v0, v2

    #@289
    .line 1770
    new-instance v1, Ljava/io/ObjectStreamField;

    #@28b
    const-string/jumbo v2, "extensions"

    #@28e
    const-class v3, Ljava/lang/String;

    #@290
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@293
    const/4 v2, 0x5

    #@294
    aput-object v1, v0, v2

    #@296
    .line 1764
    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@298
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 933
    const-string/jumbo v2, ""

    #@3
    const-string/jumbo v3, ""

    #@6
    const-string/jumbo v4, ""

    #@9
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@b
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@d
    .line 934
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@f
    const/4 v8, 0x0

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    .line 933
    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    #@15
    .line 932
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 941
    const-string/jumbo v3, ""

    #@3
    const-string/jumbo v4, ""

    #@6
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@8
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@a
    .line 942
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@c
    const/4 v8, 0x0

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move-object v2, p2

    #@10
    .line 941
    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    #@13
    .line 940
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1028
    const-string/jumbo v4, ""

    #@3
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@5
    .line 1029
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@7
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@9
    .line 1030
    const/4 v8, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move-object v3, p3

    #@e
    .line 1028
    invoke-direct/range {v0 .. v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    #@11
    .line 1027
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "scriptCode"    # Ljava/lang/String;
    .param p8, "hasValidatedFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 950
    .local p5, "unicodeAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "unicodeKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 955
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 956
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "language="

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    .line 957
    const-string/jumbo v5, ",country="

    #@1c
    .line 956
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 958
    const-string/jumbo v5, ",variant="

    #@27
    .line 956
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@36
    throw v3

    #@37
    .line 955
    :cond_1
    if-eqz p3, :cond_0

    #@39
    .line 961
    if-eqz p8, :cond_2

    #@3b
    .line 962
    invoke-static {p1}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    iput-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@41
    .line 963
    iput-object p2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@43
    .line 964
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@45
    .line 977
    :goto_0
    iput-object p4, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@47
    .line 979
    if-eqz p8, :cond_4

    #@49
    .line 980
    new-instance v0, Ljava/util/TreeSet;

    #@4b
    invoke-direct {v0, p5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@4e
    .line 981
    .local v0, "attribsCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeMap;

    #@50
    invoke-direct {v2, p6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    #@53
    .line 982
    .local v2, "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeMap;

    #@55
    invoke-direct {v1, p7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    #@58
    .line 988
    .local v1, "extensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {v0, v2, v1}, Ljava/util/Locale;->addUnicodeExtensionToExtensionsMap(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    #@5b
    .line 990
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5e
    move-result-object v3

    #@5f
    iput-object v3, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@61
    .line 991
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@64
    move-result-object v3

    #@65
    iput-object v3, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@67
    .line 992
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@6a
    move-result-object v3

    #@6b
    iput-object v3, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@6d
    .line 1020
    .end local v0    # "attribsCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "extensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v2    # "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    iput-boolean p8, p0, Ljava/util/Locale;->hasValidatedFields:Z

    #@6f
    .line 954
    return-void

    #@70
    .line 966
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@73
    move-result v3

    #@74
    if-eqz v3, :cond_3

    #@76
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_3

    #@7c
    .line 967
    const-string/jumbo v3, ""

    #@7f
    iput-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@81
    .line 968
    const-string/jumbo v3, ""

    #@84
    iput-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@86
    .line 969
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@88
    goto :goto_0

    #@89
    .line 971
    :cond_3
    invoke-static {p1}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    iput-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@8f
    .line 972
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@91
    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    iput-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@97
    .line 973
    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@99
    goto :goto_0

    #@9a
    .line 999
    :cond_4
    const-string/jumbo v3, "ja"

    #@9d
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v3

    #@a1
    if-eqz v3, :cond_6

    #@a3
    const-string/jumbo v3, "JP"

    #@a6
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v3

    #@aa
    if-eqz v3, :cond_6

    #@ac
    const-string/jumbo v3, "JP"

    #@af
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v3

    #@b3
    if-eqz v3, :cond_6

    #@b5
    .line 1000
    new-instance v2, Ljava/util/TreeMap;

    #@b7
    invoke-direct {v2, p6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    #@ba
    .line 1001
    .restart local v2    # "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "ca"

    #@bd
    const-string/jumbo v4, "japanese"

    #@c0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    .line 1002
    move-object p6, v2

    #@c4
    .line 1009
    .end local v2    # "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    #@c7
    move-result v3

    #@c8
    if-eqz v3, :cond_7

    #@ca
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    #@cd
    move-result v3

    #@ce
    if-eqz v3, :cond_7

    #@d0
    .line 1015
    :goto_3
    iput-object p5, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@d2
    .line 1016
    iput-object p6, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@d4
    .line 1017
    iput-object p7, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@d6
    goto :goto_1

    #@d7
    .line 1003
    :cond_6
    const-string/jumbo v3, "th"

    #@da
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v3

    #@de
    if-eqz v3, :cond_5

    #@e0
    const-string/jumbo v3, "TH"

    #@e3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v3

    #@e7
    if-eqz v3, :cond_5

    #@e9
    const-string/jumbo v3, "TH"

    #@ec
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_5

    #@f2
    .line 1004
    new-instance v2, Ljava/util/TreeMap;

    #@f4
    invoke-direct {v2, p6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    #@f7
    .line 1005
    .restart local v2    # "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "nu"

    #@fa
    const-string/jumbo v4, "thai"

    #@fd
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    .line 1006
    move-object p6, v2

    #@101
    goto :goto_2

    #@102
    .line 1010
    .end local v2    # "keywordsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v1, Ljava/util/TreeMap;

    #@104
    invoke-direct {v1, p7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    #@107
    .line 1011
    .restart local v1    # "extensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p5, p6, v1}, Ljava/util/Locale;->addUnicodeExtensionToExtensionsMap(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    #@10a
    .line 1012
    move-object p7, v1

    #@10b
    goto :goto_3
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hasValidatedFields"    # Z
    .param p2, "lowerCaseLanguageCode"    # Ljava/lang/String;
    .param p3, "upperCaseCountryCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 917
    iput-object p2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@5
    .line 918
    iput-object p3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@7
    .line 919
    const-string/jumbo v0, ""

    #@a
    iput-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@c
    .line 920
    const-string/jumbo v0, ""

    #@f
    iput-object v0, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@11
    .line 922
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@13
    iput-object v0, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@15
    .line 923
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@17
    iput-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@19
    .line 924
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@1b
    iput-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@1d
    .line 926
    iput-boolean p1, p0, Ljava/util/Locale;->hasValidatedFields:Z

    #@1f
    .line 916
    return-void
.end method

.method private static addUnicodeExtensionToExtensionsMap(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v5, 0x2d

    #@2
    .line 1988
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 1989
    return-void

    #@f
    .line 1994
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    const/16 v4, 0x20

    #@13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 1997
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 1998
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v0

    #@20
    .line 2000
    .local v0, "attributesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Ljava/lang/String;

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 2001
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 2002
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    goto :goto_0

    #@33
    .line 2009
    .end local v0    # "attributesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_4

    #@39
    .line 2010
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_2

    #@3f
    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    .line 2014
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@45
    move-result-object v4

    #@46
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v2

    #@4a
    .line 2016
    .local v2, "keywordsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Ljava/util/Map$Entry;

    #@50
    .line 2017
    .local v1, "keyWord":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Ljava/lang/String;

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 2018
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5c
    move-result-object v4

    #@5d
    check-cast v4, Ljava/lang/String;

    #@5f
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@62
    move-result v4

    #@63
    if-nez v4, :cond_3

    #@65
    .line 2019
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 2020
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6b
    move-result-object v4

    #@6c
    check-cast v4, Ljava/lang/String;

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 2022
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_4

    #@77
    .line 2023
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7a
    goto :goto_1

    #@7b
    .line 2030
    .end local v1    # "keyWord":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "keywordsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    const/16 v4, 0x75

    #@7d
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 1987
    return-void
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2095
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2098
    .local v0, "adjusted":Ljava/lang/String;
    const-string/jumbo v1, "he"

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 2099
    const-string/jumbo v0, "iw"

    #@12
    .line 2106
    :cond_0
    :goto_0
    return-object v0

    #@13
    .line 2100
    :cond_1
    const-string/jumbo v1, "id"

    #@16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 2101
    const-string/jumbo v0, "in"

    #@1f
    goto :goto_0

    #@20
    .line 2102
    :cond_2
    const-string/jumbo v1, "yi"

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 2103
    const-string/jumbo v0, "ji"

    #@2c
    goto :goto_0
.end method

.method private static concatenateRange([Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x20

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 1597
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v1, p1

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@a
    .line 1598
    if-eq v1, p1, :cond_0

    #@c
    .line 1599
    const/16 v2, 0x2d

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 1601
    :cond_0
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1597
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1604
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method private static convertGrandfatheredTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "original"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2110
    sget-object v1, Ljava/util/Locale;->GRANDFATHERED_LOCALES:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 2111
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "converted":Ljava/lang/String;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "converted":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    #@c
    goto :goto_0
.end method

.method private static extractExtensions([Ljava/lang/String;IILjava/util/Map;)I
    .locals 12
    .param p0, "subtags"    # [Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/4 v8, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, -0x1

    #@3
    .line 2140
    const/4 v4, -0x1

    #@4
    .line 2141
    .local v4, "privateUseExtensionIndex":I
    const/4 v0, -0x1

    #@5
    .line 2143
    .local v0, "extensionKeyIndex":I
    move v1, p1

    #@6
    .line 2144
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_b

    #@8
    .line 2145
    aget-object v5, p0, v1

    #@a
    .line 2147
    .local v5, "subtag":Ljava/lang/String;
    if-eq v4, v10, :cond_2

    #@c
    .line 2148
    if-ne v0, v4, :cond_1

    #@e
    const/4 v3, 0x1

    #@f
    .line 2153
    .local v3, "parsingPrivateUse":Z
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@12
    move-result v7

    #@13
    if-ne v7, v8, :cond_0

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 2181
    :cond_0
    if-eq v0, v10, :cond_a

    #@19
    .line 2184
    if-eqz v3, :cond_9

    #@1b
    move v7, v8

    #@1c
    :goto_2
    const/16 v9, 0x8

    #@1e
    invoke-static {v5, v7, v9}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    #@21
    move-result v7

    #@22
    if-nez v7, :cond_7

    #@24
    .line 2185
    return v1

    #@25
    .line 2148
    .end local v3    # "parsingPrivateUse":Z
    :cond_1
    const/4 v3, 0x0

    #@26
    .restart local v3    # "parsingPrivateUse":Z
    goto :goto_1

    #@27
    .line 2147
    .end local v3    # "parsingPrivateUse":Z
    :cond_2
    const/4 v3, 0x0

    #@28
    .restart local v3    # "parsingPrivateUse":Z
    goto :goto_1

    #@29
    .line 2158
    :cond_3
    if-eq v0, v10, :cond_6

    #@2b
    .line 2159
    add-int/lit8 v7, v1, -0x1

    #@2d
    if-ne v7, v0, :cond_4

    #@2f
    .line 2160
    return v0

    #@30
    .line 2163
    :cond_4
    aget-object v7, p0, v0

    #@32
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@34
    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 2164
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v7

    #@3c
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3f
    move-result-object v7

    #@40
    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_5

    #@46
    .line 2165
    return v0

    #@47
    .line 2168
    :cond_5
    add-int/lit8 v7, v0, 0x1

    #@49
    invoke-static {p0, v7, v1}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 2169
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v7

    #@51
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@54
    move-result-object v7

    #@55
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@57
    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-interface {p3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 2174
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    move v0, v1

    #@5f
    .line 2175
    const-string/jumbo v7, "x"

    #@62
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@64
    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_8

    #@6e
    .line 2176
    move v4, v1

    #@6f
    .line 2144
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_0

    #@72
    .line 2177
    :cond_8
    if-eq v4, v10, :cond_7

    #@74
    .line 2179
    return v4

    #@75
    .line 2184
    :cond_9
    const/4 v7, 0x2

    #@76
    goto :goto_2

    #@77
    .line 2189
    :cond_a
    return v1

    #@78
    .line 2193
    .end local v3    # "parsingPrivateUse":Z
    .end local v5    # "subtag":Ljava/lang/String;
    :cond_b
    if-eq v0, v10, :cond_e

    #@7a
    .line 2194
    add-int/lit8 v7, v1, -0x1

    #@7c
    if-ne v7, v0, :cond_c

    #@7e
    .line 2195
    return v0

    #@7f
    .line 2198
    :cond_c
    aget-object v7, p0, v0

    #@81
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@83
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    .line 2199
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v7

    #@8b
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@8e
    move-result-object v7

    #@8f
    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@92
    move-result v7

    #@93
    if-eqz v7, :cond_d

    #@95
    .line 2200
    return v0

    #@96
    .line 2203
    :cond_d
    add-int/lit8 v7, v0, 0x1

    #@98
    invoke-static {p0, v7, v1}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    .line 2204
    .restart local v6    # "value":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    #@9f
    move-result v7

    #@a0
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@a3
    move-result-object v7

    #@a4
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@a6
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@a9
    move-result-object v8

    #@aa
    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    .line 2207
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_e
    return v1
.end method

.method private static extractVariantSubtags([Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .param p0, "subtags"    # [Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2121
    .local p3, "normalizedVariants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@3
    .line 2122
    aget-object v1, p0, v0

    #@5
    .line 2124
    .local v1, "subtag":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale$Builder;->-wrap0(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 2125
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 2121
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2120
    .end local v1    # "subtag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 880
    if-nez p0, :cond_0

    #@2
    .line 881
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "languageTag == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 884
    :cond_0
    const/4 v0, 0x0

    #@c
    invoke-static {p0, v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private static forLanguageTag(Ljava/lang/String;Z)Ljava/util/Locale;
    .locals 19
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    .line 2211
    invoke-static/range {p0 .. p0}, Ljava/util/Locale;->convertGrandfatheredTag(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v10

    #@4
    .line 2212
    .local v10, "converted":Ljava/lang/String;
    const-string/jumbo v1, "-"

    #@7
    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v15

    #@b
    .line 2214
    .local v15, "subtags":[Ljava/lang/String;
    array-length v12, v15

    #@c
    .line 2215
    .local v12, "lastSubtag":I
    const/4 v11, 0x0

    #@d
    .local v11, "i":I
    :goto_0
    array-length v1, v15

    #@e
    if-ge v11, v1, :cond_2

    #@10
    .line 2216
    aget-object v14, v15, v11

    #@12
    .line 2217
    .local v14, "subtag":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@1b
    move-result v1

    #@1c
    const/16 v9, 0x8

    #@1e
    if-le v1, v9, :cond_7

    #@20
    .line 2218
    :cond_0
    if-eqz p1, :cond_1

    #@22
    .line 2219
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@24
    new-instance v9, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v18, "Invalid subtag at index: "

    #@2c
    move-object/from16 v0, v18

    #@2e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    .line 2220
    const-string/jumbo v18, " in tag: "

    #@39
    .line 2219
    move-object/from16 v0, v18

    #@3b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-direct {v1, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1

    #@4d
    .line 2222
    :cond_1
    add-int/lit8 v12, v11, -0x1

    #@4f
    .line 2229
    .end local v14    # "subtag":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    #@50
    aget-object v1, v15, v1

    #@52
    move/from16 v0, p1

    #@54
    invoke-static {v1, v0}, Ljava/util/Locale$Builder;->-wrap1(Ljava/lang/String;Z)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 2230
    .local v2, "languageCode":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@5b
    .line 2231
    .local v5, "scriptCode":Ljava/lang/String;
    const/4 v13, 0x1

    #@5c
    .local v13, "nextSubtag":I
    const/4 v1, 0x1

    #@5d
    .line 2232
    if-le v12, v1, :cond_3

    #@5f
    .line 2233
    aget-object v1, v15, v13

    #@61
    const/4 v9, 0x0

    #@62
    invoke-static {v1, v9}, Ljava/util/Locale$Builder;->-wrap3(Ljava/lang/String;Z)Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    .line 2234
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@69
    move-result v1

    #@6a
    if-nez v1, :cond_3

    #@6c
    .line 2235
    const/4 v13, 0x2

    #@6d
    .line 2239
    :cond_3
    const-string/jumbo v3, ""

    #@70
    .line 2240
    .local v3, "regionCode":Ljava/lang/String;
    if-le v12, v13, :cond_4

    #@72
    .line 2241
    aget-object v1, v15, v13

    #@74
    const/4 v9, 0x0

    #@75
    invoke-static {v1, v9}, Ljava/util/Locale$Builder;->-wrap2(Ljava/lang/String;Z)Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    .line 2242
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@7c
    move-result v1

    #@7d
    if-nez v1, :cond_4

    #@7f
    .line 2243
    add-int/lit8 v13, v13, 0x1

    #@81
    .line 2247
    :cond_4
    const/16 v16, 0x0

    #@83
    .line 2248
    .local v16, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-le v12, v13, :cond_5

    #@85
    .line 2249
    new-instance v16, Ljava/util/ArrayList;

    #@87
    .end local v16    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@8a
    .line 2250
    .local v16, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@8c
    invoke-static {v15, v13, v12, v0}, Ljava/util/Locale;->extractVariantSubtags([Ljava/lang/String;IILjava/util/List;)V

    #@8f
    .line 2251
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@92
    move-result v1

    #@93
    add-int/2addr v13, v1

    #@94
    .line 2254
    .end local v16    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@96
    .line 2255
    .local v8, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    if-le v12, v13, :cond_6

    #@98
    .line 2256
    new-instance v8, Ljava/util/TreeMap;

    #@9a
    .end local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    #@9d
    .line 2257
    .restart local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {v15, v13, v12, v8}, Ljava/util/Locale;->extractExtensions([Ljava/lang/String;IILjava/util/Map;)I

    #@a0
    move-result v13

    #@a1
    .line 2260
    :cond_6
    if-eq v13, v12, :cond_8

    #@a3
    .line 2261
    if-eqz p1, :cond_8

    #@a5
    .line 2262
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@a7
    new-instance v9, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v18, "Unparseable subtag: "

    #@af
    move-object/from16 v0, v18

    #@b1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    aget-object v18, v15, v13

    #@b7
    move-object/from16 v0, v18

    #@b9
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    .line 2263
    const-string/jumbo v18, " from language tag: "

    #@c0
    .line 2262
    move-object/from16 v0, v18

    #@c2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v9

    #@c6
    move-object/from16 v0, p0

    #@c8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v9

    #@d0
    invoke-direct {v1, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v1

    #@d4
    .line 2215
    .end local v2    # "languageCode":Ljava/lang/String;
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v5    # "scriptCode":Ljava/lang/String;
    .end local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v13    # "nextSubtag":I
    .restart local v14    # "subtag":Ljava/lang/String;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@d6
    goto/16 :goto_0

    #@d8
    .line 2267
    .end local v14    # "subtag":Ljava/lang/String;
    .restart local v2    # "languageCode":Ljava/lang/String;
    .restart local v3    # "regionCode":Ljava/lang/String;
    .restart local v5    # "scriptCode":Ljava/lang/String;
    .restart local v8    # "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    .restart local v13    # "nextSubtag":I
    :cond_8
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@da
    .line 2268
    .local v6, "unicodeKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@dc
    .line 2269
    .local v7, "unicodeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x75

    #@de
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e1
    move-result-object v1

    #@e2
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@e5
    move-result v1

    #@e6
    if-eqz v1, :cond_9

    #@e8
    .line 2270
    new-instance v6, Ljava/util/TreeSet;

    #@ea
    .end local v6    # "unicodeKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    #@ed
    .line 2271
    .restart local v6    # "unicodeKeywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/TreeMap;

    #@ef
    .end local v7    # "unicodeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    #@f2
    .line 2272
    .restart local v7    # "unicodeAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x75

    #@f4
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@f7
    move-result-object v1

    #@f8
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    move-result-object v1

    #@fc
    check-cast v1, Ljava/lang/String;

    #@fe
    const-string/jumbo v9, "-"

    #@101
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    invoke-static {v1, v7, v6}, Ljava/util/Locale;->parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    #@108
    .line 2276
    :cond_9
    const-string/jumbo v4, ""

    #@10b
    .line 2277
    .local v4, "variantCode":Ljava/lang/String;
    if-eqz v16, :cond_a

    #@10d
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@110
    move-result v1

    #@111
    if-eqz v1, :cond_b

    #@113
    .line 2288
    :cond_a
    :goto_1
    new-instance v1, Ljava/util/Locale;

    #@115
    .line 2289
    const/4 v9, 0x1

    #@116
    .line 2288
    invoke-direct/range {v1 .. v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Z)V

    #@119
    return-object v1

    #@11a
    .line 2278
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    #@11c
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@11f
    move-result v1

    #@120
    mul-int/lit8 v1, v1, 0x8

    #@122
    move-object/from16 v0, v17

    #@124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@127
    .line 2279
    .local v17, "variantsBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    #@128
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@12b
    move-result v1

    #@12c
    if-ge v11, v1, :cond_d

    #@12e
    .line 2280
    if-eqz v11, :cond_c

    #@130
    .line 2281
    const/16 v1, 0x5f

    #@132
    move-object/from16 v0, v17

    #@134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@137
    .line 2283
    :cond_c
    move-object/from16 v0, v16

    #@139
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13c
    move-result-object v1

    #@13d
    check-cast v1, Ljava/lang/String;

    #@13f
    move-object/from16 v0, v17

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    .line 2279
    add-int/lit8 v11, v11, 0x1

    #@146
    goto :goto_2

    #@147
    .line 2285
    :cond_d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v4

    #@14b
    goto :goto_1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1076
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1095
    invoke-static {}, Ljava/util/Locale$NoImagePreloadHolder;->-get0()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDefaultLocaleFromSystemProperties()Ljava/util/Locale;
    .locals 7

    #@0
    .prologue
    .line 337
    const-string/jumbo v5, "user.locale"

    #@3
    const-string/jumbo v6, ""

    #@6
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 340
    .local v2, "languageTag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    .line 341
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@13
    move-result-object v0

    #@14
    .line 349
    .local v0, "defaultLocale":Ljava/util/Locale;
    :goto_0
    return-object v0

    #@15
    .line 343
    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_0
    const-string/jumbo v5, "user.language"

    #@18
    const-string/jumbo v6, "en"

    #@1b
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 344
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v5, "user.region"

    #@22
    const-string/jumbo v6, "US"

    #@25
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 345
    .local v3, "region":Ljava/lang/String;
    const-string/jumbo v5, "user.variant"

    #@2c
    const-string/jumbo v6, ""

    #@2f
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 346
    .local v4, "variant":Ljava/lang/String;
    new-instance v0, Ljava/util/Locale;

    #@35
    invoke-direct {v0, v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .restart local v0    # "defaultLocale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1318
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1326
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1922
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_4

    #@7
    .line 1923
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 1924
    .local v0, "character":C
    const/16 v2, 0x61

    #@d
    if-lt v0, v2, :cond_0

    #@f
    const/16 v2, 0x7a

    #@11
    if-le v0, v2, :cond_3

    #@13
    .line 1925
    :cond_0
    const/16 v2, 0x41

    #@15
    if-lt v0, v2, :cond_1

    #@17
    const/16 v2, 0x5a

    #@19
    if-le v0, v2, :cond_3

    #@1b
    .line 1926
    :cond_1
    const/16 v2, 0x30

    #@1d
    if-lt v0, v2, :cond_2

    #@1f
    const/16 v2, 0x39

    #@21
    if-le v0, v2, :cond_3

    #@23
    .line 1927
    :cond_2
    const/4 v2, 0x0

    #@24
    return v2

    #@25
    .line 1922
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1931
    .end local v0    # "character":C
    :cond_4
    const/4 v2, 0x1

    #@29
    return v2
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x0

    #@2
    .line 1904
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-eq v2, v4, :cond_0

    #@8
    .line 1905
    return v3

    #@9
    .line 1908
    :cond_0
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    #@c
    .line 1909
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 1910
    .local v0, "character":C
    const/16 v2, 0x30

    #@12
    if-lt v0, v2, :cond_1

    #@14
    const/16 v2, 0x39

    #@16
    if-le v0, v2, :cond_2

    #@18
    .line 1911
    :cond_1
    return v3

    #@19
    .line 1908
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1915
    .end local v0    # "character":C
    :cond_3
    const/4 v2, 0x1

    #@1d
    return v2
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1935
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 1936
    .local v2, "length":I
    if-lt v2, p1, :cond_0

    #@7
    if-le v2, p2, :cond_1

    #@9
    .line 1937
    :cond_0
    return v4

    #@a
    .line 1940
    :cond_1
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@d
    .line 1941
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 1942
    .local v0, "character":C
    const/16 v3, 0x61

    #@13
    if-lt v0, v3, :cond_2

    #@15
    const/16 v3, 0x7a

    #@17
    if-le v0, v3, :cond_4

    #@19
    .line 1943
    :cond_2
    const/16 v3, 0x41

    #@1b
    if-lt v0, v3, :cond_3

    #@1d
    const/16 v3, 0x5a

    #@1f
    if-le v0, v3, :cond_4

    #@21
    .line 1944
    :cond_3
    return v4

    #@22
    .line 1940
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1948
    .end local v0    # "character":C
    :cond_5
    const/4 v3, 0x1

    #@26
    return v3
.end method

.method private static isValidBcp47Alphanum(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "attributeOrType"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    #@0
    .prologue
    .line 1953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-lt v0, p1, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-le v0, p2, :cond_1

    #@c
    .line 1954
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 1957
    :cond_1
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method private static isValidTypeList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "lowerCaseTypeList"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1975
    const-string/jumbo v2, "-"

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1976
    .local v0, "splitList":[Ljava/lang/String;
    array-length v4, v0

    #@9
    move v2, v3

    #@a
    :goto_0
    if-ge v2, v4, :cond_1

    #@c
    aget-object v1, v0, v2

    #@e
    .line 1977
    .local v1, "type":Ljava/lang/String;
    const/4 v5, 0x3

    #@f
    const/16 v6, 0x8

    #@11
    invoke-static {v1, v5, v6}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    #@14
    move-result v5

    #@15
    if-nez v5, :cond_0

    #@17
    .line 1978
    return v3

    #@18
    .line 1976
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1982
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    #@1c
    return v2
.end method

.method private static joinBcp47Subtags(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 2078
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 2080
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljava/lang/String;

    #@d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@14
    .line 2081
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@17
    .line 2082
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 2083
    add-int/lit8 v3, v2, -0x1

    #@22
    if-eq v0, v3, :cond_0

    #@24
    .line 2084
    const/16 v3, 0x2d

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 2081
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2088
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method private makeLanguageTag()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/16 v13, 0x78

    #@2
    const/4 v11, 0x0

    #@3
    const/16 v12, 0x2d

    #@5
    .line 1429
    const-string/jumbo v4, ""

    #@8
    .line 1430
    .local v4, "language":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@b
    .line 1431
    .local v6, "region":Ljava/lang/String;
    const-string/jumbo v9, ""

    #@e
    .line 1432
    .local v9, "variant":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@11
    .line 1434
    .local v3, "illFormedVariantSubtags":Ljava/lang/String;
    iget-boolean v10, p0, Ljava/util/Locale;->hasValidatedFields:Z

    #@13
    if-eqz v10, :cond_6

    #@15
    .line 1435
    iget-object v4, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@17
    .line 1436
    iget-object v6, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@19
    .line 1439
    iget-object v10, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@1b
    const/16 v11, 0x5f

    #@1d
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@20
    move-result-object v9

    #@21
    .line 1458
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@24
    move-result v10

    #@25
    if-eqz v10, :cond_0

    #@27
    .line 1459
    const-string/jumbo v4, "und"

    #@2a
    .line 1462
    :cond_0
    const-string/jumbo v10, "no"

    #@2d
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v10

    #@31
    if-eqz v10, :cond_1

    #@33
    const-string/jumbo v10, "NO"

    #@36
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v10

    #@3a
    if-eqz v10, :cond_1

    #@3c
    const-string/jumbo v10, "NY"

    #@3f
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v10

    #@43
    if-eqz v10, :cond_1

    #@45
    .line 1463
    const-string/jumbo v4, "nn"

    #@48
    .line 1464
    const-string/jumbo v6, "NO"

    #@4b
    .line 1465
    const-string/jumbo v9, ""

    #@4e
    .line 1468
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    const/16 v10, 0x10

    #@52
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    #@55
    .line 1469
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1471
    iget-object v10, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@5a
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@5d
    move-result v10

    #@5e
    if-nez v10, :cond_2

    #@60
    .line 1472
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    .line 1473
    iget-object v10, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@65
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 1476
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@6b
    move-result v10

    #@6c
    if-nez v10, :cond_3

    #@6e
    .line 1477
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 1478
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 1481
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@77
    move-result v10

    #@78
    if-nez v10, :cond_4

    #@7a
    .line 1482
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    .line 1483
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 1488
    :cond_4
    iget-object v10, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@82
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@85
    move-result-object v10

    #@86
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@89
    move-result-object v1

    #@8a
    .local v1, "extension$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8d
    move-result v10

    #@8e
    if-eqz v10, :cond_7

    #@90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Ljava/util/Map$Entry;

    #@96
    .line 1489
    .local v0, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@99
    move-result-object v10

    #@9a
    check-cast v10, Ljava/lang/Character;

    #@9c
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@9f
    move-result-object v11

    #@a0
    invoke-virtual {v10, v11}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v10

    #@a4
    if-nez v10, :cond_5

    #@a6
    .line 1490
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v10

    #@aa
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ad
    move-result-object v11

    #@ae
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    .line 1491
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b8
    move-result-object v10

    #@b9
    check-cast v10, Ljava/lang/String;

    #@bb
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    goto :goto_1

    #@bf
    .line 1441
    .end local v0    # "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    .end local v1    # "extension$iterator":Ljava/util/Iterator;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v10, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@c1
    invoke-static {v10, v11}, Ljava/util/Locale$Builder;->-wrap1(Ljava/lang/String;Z)Ljava/lang/String;

    #@c4
    move-result-object v4

    #@c5
    .line 1442
    iget-object v10, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@c7
    invoke-static {v10, v11}, Ljava/util/Locale$Builder;->-wrap2(Ljava/lang/String;Z)Ljava/lang/String;

    #@ca
    move-result-object v6

    #@cb
    .line 1445
    :try_start_0
    iget-object v10, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@cd
    invoke-static {v10}, Ljava/util/Locale$Builder;->-wrap4(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    #@d0
    move-result-object v9

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1446
    :catch_0
    move-exception v2

    #@d4
    .line 1451
    .local v2, "ilfe":Ljava/util/IllformedLocaleException;
    iget-object v10, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@d6
    invoke-static {v10}, Ljava/util/Locale;->splitIllformedVariant(Ljava/lang/String;)[Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    .line 1453
    .local v8, "split":[Ljava/lang/String;
    aget-object v9, v8, v11

    #@dc
    .line 1454
    const/4 v10, 0x1

    #@dd
    aget-object v3, v8, v10

    #@df
    goto/16 :goto_0

    #@e1
    .line 1496
    .end local v2    # "ilfe":Ljava/util/IllformedLocaleException;
    .end local v8    # "split":[Ljava/lang/String;
    .restart local v1    # "extension$iterator":Ljava/util/Iterator;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v10, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@e3
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e6
    move-result-object v11

    #@e7
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    move-result-object v5

    #@eb
    check-cast v5, Ljava/lang/String;

    #@ed
    .line 1497
    .local v5, "privateUse":Ljava/lang/String;
    if-eqz v5, :cond_8

    #@ef
    .line 1498
    const-string/jumbo v10, "-x-"

    #@f2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    .line 1499
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    .line 1505
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@fb
    move-result v10

    #@fc
    if-nez v10, :cond_9

    #@fe
    .line 1506
    if-nez v5, :cond_a

    #@100
    .line 1507
    const-string/jumbo v10, "-x-lvariant-"

    #@103
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    .line 1511
    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    .line 1514
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v10

    #@10d
    return-object v10

    #@10e
    .line 1509
    :cond_a
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@111
    goto :goto_2
.end method

.method public static parseSerializedExtensions(Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p0, "extString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    .line 1868
    const-string/jumbo v10, "-"

    #@4
    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 1869
    .local v5, "subTags":[Ljava/lang/String;
    array-length v10, v5

    #@9
    div-int/lit8 v10, v10, 0x2

    #@b
    new-array v6, v10, [I

    #@d
    .line 1871
    .local v6, "typeStartIndices":[I
    const/4 v3, 0x0

    #@e
    .line 1872
    .local v3, "length":I
    const/4 v0, 0x0

    #@f
    .line 1873
    .local v0, "count":I
    array-length v10, v5

    #@10
    move v1, v0

    #@11
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v9, v10, :cond_1

    #@13
    aget-object v4, v5, v9

    #@15
    .line 1874
    .local v4, "subTag":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@18
    move-result v11

    #@19
    if-lez v11, :cond_0

    #@1b
    .line 1876
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1e
    move-result v11

    #@1f
    add-int/lit8 v11, v11, 0x1

    #@21
    add-int/2addr v3, v11

    #@22
    .line 1879
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@25
    move-result v11

    #@26
    const/4 v12, 0x1

    #@27
    if-ne v11, v12, :cond_4

    #@29
    .line 1880
    add-int/lit8 v0, v1, 0x1

    #@2b
    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput v3, v6, v1

    #@2d
    .line 1873
    :goto_1
    add-int/lit8 v9, v9, 0x1

    #@2f
    move v1, v0

    #@30
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    #@31
    .line 1884
    .end local v4    # "subTag":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@32
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    #@34
    .line 1885
    aget v8, v6, v2

    #@36
    .line 1891
    .local v8, "valueStart":I
    add-int/lit8 v9, v1, -0x1

    #@38
    if-ne v2, v9, :cond_2

    #@3a
    .line 1892
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3d
    move-result v7

    #@3e
    .line 1894
    .local v7, "valueEnd":I
    :goto_3
    aget v9, v6, v2

    #@40
    add-int/lit8 v9, v9, -0x2

    #@42
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v9

    #@46
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@49
    move-result-object v9

    #@4a
    .line 1895
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v10

    #@4e
    .line 1894
    invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 1884
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_2

    #@54
    .line 1892
    .end local v7    # "valueEnd":I
    :cond_2
    add-int/lit8 v9, v2, 0x1

    #@56
    aget v9, v6, v9

    #@58
    add-int/lit8 v7, v9, -0x3

    #@5a
    .restart local v7    # "valueEnd":I
    goto :goto_3

    #@5b
    .line 1860
    .end local v7    # "valueEnd":I
    .end local v8    # "valueStart":I
    :cond_3
    return-void

    #@5c
    .end local v2    # "i":I
    .restart local v4    # "subTag":Ljava/lang/String;
    :cond_4
    move v0, v1

    #@5d
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public static parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .locals 7
    .param p0, "subtags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 2047
    const/4 v0, 0x0

    #@3
    .line 2048
    .local v0, "lastKeyword":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 2049
    .local v2, "subtagsForKeyword":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, p0

    #@9
    .end local v0    # "lastKeyword":Ljava/lang/String;
    :goto_0
    if-ge v3, v4, :cond_4

    #@b
    aget-object v1, p0, v3

    #@d
    .line 2050
    .local v1, "subtag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@10
    move-result v5

    #@11
    if-ne v5, v6, :cond_2

    #@13
    .line 2051
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@16
    move-result v5

    #@17
    if-lez v5, :cond_0

    #@19
    .line 2052
    invoke-static {v2}, Ljava/util/Locale;->joinBcp47Subtags(Ljava/util/List;)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 2053
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@23
    .line 2056
    :cond_0
    move-object v0, v1

    #@24
    .line 2049
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2057
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@2a
    move-result v5

    #@2b
    if-le v5, v6, :cond_1

    #@2d
    .line 2058
    if-nez v0, :cond_3

    #@2f
    .line 2059
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_1

    #@33
    .line 2061
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_1

    #@37
    .line 2066
    .end local v1    # "subtag":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@3a
    move-result v3

    #@3b
    if-lez v3, :cond_6

    #@3d
    .line 2067
    invoke-static {v2}, Ljava/util/Locale;->joinBcp47Subtags(Ljava/util/List;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 2046
    :cond_5
    :goto_2
    return-void

    #@45
    .line 2068
    :cond_6
    if-eqz v0, :cond_5

    #@47
    .line 2069
    const-string/jumbo v3, ""

    #@4a
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    goto :goto_2
.end method

.method private readExtensions(Ljava/lang/String;)V
    .locals 7
    .param p1, "extensions"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x75

    #@2
    .line 1806
    new-instance v0, Ljava/util/TreeMap;

    #@4
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@7
    .line 1807
    .local v0, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1, v0}, Ljava/util/Locale;->parseSerializedExtensions(Ljava/lang/String;Ljava/util/Map;)V

    #@a
    .line 1808
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@d
    move-result-object v5

    #@e
    iput-object v5, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@10
    .line 1810
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 1811
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    .line 1812
    .local v3, "unicodeExtension":Ljava/lang/String;
    const-string/jumbo v5, "-"

    #@27
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 1814
    .local v1, "subTags":[Ljava/lang/String;
    new-instance v4, Ljava/util/TreeMap;

    #@2d
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    #@30
    .line 1815
    .local v4, "unicodeKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/TreeSet;

    #@32
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@35
    .line 1816
    .local v2, "unicodeAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1, v4, v2}, Ljava/util/Locale;->parseUnicodeExtension([Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    #@38
    .line 1818
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@3b
    move-result-object v5

    #@3c
    iput-object v5, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@3e
    .line 1819
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@41
    move-result-object v5

    #@42
    iput-object v5, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@44
    .line 1805
    .end local v1    # "subTags":[Ljava/lang/String;
    .end local v2    # "unicodeAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "unicodeExtension":Ljava/lang/String;
    .end local v4    # "unicodeKeywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1789
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v1

    #@5
    .line 1790
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v2, "country"

    #@8
    const-string/jumbo v3, ""

    #@b
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/lang/String;

    #@11
    iput-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@13
    .line 1791
    const-string/jumbo v2, "language"

    #@16
    const-string/jumbo v3, ""

    #@19
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    iput-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@21
    .line 1792
    const-string/jumbo v2, "variant"

    #@24
    const-string/jumbo v3, ""

    #@27
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/String;

    #@2d
    iput-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@2f
    .line 1793
    const-string/jumbo v2, "script"

    #@32
    const-string/jumbo v3, ""

    #@35
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Ljava/lang/String;

    #@3b
    iput-object v2, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@3d
    .line 1795
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@3f
    iput-object v2, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@41
    .line 1796
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@43
    iput-object v2, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@45
    .line 1797
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@47
    iput-object v2, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@49
    .line 1799
    const-string/jumbo v2, "extensions"

    #@4c
    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Ljava/lang/String;

    #@52
    .line 1800
    .local v0, "extensions":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@54
    .line 1801
    invoke-direct {p0, v0}, Ljava/util/Locale;->readExtensions(Ljava/lang/String;)V

    #@57
    .line 1788
    :cond_0
    return-void
.end method

.method public static serializeExtensions(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "extensionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v4, 0x2d

    #@2
    .line 1836
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .line 1837
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    const/16 v3, 0x40

    #@e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@11
    .line 1840
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 1841
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    .line 1842
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 1843
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/String;

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 1845
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_0

    #@30
    .line 1846
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    goto :goto_0

    #@34
    .line 1852
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    return-object v3
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const-class v2, Ljava/util/Locale;

    #@2
    monitor-enter v2

    #@3
    .line 1685
    if-nez p0, :cond_0

    #@5
    .line 1686
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "locale == null"

    #@a
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1

    #@11
    .line 1688
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1689
    .local v0, "languageTag":Ljava/lang/String;
    invoke-static {p0}, Ljava/util/Locale$NoImagePreloadHolder;->-set0(Ljava/util/Locale;)Ljava/util/Locale;

    #@18
    .line 1690
    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 1684
    return-void
.end method

.method private static splitIllformedVariant(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p0, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v12, 0x8

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 1533
    const/16 v8, 0x5f

    #@6
    const/16 v9, 0x2d

    #@8
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 1534
    .local v4, "normalizedVariant":Ljava/lang/String;
    const-string/jumbo v8, "-"

    #@f
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    .line 1536
    .local v7, "subTags":[Ljava/lang/String;
    const/4 v8, 0x2

    #@14
    new-array v5, v8, [Ljava/lang/String;

    #@16
    const-string/jumbo v8, ""

    #@19
    aput-object v8, v5, v10

    #@1b
    const-string/jumbo v8, ""

    #@1e
    aput-object v8, v5, v11

    #@20
    .line 1551
    .local v5, "split":[Ljava/lang/String;
    array-length v2, v7

    #@21
    .line 1552
    .local v2, "firstInvalidSubtag":I
    const/4 v3, 0x0

    #@22
    .local v3, "i":I
    :goto_0
    array-length v8, v7

    #@23
    if-ge v3, v8, :cond_0

    #@25
    .line 1553
    aget-object v8, v7, v3

    #@27
    invoke-static {v8, v11, v12}, Ljava/util/Locale;->isValidBcp47Alphanum(Ljava/lang/String;II)Z

    #@2a
    move-result v8

    #@2b
    if-nez v8, :cond_1

    #@2d
    .line 1554
    move v2, v3

    #@2e
    .line 1559
    :cond_0
    if-nez v2, :cond_2

    #@30
    .line 1560
    return-object v5

    #@31
    .line 1552
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1565
    :cond_2
    move v1, v2

    #@35
    .line 1566
    .local v1, "firstIllformedSubtag":I
    const/4 v3, 0x0

    #@36
    :goto_1
    if-ge v3, v2, :cond_8

    #@38
    .line 1567
    aget-object v6, v7, v3

    #@3a
    .line 1571
    .local v6, "subTag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3d
    move-result v8

    #@3e
    const/4 v9, 0x5

    #@3f
    if-lt v8, v9, :cond_4

    #@41
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@44
    move-result v8

    #@45
    if-gt v8, v12, :cond_4

    #@47
    .line 1572
    invoke-static {v6}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    #@4a
    move-result v8

    #@4b
    if-nez v8, :cond_3

    #@4d
    .line 1573
    move v1, v3

    #@4e
    .line 1566
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_1

    #@51
    .line 1575
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@54
    move-result v8

    #@55
    const/4 v9, 0x4

    #@56
    if-ne v8, v9, :cond_7

    #@58
    .line 1576
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    #@5b
    move-result v0

    #@5c
    .line 1577
    .local v0, "firstChar":C
    const/16 v8, 0x30

    #@5e
    if-lt v0, v8, :cond_5

    #@60
    const/16 v8, 0x39

    #@62
    if-le v0, v8, :cond_6

    #@64
    .line 1578
    :cond_5
    move v1, v3

    #@65
    goto :goto_2

    #@66
    .line 1577
    :cond_6
    invoke-static {v6}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    #@69
    move-result v8

    #@6a
    if-eqz v8, :cond_5

    #@6c
    goto :goto_2

    #@6d
    .line 1581
    .end local v0    # "firstChar":C
    :cond_7
    move v1, v3

    #@6e
    goto :goto_2

    #@6f
    .line 1585
    .end local v6    # "subTag":Ljava/lang/String;
    :cond_8
    invoke-static {v7, v10, v1}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    aput-object v8, v5, v10

    #@75
    .line 1586
    invoke-static {v7, v1, v2}, Ljava/util/Locale;->concatenateRange([Ljava/lang/String;II)Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    aput-object v8, v5, v11

    #@7b
    .line 1588
    return-object v5
.end method

.method private static titleCaseAsciiWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "word"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1962
    :try_start_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@b
    move-result-object v0

    #@c
    .line 1963
    .local v0, "chars":[B
    const/4 v2, 0x0

    #@d
    aget-byte v2, v0, v2

    #@f
    add-int/lit8 v2, v2, 0x41

    #@11
    add-int/lit8 v2, v2, -0x61

    #@13
    int-to-byte v2, v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-byte v2, v0, v3

    #@17
    .line 1964
    new-instance v2, Ljava/lang/String;

    #@19
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@1b
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    return-object v2

    #@1f
    .line 1965
    .end local v0    # "chars":[B
    :catch_0
    move-exception v1

    #@20
    .line 1966
    .local v1, "uoe":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@25
    throw v2
.end method

.method private static toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "variantCode"    # Ljava/lang/String;
    .param p3, "scriptCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    const/16 v3, 0x5f

    #@2
    .line 1717
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1718
    const-string/jumbo v2, ""

    #@11
    return-object v2

    #@12
    .line 1725
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    const/16 v2, 0xb

    #@16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@19
    .line 1726
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 1728
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_9

    #@22
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_9

    #@28
    const/4 v0, 0x0

    #@29
    .line 1730
    .local v0, "hasScriptOrExtensions":Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_1

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 1731
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 1733
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 1734
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_3

    #@43
    if-eqz v0, :cond_4

    #@45
    .line 1735
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    .line 1737
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 1739
    if-eqz v0, :cond_8

    #@4d
    .line 1740
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_5

    #@53
    .line 1741
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 1747
    :cond_5
    const-string/jumbo v2, "#"

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 1748
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    #@5f
    move-result v2

    #@60
    if-nez v2, :cond_6

    #@62
    .line 1749
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 1753
    :cond_6
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    #@68
    move-result v2

    #@69
    if-nez v2, :cond_8

    #@6b
    .line 1754
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    #@6e
    move-result v2

    #@6f
    if-nez v2, :cond_7

    #@71
    .line 1755
    const/16 v2, 0x2d

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@76
    .line 1757
    :cond_7
    invoke-static {p4}, Ljava/util/Locale;->serializeExtensions(Ljava/util/Map;)Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 1761
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    return-object v2

    #@82
    .line 1728
    .end local v0    # "hasScriptOrExtensions":Z
    :cond_9
    const/4 v0, 0x1

    #@83
    .restart local v0    # "hasScriptOrExtensions":Z
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1774
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 1775
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "country"

    #@7
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 1776
    const-string/jumbo v1, "hashcode"

    #@f
    const/4 v2, -0x1

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@13
    .line 1777
    const-string/jumbo v1, "language"

    #@16
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 1778
    const-string/jumbo v1, "variant"

    #@1e
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 1779
    const-string/jumbo v1, "script"

    #@26
    iget-object v2, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2b
    .line 1781
    iget-object v1, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@2d
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_0

    #@33
    .line 1782
    const-string/jumbo v1, "extensions"

    #@36
    iget-object v2, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@38
    invoke-static {v2}, Ljava/util/Locale;->serializeExtensions(Ljava/util/Map;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    .line 1785
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@42
    .line 1773
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 1035
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 1036
    :catch_0
    move-exception v0

    #@6
    .line 1037
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1046
    if-ne p1, p0, :cond_0

    #@3
    .line 1047
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1049
    :cond_0
    instance-of v2, p1, Ljava/util/Locale;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 1050
    check-cast v0, Ljava/util/Locale;

    #@c
    .line 1051
    .local v0, "o":Ljava/util/Locale;
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@e
    iget-object v3, v0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 1052
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@18
    iget-object v3, v0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    .line 1051
    if-eqz v2, :cond_1

    #@20
    .line 1053
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@22
    iget-object v3, v0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 1051
    if-eqz v2, :cond_1

    #@2a
    .line 1054
    iget-object v2, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@2c
    iget-object v3, v0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    .line 1051
    if-eqz v2, :cond_1

    #@34
    .line 1055
    iget-object v1, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@36
    iget-object v2, v0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@38
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    .line 1051
    :cond_1
    return v1

    #@3d
    .line 1058
    .end local v0    # "o":Ljava/util/Locale;
    :cond_2
    return v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1084
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1111
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1112
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 1116
    :cond_0
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    .line 1115
    invoke-static {v2, v3}, Ljava/util/Locale$Builder;->-wrap2(Ljava/lang/String;Z)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1117
    .local v0, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 1118
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@1b
    return-object v2

    #@1c
    .line 1121
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 1122
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    #@22
    .line 1123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@25
    move-result-object v2

    #@26
    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 1125
    :cond_2
    return-object v1
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1140
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1141
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 1152
    :cond_0
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    .line 1151
    invoke-static {v2, v3}, Ljava/util/Locale$Builder;->-wrap1(Ljava/lang/String;Z)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1153
    .local v0, "normalizedLanguage":Ljava/lang/String;
    const-string/jumbo v2, "und"

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 1154
    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@1e
    return-object v2

    #@1f
    .line 1159
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1160
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    #@25
    .line 1161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@28
    move-result-object v2

    #@29
    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1163
    :cond_2
    return-object v1
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1170
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    .line 1190
    const/4 v1, 0x0

    #@3
    .line 1191
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 1192
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@a
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@d
    move-result v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 1193
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 1194
    .local v3, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@1c
    .end local v3    # "displayLanguage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1195
    const/4 v1, 0x1

    #@20
    .line 1197
    :cond_1
    iget-object v6, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@22
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v6

    #@26
    if-nez v6, :cond_4

    #@28
    .line 1198
    if-ne v1, v7, :cond_2

    #@2a
    .line 1199
    const-string/jumbo v6, " ("

    #@2d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1201
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 1202
    .local v4, "displayScript":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_3

    #@3a
    iget-object v4, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@3c
    .end local v4    # "displayScript":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 1203
    add-int/lit8 v1, v1, 0x1

    #@41
    .line 1205
    :cond_4
    iget-object v6, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@43
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_7

    #@49
    .line 1206
    if-ne v1, v7, :cond_c

    #@4b
    .line 1207
    const-string/jumbo v6, " ("

    #@4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 1211
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 1212
    .local v2, "displayCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_6

    #@5b
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@5d
    .end local v2    # "displayCountry":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 1213
    add-int/lit8 v1, v1, 0x1

    #@62
    .line 1215
    :cond_7
    iget-object v6, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@64
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@67
    move-result v6

    #@68
    if-nez v6, :cond_a

    #@6a
    .line 1216
    if-ne v1, v7, :cond_d

    #@6c
    .line 1217
    const-string/jumbo v6, " ("

    #@6f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 1221
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 1222
    .local v5, "displayVariant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_9

    #@7c
    iget-object v5, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@7e
    .end local v5    # "displayVariant":Ljava/lang/String;
    :cond_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 1223
    add-int/lit8 v1, v1, 0x1

    #@83
    .line 1225
    :cond_a
    if-le v1, v7, :cond_b

    #@85
    .line 1226
    const-string/jumbo v6, ")"

    #@88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 1228
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    return-object v6

    #@90
    .line 1208
    :cond_c
    if-ne v1, v8, :cond_5

    #@92
    .line 1209
    const-string/jumbo v6, ","

    #@95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    goto :goto_0

    #@99
    .line 1218
    :cond_d
    if-eq v1, v8, :cond_e

    #@9b
    const/4 v6, 0x3

    #@9c
    if-ne v1, v6, :cond_8

    #@9e
    .line 1219
    :cond_e
    const-string/jumbo v6, ","

    #@a1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    goto :goto_1
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1375
    iget-object v1, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1376
    const-string/jumbo v1, ""

    #@b
    return-object v1

    #@c
    .line 1379
    :cond_0
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1380
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    #@12
    .line 1381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@15
    move-result-object v1

    #@16
    invoke-static {p0, v1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1384
    :cond_1
    return-object v0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1250
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1251
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 1255
    :cond_0
    :try_start_0
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@e
    invoke-static {v2}, Ljava/util/Locale$Builder;->-wrap4(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1260
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1261
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    #@17
    .line 1262
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1269
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 1270
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@27
    return-object v2

    #@28
    .line 1256
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@29
    .line 1257
    .local v0, "ilfe":Ljava/util/IllformedLocaleException;
    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@2b
    return-object v2

    #@2c
    .line 1272
    .end local v0    # "ilfe":Ljava/util/IllformedLocaleException;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 2
    .param p1, "extensionKey"    # C

    #@0
    .prologue
    .line 1630
    iget-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1616
    iget-object v0, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "en-"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1285
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@1c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 1286
    new-instance v1, Ljava/util/MissingResourceException;

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "No 3-letter country code for locale: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "FormatData_"

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, "ShortCountry"

    #@55
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 1288
    :cond_0
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1300
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1301
    const-string/jumbo v1, ""

    #@b
    return-object v1

    #@c
    .line 1306
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@e
    invoke-static {v1}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1307
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 1308
    new-instance v1, Ljava/util/MissingResourceException;

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "No 3-letter language code for locale: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "FormatData_"

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    const-string/jumbo v4, "ShortLanguage"

    #@4d
    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    throw v1

    #@51
    .line 1310
    :cond_1
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1334
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1355
    iget-object v0, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
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
    .line 1654
    iget-object v0, p0, Ljava/util/Locale;->unicodeAttributes:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
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
    .line 1666
    iget-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1642
    iget-object v0, p0, Ljava/util/Locale;->unicodeKeywords:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1342
    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1671
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    .line 1672
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v1

    #@d
    .line 1671
    add-int/2addr v0, v1

    #@e
    .line 1672
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v1

    #@14
    .line 1671
    add-int/2addr v0, v1

    #@15
    .line 1673
    iget-object v1, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@1a
    move-result v1

    #@1b
    .line 1671
    add-int/2addr v0, v1

    #@1c
    .line 1673
    iget-object v1, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@1e
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v1

    #@22
    .line 1671
    add-int/2addr v0, v1

    #@23
    monitor-exit p0

    #@24
    return v0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1410
    iget-object v0, p0, Ljava/util/Locale;->cachedLanguageTag:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1411
    invoke-direct {p0}, Ljava/util/Locale;->makeLanguageTag()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/util/Locale;->cachedLanguageTag:Ljava/lang/String;

    #@a
    .line 1414
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->cachedLanguageTag:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1706
    iget-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    #@2
    .line 1707
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@4
    .line 1708
    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    #@6
    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    #@8
    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    #@a
    .line 1709
    iget-object v4, p0, Ljava/util/Locale;->scriptCode:Ljava/lang/String;

    #@c
    iget-object v5, p0, Ljava/util/Locale;->extensions:Ljava/util/Map;

    #@e
    .line 1708
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->toNewString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    #@14
    .line 1711
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
