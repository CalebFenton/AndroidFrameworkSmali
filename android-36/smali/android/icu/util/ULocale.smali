.class public final Landroid/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/ULocale$JDKLocaleHelper;,
        Landroid/icu/util/ULocale$Category;,
        Landroid/icu/util/ULocale$AvailableType;,
        Landroid/icu/util/ULocale$RegionValidateMap;,
        Landroid/icu/util/ULocale$AliasReplacer;,
        Landroid/icu/util/ULocale$Minimize;,
        Landroid/icu/util/ULocale$Type;,
        Landroid/icu/util/ULocale$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static greylist-max-o ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static final greylist-max-o CACHE:Landroid/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SoftCache<",
            "Ljava/util/Locale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api CANADA:Landroid/icu/util/ULocale;

.field public static final whitelist test-api CANADA_FRENCH:Landroid/icu/util/ULocale;

.field private static greylist-max-o CANONICALIZE_MAP:[[Ljava/lang/String; = null

.field public static final whitelist test-api CHINA:Landroid/icu/util/ULocale;

.field public static final whitelist test-api CHINESE:Landroid/icu/util/ULocale;

.field private static final greylist-max-o EMPTY_LOCALE:Ljava/util/Locale;

.field private static final greylist-max-o EMPTY_STRING:Ljava/lang/String; = ""

.field public static final whitelist test-api ENGLISH:Landroid/icu/util/ULocale;

.field public static final whitelist test-api FRANCE:Landroid/icu/util/ULocale;

.field public static final whitelist test-api FRENCH:Landroid/icu/util/ULocale;

.field public static final whitelist test-api GERMAN:Landroid/icu/util/ULocale;

.field public static final whitelist test-api GERMANY:Landroid/icu/util/ULocale;

.field public static final whitelist test-api ITALIAN:Landroid/icu/util/ULocale;

.field public static final whitelist test-api ITALY:Landroid/icu/util/ULocale;

.field public static final whitelist test-api JAPAN:Landroid/icu/util/ULocale;

.field public static final whitelist test-api JAPANESE:Landroid/icu/util/ULocale;

.field public static final whitelist test-api KOREA:Landroid/icu/util/ULocale;

.field public static final whitelist test-api KOREAN:Landroid/icu/util/ULocale;

.field private static final greylist-max-o LANG_DIR_STRING:Ljava/lang/String; = "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

.field private static final greylist-max-o LOCALE_ATTRIBUTE_KEY:Ljava/lang/String; = "attribute"

.field public static final whitelist test-api PRC:Landroid/icu/util/ULocale;

.field public static final whitelist test-api PRIVATE_USE_EXTENSION:C = 'x'

.field public static final whitelist test-api ROOT:Landroid/icu/util/ULocale;

.field public static final whitelist test-api SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

.field public static final whitelist test-api TAIWAN:Landroid/icu/util/ULocale;

.field public static final whitelist test-api TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

.field public static final whitelist test-api UK:Landroid/icu/util/ULocale;

.field private static final greylist-max-o UNDEFINED_LANGUAGE:Ljava/lang/String; = "und"

.field private static final greylist-max-o UNDEFINED_REGION:Ljava/lang/String; = "ZZ"

.field private static final greylist-max-o UNDEFINED_SCRIPT:Ljava/lang/String; = "Zzzz"

.field private static final greylist-max-o UNDERSCORE:C = '_'

.field public static final whitelist test-api UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final whitelist test-api US:Landroid/icu/util/ULocale;

.field public static greylist-max-o VALID_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static greylist-max-o defaultCategoryLocales:[Ljava/util/Locale; = null

.field private static greylist-max-o defaultCategoryULocales:[Landroid/icu/util/ULocale; = null

.field private static volatile greylist-max-o defaultULocale:Landroid/icu/util/ULocale; = null

.field private static blacklist gKnownCanonicalizedCases:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o nameCache:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x338ef66846d00be1L


# instance fields
.field private volatile transient greylist-max-o baseLocale:Landroid/icu/impl/locale/BaseLocale;

.field private volatile transient greylist-max-o extensions:Landroid/icu/impl/locale/LocaleExtensions;

.field private volatile transient greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o localeID:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mbase(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;
    .registers 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextensions(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;
    .registers 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 21

    .line 104
    nop

    .line 109
    new-instance v0, Landroid/icu/util/ULocale$1;

    invoke-direct {v0}, Landroid/icu/util/ULocale$1;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/CacheBase;

    .line 153
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "en"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ENGLISH:Landroid/icu/util/ULocale;

    .line 158
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "fr"

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->FRENCH:Landroid/icu/util/ULocale;

    .line 163
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "de"

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->GERMAN:Landroid/icu/util/ULocale;

    .line 168
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "it"

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ITALIAN:Landroid/icu/util/ULocale;

    .line 173
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "ja"

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->JAPANESE:Landroid/icu/util/ULocale;

    .line 178
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "ko"

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->KOREAN:Landroid/icu/util/ULocale;

    .line 183
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v2, "zh"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->CHINESE:Landroid/icu/util/ULocale;

    .line 211
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "zh_Hans"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

    .line 217
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "zh_Hant"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

    .line 222
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "fr_FR"

    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->FRANCE:Landroid/icu/util/ULocale;

    .line 227
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "de_DE"

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->GERMANY:Landroid/icu/util/ULocale;

    .line 232
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "it_IT"

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ITALY:Landroid/icu/util/ULocale;

    .line 237
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "ja_JP"

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->JAPAN:Landroid/icu/util/ULocale;

    .line 242
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "ko_KR"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->KOREA:Landroid/icu/util/ULocale;

    .line 247
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "zh_Hans_CN"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    .line 252
    sget-object v0, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    sput-object v0, Landroid/icu/util/ULocale;->PRC:Landroid/icu/util/ULocale;

    .line 257
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "zh_Hant_TW"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->TAIWAN:Landroid/icu/util/ULocale;

    .line 262
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "en_GB"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->UK:Landroid/icu/util/ULocale;

    .line 267
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "en_US"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    .line 272
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "en_CA"

    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->CANADA:Landroid/icu/util/ULocale;

    .line 277
    new-instance v0, Landroid/icu/util/ULocale;

    const-string v1, "fr_CA"

    sget-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->CANADA_FRENCH:Landroid/icu/util/ULocale;

    .line 288
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    .line 296
    new-instance v0, Landroid/icu/util/ULocale;

    sget-object v3, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 313
    new-instance v0, Landroid/icu/util/ULocale$2;

    invoke-direct {v0}, Landroid/icu/util/ULocale$2;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SoftCache;

    .line 342
    const-string v0, "art__LOJBAN"

    const-string v1, "jbo"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "cel__GAULISH"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "de__1901"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "de__1906"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "en__BOONT"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "en__SCOUSE"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "hy__AREVELA"

    const-string v1, "hy"

    const/4 v9, 0x0

    filled-new-array {v0, v1, v9, v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "hy__AREVMDA"

    const-string v10, "hyw"

    filled-new-array {v1, v10, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const-string v1, "sl__ROZAJ"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v1, "zh__GUOYU"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v1, "zh__HAKKA"

    const-string v2, "hak"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v1, "zh__XIANG"

    const-string v2, "hsn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const-string v1, "zh_GAN"

    const-string v2, "gan"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "zh_MIN"

    const-string v2, "zh__MIN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "zh_MIN_NAN"

    const-string v2, "nan"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v17

    const-string v1, "zh_WUU"

    const-string v2, "wuu"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v18

    const-string v1, "zh_YUE"

    const-string v2, "yue"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v9

    move-object v9, v0

    move-object/from16 v0, v20

    filled-new-array/range {v3 .. v19}, [[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    .line 497
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/util/Locale;

    sput-object v1, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    .line 498
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/icu/util/ULocale;

    sput-object v1, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    .line 501
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 502
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 504
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c6

    .line 505
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v2

    array-length v4, v2

    :goto_1a7
    if-ge v3, v4, :cond_1e0

    aget-object v5, v2, v3

    .line 506
    .local v5, "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v5}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v6

    .line 507
    .local v6, "idx":I
    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {v5}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v8

    aput-object v8, v7, v6

    .line 508
    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v8, v8, v6

    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v8

    aput-object v8, v7, v6

    .line 505
    .end local v5    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v6    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a7

    .line 513
    :cond_1c6
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v2

    array-length v4, v2

    :goto_1cb
    if-ge v3, v4, :cond_1e0

    aget-object v5, v2, v3

    .line 514
    .restart local v5    # "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v5}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v6

    .line 515
    .restart local v6    # "idx":I
    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v7, v6

    .line 516
    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v8, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    aput-object v8, v7, v6

    .line 513
    .end local v5    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v6    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1cb

    .line 1763
    .end local v1    # "defaultLocale":Ljava/util/Locale;
    :cond_1e0
    sput-object v0, Landroid/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    .line 2425
    new-instance v1, Landroid/icu/util/ULocale$Type;

    invoke-direct {v1, v0}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale-IA;)V

    sput-object v1, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    .line 2440
    new-instance v1, Landroid/icu/util/ULocale$Type;

    invoke-direct {v1, v0}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale-IA;)V

    sput-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "localeID"    # Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    invoke-static {p1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const-string v0, ""

    invoke-static {p1, p2, p3, v0}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 436
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 369
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static whitelist test-api acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .registers 10
    .param p0, "acceptLanguageList"    # Ljava/lang/String;
    .param p1, "availableLocales"    # [Landroid/icu/util/ULocale;
    .param p2, "fallback"    # [Z

    .line 2472
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 2473
    const/4 v1, 0x1

    aput-boolean v1, p2, v0

    .line 2477
    :cond_6
    const/4 v1, 0x0

    :try_start_7
    invoke-static {p0}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_46

    .line 2480
    .local v2, "desired":Landroid/icu/util/LocalePriorityList;
    nop

    .line 2481
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->builder()Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v3

    .line 2482
    .local v3, "builder":Landroid/icu/util/LocaleMatcher$Builder;
    array-length v4, p1

    move v5, v0

    :goto_16
    if-ge v5, v4, :cond_20

    aget-object v6, p1, v5

    .line 2483
    .local v6, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v3, v6}, Landroid/icu/util/LocaleMatcher$Builder;->addSupportedULocale(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;

    .line 2482
    .end local v6    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2485
    :cond_20
    invoke-virtual {v3}, Landroid/icu/util/LocaleMatcher$Builder;->build()Landroid/icu/util/LocaleMatcher;

    move-result-object v4

    .line 2486
    .local v4, "matcher":Landroid/icu/util/LocaleMatcher;
    invoke-virtual {v4, v2}, Landroid/icu/util/LocaleMatcher;->getBestMatchResult(Ljava/lang/Iterable;)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v5

    .line 2487
    .local v5, "result":Landroid/icu/util/LocaleMatcher$Result;
    invoke-virtual {v5}, Landroid/icu/util/LocaleMatcher$Result;->getDesiredIndex()I

    move-result v6

    if-ltz v6, :cond_45

    .line 2488
    if-eqz p2, :cond_40

    invoke-virtual {v5}, Landroid/icu/util/LocaleMatcher$Result;->getDesiredULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v5}, Landroid/icu/util/LocaleMatcher$Result;->getSupportedULocale()Landroid/icu/util/ULocale;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2489
    aput-boolean v0, p2, v0

    .line 2491
    :cond_40
    invoke-virtual {v5}, Landroid/icu/util/LocaleMatcher$Result;->getSupportedULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 2493
    :cond_45
    return-object v1

    .line 2478
    .end local v2    # "desired":Landroid/icu/util/LocalePriorityList;
    .end local v3    # "builder":Landroid/icu/util/LocaleMatcher$Builder;
    .end local v4    # "matcher":Landroid/icu/util/LocaleMatcher;
    .end local v5    # "result":Landroid/icu/util/LocaleMatcher$Result;
    :catch_46
    move-exception v0

    .line 2479
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public static whitelist test-api acceptLanguage(Ljava/lang/String;[Z)Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "acceptLanguageList"    # Ljava/lang/String;
    .param p1, "fallback"    # [Z

    .line 2555
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .registers 9
    .param p0, "acceptLanguageList"    # [Landroid/icu/util/ULocale;
    .param p1, "availableLocales"    # [Landroid/icu/util/ULocale;
    .param p2, "fallback"    # [Z

    .line 2514
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 2515
    aput-boolean v0, p2, v1

    .line 2517
    :cond_6
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->builder()Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v2

    .line 2518
    .local v2, "builder":Landroid/icu/util/LocaleMatcher$Builder;
    array-length v3, p1

    move v4, v1

    :goto_c
    if-ge v4, v3, :cond_16

    aget-object v5, p1, v4

    .line 2519
    .local v5, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v2, v5}, Landroid/icu/util/LocaleMatcher$Builder;->addSupportedULocale(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;

    .line 2518
    .end local v5    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2521
    :cond_16
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$Builder;->build()Landroid/icu/util/LocaleMatcher;

    move-result-object v3

    .line 2523
    .local v3, "matcher":Landroid/icu/util/LocaleMatcher;
    array-length v4, p0

    if-ne v4, v0, :cond_24

    .line 2524
    aget-object v0, p0, v1

    invoke-virtual {v3, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatchResult(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v0

    .local v0, "result":Landroid/icu/util/LocaleMatcher$Result;
    goto :goto_2c

    .line 2526
    .end local v0    # "result":Landroid/icu/util/LocaleMatcher$Result;
    :cond_24
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatchResult(Ljava/lang/Iterable;)Landroid/icu/util/LocaleMatcher$Result;

    move-result-object v0

    .line 2528
    .restart local v0    # "result":Landroid/icu/util/LocaleMatcher$Result;
    :goto_2c
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$Result;->getDesiredIndex()I

    move-result v4

    if-ltz v4, :cond_49

    .line 2529
    if-eqz p2, :cond_44

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$Result;->getDesiredULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$Result;->getSupportedULocale()Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2530
    aput-boolean v1, p2, v1

    .line 2532
    :cond_44
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$Result;->getSupportedULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    return-object v1

    .line 2534
    :cond_49
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api acceptLanguage([Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "acceptLanguageList"    # [Landroid/icu/util/ULocale;
    .param p1, "fallback"    # [Z

    .line 2576
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 9
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    .line 2609
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2610
    .local v0, "tags":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2612
    .local v1, "trailing":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2616
    .local v2, "trailingIndex":I
    iget-object v3, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 2617
    iget-object v3, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2620
    :cond_18
    sget-object v3, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    new-instance v4, Landroid/icu/util/ULocale;

    .line 2621
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsrFrom(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v3

    .line 2622
    .local v3, "max":Landroid/icu/impl/locale/LSR;
    iget-object v4, v3, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v5, v3, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v6, v3, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2625
    .local v4, "newLocaleID":Ljava/lang/String;
    if-nez v4, :cond_3e

    move-object v5, p0

    goto :goto_43

    :cond_3e
    new-instance v5, Landroid/icu/util/ULocale;

    invoke-direct {v5, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :goto_43
    return-object v5
.end method

.method private static greylist-max-o appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 2755
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2756
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2759
    :cond_b
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    return-void
.end method

.method private greylist-max-o base()Landroid/icu/impl/locale/BaseLocale;
    .registers 7

    .line 3735
    iget-object v0, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    if-nez v0, :cond_2e

    .line 3737
    const-string v0, ""

    move-object v1, v0

    .local v1, "variant":Ljava/lang/String;
    move-object v2, v0

    .local v2, "region":Ljava/lang/String;
    move-object v3, v0

    .line 3738
    .local v0, "language":Ljava/lang/String;
    .local v3, "script":Ljava/lang/String;
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 3739
    new-instance v4, Landroid/icu/impl/LocaleIDParser;

    iget-object v5, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3740
    .local v4, "lp":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3741
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 3742
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 3743
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v1

    .line 3745
    .end local v4    # "lp":Landroid/icu/impl/LocaleIDParser;
    :cond_28
    invoke-static {v0, v3, v2, v1}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    .line 3747
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "variant":Ljava/lang/String;
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "script":Ljava/lang/String;
    :cond_2e
    iget-object v0, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    return-object v0
.end method

.method public static whitelist test-api canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1689
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 1690
    .local v0, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, "baseName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1693
    .local v3, "foundVariant":Z
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1694
    return-object v4

    .line 1700
    :cond_14
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    sget-object v5, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_31

    .line 1701
    sget-object v5, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 1702
    .local v5, "vals":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1703
    const/4 v3, 0x1

    .line 1705
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1706
    goto :goto_31

    .line 1700
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1711
    .end local v4    # "i":I
    :cond_31
    :goto_31
    if-nez v3, :cond_5d

    .line 1712
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nb"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NY"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1713
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "nn"

    invoke-static {v6, v1, v4, v5}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1717
    :cond_5d
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->isKnownCanonicalizedLocale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 1719
    new-instance v5, Landroid/icu/util/ULocale$AliasReplacer;

    .line 1720
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 1721
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1722
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Landroid/icu/util/ULocale$AliasReplacer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    .local v5, "replacer":Landroid/icu/util/ULocale$AliasReplacer;
    invoke-virtual {v5}, Landroid/icu/util/ULocale$AliasReplacer;->replace()Ljava/lang/String;

    move-result-object v4

    .line 1724
    .local v4, "replaced":Ljava/lang/String;
    if-eqz v4, :cond_9c

    .line 1725
    new-instance v6, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v6, v4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 1729
    .end local v4    # "replaced":Ljava/lang/String;
    .end local v5    # "replacer":Landroid/icu/util/ULocale$AliasReplacer;
    :cond_9c
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 453
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .registers 5
    .param p0, "nonCanonicalID"    # Ljava/lang/String;

    .line 444
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static greylist-max-o createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "trailing"    # Ljava/lang/String;

    .line 2781
    const/4 v0, 0x0

    .line 2783
    .local v0, "parser":Landroid/icu/impl/LocaleIDParser;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2785
    .local v1, "tag":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2786
    invoke-static {p0, v1}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_15

    .line 2794
    :cond_10
    const-string v2, "und"

    invoke-static {v2, v1}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2799
    :goto_15
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2800
    invoke-static {p1, v1}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2805
    :cond_1e
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2806
    invoke-static {p2, v1}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2811
    :cond_27
    if-eqz p3, :cond_60

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_60

    .line 2817
    const/4 v2, 0x0

    .line 2819
    .local v2, "separators":I
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_42

    .line 2820
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_43

    .line 2821
    const/4 v2, 0x2

    goto :goto_43

    .line 2825
    :cond_42
    const/4 v2, 0x1

    .line 2828
    :cond_43
    :goto_43
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 2833
    const/4 v4, 0x2

    if-ne v2, v4, :cond_54

    .line 2834
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 2837
    :cond_54
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 2845
    :cond_58
    if-ne v2, v3, :cond_5d

    .line 2846
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2848
    :cond_5d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    .end local v2    # "separators":I
    :cond_60
    :goto_60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o extensions()Landroid/icu/impl/locale/LocaleExtensions;
    .registers 9

    .line 3751
    iget-object v0, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_8c

    .line 3752
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    .line 3753
    .local v0, "kwitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v0, :cond_10

    .line 3754
    sget-object v1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    iput-object v1, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    goto/16 :goto_8c

    .line 3756
    :cond_10
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3757
    .local v1, "intbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 3758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3759
    .local v2, "key":Ljava/lang/String;
    const-string v3, "attribute"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    .line 3761
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "[-_]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3762
    .local v3, "uattributes":[Ljava/lang/String;
    array-length v5, v3

    :goto_35
    if-ge v4, v5, :cond_41

    aget-object v6, v3, v4

    .line 3764
    .local v6, "uattr":Ljava/lang/String;
    :try_start_39
    invoke-virtual {v1, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_3c
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 3767
    goto :goto_3e

    .line 3765
    :catch_3d
    move-exception v7

    .line 3762
    .end local v6    # "uattr":Ljava/lang/String;
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 3769
    .end local v3    # "uattributes":[Ljava/lang/String;
    :cond_41
    goto :goto_85

    :cond_42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_5f

    .line 3770
    invoke-static {v2}, Landroid/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3771
    .local v3, "bcpKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3772
    .local v4, "bcpType":Ljava/lang/String;
    if-eqz v3, :cond_84

    if-eqz v4, :cond_84

    .line 3774
    :try_start_59
    invoke-virtual {v1, v3, v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_5c
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 3777
    goto :goto_84

    .line 3775
    :catch_5d
    move-exception v5

    goto :goto_84

    .line 3779
    .end local v3    # "bcpKey":Ljava/lang/String;
    .end local v4    # "bcpType":Ljava/lang/String;
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_84

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-eq v3, v5, :cond_84

    .line 3781
    :try_start_6e
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_81
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_6e .. :try_end_81} :catch_82

    .line 3785
    goto :goto_85

    .line 3783
    :catch_82
    move-exception v3

    goto :goto_85

    .line 3779
    :cond_84
    :goto_84
    nop

    .line 3787
    .end local v2    # "key":Ljava/lang/String;
    :goto_85
    goto :goto_15

    .line 3788
    :cond_86
    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    .line 3791
    .end local v0    # "kwitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "intbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :cond_8c
    :goto_8c
    iget-object v0, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    return-object v0
.end method

.method public static whitelist test-api forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .registers 5
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 3202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object v0

    .line 3203
    .local v0, "tag":Landroid/icu/impl/locale/LanguageTag;
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3204
    .local v1, "bldr":Landroid/icu/impl/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3205
    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "loc"    # Ljava/util/Locale;

    .line 377
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 378
    return-object v0

    .line 380
    :cond_4
    sget-object v1, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SoftCache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public static whitelist test-api getAvailableLocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 795
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public static whitelist test-api getAvailableLocalesByType(Landroid/icu/util/ULocale$AvailableType;)Ljava/util/Collection;
    .registers 3
    .param p0, "type"    # Landroid/icu/util/ULocale$AvailableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale$AvailableType;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 802
    if-eqz p0, :cond_2b

    .line 806
    sget-object v0, Landroid/icu/util/ULocale$AvailableType;->WITH_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    if-ne p0, v0, :cond_1e

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    sget-object v1, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    .line 809
    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 808
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 810
    sget-object v1, Landroid/icu/util/ULocale$AvailableType;->ONLY_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    .line 811
    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 810
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_26

    .line 813
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    :cond_1e
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 815
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    :goto_26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 803
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1045
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1046
    return-object p0

    .line 1048
    :cond_a
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 897
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDefault()Landroid/icu/util/ULocale;
    .registers 10

    .line 531
    sget-object v0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 532
    .local v0, "currentDefaultULocale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_7

    .line 541
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v1

    .line 542
    :cond_7
    iget-object v1, v0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 543
    return-object v0

    .line 545
    :cond_14
    const-class v1, Landroid/icu/util/ULocale;

    monitor-enter v1

    .line 546
    :try_start_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 547
    .local v2, "currentDefault":Ljava/util/Locale;
    nop

    .line 549
    sget-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    move-object v0, v3

    .line 550
    nop

    .line 552
    iget-object v3, v0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 553
    monitor-exit v1

    return-object v0

    .line 556
    :cond_2a
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    .line 557
    .local v3, "nextULocale":Landroid/icu/util/ULocale;
    nop

    .line 559
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 563
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3b
    if-ge v6, v5, :cond_4e

    aget-object v7, v4, v6

    .line 564
    .local v7, "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v7}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v8

    .line 565
    .local v8, "idx":I
    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v2, v9, v8

    .line 566
    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aput-object v3, v9, v8

    .line 563
    .end local v7    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v8    # "idx":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 570
    :cond_4e
    sput-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    monitor-exit v1

    return-object v3

    .line 571
    .end local v2    # "currentDefault":Ljava/util/Locale;
    .end local v3    # "nextULocale":Landroid/icu/util/ULocale;
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public static whitelist test-api getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;
    .registers 11
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;

    .line 607
    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 608
    :try_start_3
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    .line 609
    .local v1, "idx":I
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aget-object v2, v2, v1

    if-nez v2, :cond_11

    .line 613
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    monitor-exit v0

    return-object v2

    .line 615
    :cond_11
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 616
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v2

    .line 617
    .local v2, "currentCategoryDefault":Ljava/util/Locale;
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 618
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v2, v3, v1

    .line 619
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v4

    aput-object v4, v3, v1

    .line 621
    .end local v2    # "currentCategoryDefault":Ljava/util/Locale;
    :cond_31
    goto :goto_63

    .line 634
    :cond_32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 635
    .local v2, "currentDefault":Ljava/util/Locale;
    sget-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    iget-object v3, v3, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 636
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    sput-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 638
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_63

    aget-object v6, v3, v5

    .line 639
    .local v6, "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v6}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v7

    .line 640
    .local v7, "tmpIdx":I
    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v2, v8, v7

    .line 641
    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v9

    aput-object v9, v8, v7

    .line 638
    .end local v6    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v7    # "tmpIdx":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 648
    .end local v2    # "currentDefault":Ljava/util/Locale;
    :cond_63
    :goto_63
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 649
    .end local v1    # "idx":I
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public static whitelist test-api getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2153
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 2140
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2158
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 2159
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2158
    return-object v0
.end method

.method public static whitelist test-api getDisplayKeyword(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "keyword"    # Ljava/lang/String;

    .line 2215
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2237
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 2226
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2241
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2288
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocaleID"    # Ljava/lang/String;

    .line 2274
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2294
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2295
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2296
    .local v0, "value":Ljava/lang/String;
    invoke-static {p2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 1952
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 1940
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;
    .param p2, "useDialect"    # Z

    .line 2001
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2002
    .local v0, "lang":Ljava/lang/String;
    :goto_b
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/LocaleDisplayNames;->languageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getDisplayLanguageWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 1996
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayLanguageWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 1983
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2336
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 2325
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2340
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2385
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayNameWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 2372
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2389
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 2390
    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 2389
    return-object v0
.end method

.method public static whitelist test-api getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2081
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 2057
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDisplayScriptInContext(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2094
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDisplayScriptInContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2071
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2104
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 2105
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    return-object v0
.end method

.method private static greylist-max-o getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2099
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 2100
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2099
    return-object v0
.end method

.method public static whitelist test-api getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2199
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayVariant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    .line 2188
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2203
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 2204
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2203
    return-object v0
.end method

.method public static whitelist test-api getFallback(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 990
    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "fallback"    # Ljava/lang/String;

    .line 1008
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1009
    .local v0, "extStart":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 1010
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1012
    :cond_d
    const/16 v2, 0x5f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 1013
    .local v3, "last":I
    if-ne v3, v1, :cond_17

    .line 1014
    const/4 v1, 0x0

    .end local v3    # "last":I
    .local v1, "last":I
    goto :goto_26

    .line 1017
    .end local v1    # "last":I
    .restart local v3    # "last":I
    :cond_17
    :goto_17
    if-lez v3, :cond_25

    .line 1018
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_22

    .line 1019
    goto :goto_25

    .line 1021
    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1024
    :cond_25
    :goto_25
    move v1, v3

    .end local v3    # "last":I
    .restart local v1    # "last":I
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api getISO3Country(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1862
    invoke-static {p0}, Landroid/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getISO3Language(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1840
    invoke-static {p0}, Landroid/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getISOCountries()[Ljava/lang/String;
    .registers 1

    .line 823
    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getISOLanguages()[Ljava/lang/String;
    .registers 1

    .line 836
    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .registers 18
    .param p0, "base"    # Landroid/icu/impl/locale/BaseLocale;
    .param p1, "exts"    # Landroid/icu/impl/locale/LocaleExtensions;

    .line 3668
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 3669
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 3668
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3671
    .local v0, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 3672
    .local v1, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12e

    .line 3677
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 3678
    .local v2, "kwds":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    .line 3679
    .local v4, "key":Ljava/lang/Character;
    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v6

    .line 3680
    .local v6, "ext":Landroid/icu/impl/locale/Extension;
    instance-of v7, v6, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    if-eqz v7, :cond_d4

    .line 3681
    move-object v7, v6

    check-cast v7, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 3682
    .local v7, "uext":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    invoke-virtual {v7}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v8

    .line 3683
    .local v8, "ukeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_48
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3684
    .local v10, "bcpKey":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3686
    .local v11, "bcpType":Ljava/lang/String;
    invoke-static {v10}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3687
    .local v12, "lkey":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_65

    const-string v13, "yes"

    goto :goto_66

    :cond_65
    move-object v13, v11

    :goto_66
    invoke-static {v10, v13}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3689
    .local v13, "ltype":Ljava/lang/String;
    const-string v14, "va"

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    const-string v14, "posix"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_98

    .line 3690
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_POSIX"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9b

    .line 3692
    :cond_98
    invoke-virtual {v2, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3694
    .end local v10    # "bcpKey":Ljava/lang/String;
    .end local v11    # "bcpType":Ljava/lang/String;
    .end local v12    # "lkey":Ljava/lang/String;
    .end local v13    # "ltype":Ljava/lang/String;
    :goto_9b
    goto :goto_48

    .line 3696
    :cond_9c
    invoke-virtual {v7}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v9

    .line 3697
    .local v9, "uattributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_d3

    .line 3698
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3699
    .local v10, "attrbuf":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_af
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ca

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3700
    .local v12, "attr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_c6

    .line 3701
    const/16 v13, 0x2d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3703
    :cond_c6
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    .end local v12    # "attr":Ljava/lang/String;
    goto :goto_af

    .line 3705
    :cond_ca
    const-string v11, "attribute"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3707
    .end local v7    # "uext":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    .end local v8    # "ukeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "uattributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "attrbuf":Ljava/lang/StringBuilder;
    :cond_d3
    goto :goto_df

    .line 3708
    :cond_d4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3710
    .end local v4    # "key":Ljava/lang/Character;
    .end local v6    # "ext":Landroid/icu/impl/locale/Extension;
    :goto_df
    goto/16 :goto_27

    .line 3712
    :cond_e1
    move-object/from16 v5, p1

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_130

    .line 3713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3714
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3715
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3716
    .local v4, "kset":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 3717
    .local v6, "insertSep":Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_fc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_129

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3718
    .local v8, "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_110

    .line 3719
    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_111

    .line 3721
    :cond_110
    const/4 v6, 0x1

    .line 3723
    :goto_111
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3725
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3726
    .end local v8    # "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_fc

    .line 3728
    :cond_129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_130

    .line 3672
    .end local v2    # "kwds":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "kset":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "insertSep":Z
    :cond_12e
    move-object/from16 v5, p1

    .line 3731
    :cond_130
    :goto_130
    new-instance v2, Landroid/icu/util/ULocale;

    invoke-direct {v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static whitelist test-api getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keywordName"    # Ljava/lang/String;

    .line 1190
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1170
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 857
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1097
    move-object v0, p0

    .line 1099
    .local v0, "tmpLocaleID":Ljava/lang/String;
    if-eqz p0, :cond_3c

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {p0}, Landroid/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 1100
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2c

    .line 1101
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1103
    :cond_2c
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4b

    .line 1105
    move-object v0, p0

    goto :goto_4b

    .line 1107
    :cond_3c
    const-string v1, "root"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1108
    const-string v0, ""

    goto :goto_4b

    .line 1110
    :cond_47
    invoke-static {p0}, Landroid/icu/util/ULocale;->stripLeadingUnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    :cond_4b
    :goto_4b
    sget-object v1, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/CacheBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static greylist-max-o getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "inferRegion"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 951
    const-string v0, "rg"

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionFromKey(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "region":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 953
    return-object v0

    .line 955
    :cond_9
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    if-eqz p1, :cond_26

    .line 957
    const-string v1, "sd"

    invoke-static {p0, v1}, Landroid/icu/util/ULocale;->getRegionFromKey(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_1e

    .line 959
    return-object v0

    .line 961
    :cond_1e
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 962
    .local v1, "maximized":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 964
    .end local v1    # "maximized":Landroid/icu/util/ULocale;
    :cond_26
    return-object v0
.end method

.method private static blacklist getRegionFromKey(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "key"    # Ljava/lang/String;

    .line 904
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "subdivision":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_16

    goto :goto_2a

    .line 921
    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "region":Ljava/lang/String;
    sget-object v3, Landroid/icu/util/ULocale$RegionValidateMap;->BUILTIN:Landroid/icu/util/ULocale$RegionValidateMap;

    invoke-virtual {v3, v2}, Landroid/icu/util/ULocale$RegionValidateMap;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 923
    return-object v2

    .line 925
    :cond_29
    return-object v1

    .line 919
    .end local v2    # "region":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static whitelist test-api getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 876
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getShortestSubtagLength(Ljava/lang/String;)I
    .registers 8
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1067
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1068
    .local v0, "localeIDLength":I
    move v1, v0

    .line 1069
    .local v1, "length":I
    const/4 v2, 0x1

    .line 1070
    .local v2, "reset":Z
    const/4 v3, 0x0

    .line 1072
    .local v3, "tmpLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_2a

    .line 1073
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_21

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_21

    .line 1074
    if-eqz v2, :cond_1e

    .line 1075
    const/4 v2, 0x0

    .line 1076
    const/4 v3, 0x0

    .line 1078
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1080
    :cond_21
    if-eqz v3, :cond_26

    if-ge v3, v1, :cond_26

    .line 1081
    move v1, v3

    .line 1083
    :cond_26
    const/4 v2, 0x1

    .line 1072
    :goto_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1087
    .end local v4    # "i":I
    :cond_2a
    return v1
.end method

.method public static whitelist test-api getVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "localeID"    # Ljava/lang/String;

    .line 982
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o isEmptyString(Ljava/lang/String;)Z
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 2744
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static declared-synchronized blacklist isKnownCanonicalizedLocale(Ljava/lang/String;)Z
    .registers 181
    .param p0, "name"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-class v1, Landroid/icu/util/ULocale;

    monitor-enter v1

    .line 1733
    :try_start_5
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19c

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19c

    const-string v2, "en_US"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto/16 :goto_19c

    .line 1736
    :cond_1f
    sget-object v2, Landroid/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    if-nez v2, :cond_194

    .line 1737
    const-string v3, "af"

    const-string v4, "af_ZA"

    const-string v5, "am"

    const-string v6, "am_ET"

    const-string v7, "ar"

    const-string v8, "ar_001"

    const-string v9, "as"

    const-string v10, "as_IN"

    const-string v11, "az"

    const-string v12, "az_AZ"

    const-string v13, "be"

    const-string v14, "be_BY"

    const-string v15, "bg"

    const-string v16, "bg_BG"

    const-string v17, "bn"

    const-string v18, "bn_IN"

    const-string v19, "bs"

    const-string v20, "bs_BA"

    const-string v21, "ca"

    const-string v22, "ca_ES"

    const-string v23, "cs"

    const-string v24, "cs_CZ"

    const-string v25, "cy"

    const-string v26, "cy_GB"

    const-string v27, "da"

    const-string v28, "da_DK"

    const-string v29, "de"

    const-string v30, "de_DE"

    const-string v31, "el"

    const-string v32, "el_GR"

    const-string v33, "en"

    const-string v34, "en_GB"

    const-string v35, "en_US"

    const-string v36, "es"

    const-string v37, "es_419"

    const-string v38, "es_ES"

    const-string v39, "et"

    const-string v40, "et_EE"

    const-string v41, "eu"

    const-string v42, "eu_ES"

    const-string v43, "fa"

    const-string v44, "fa_IR"

    const-string v45, "fi"

    const-string v46, "fi_FI"

    const-string v47, "fil"

    const-string v48, "fil_PH"

    const-string v49, "fr"

    const-string v50, "fr_FR"

    const-string v51, "ga"

    const-string v52, "ga_IE"

    const-string v53, "gl"

    const-string v54, "gl_ES"

    const-string v55, "gu"

    const-string v56, "gu_IN"

    const-string v57, "he"

    const-string v58, "he_IL"

    const-string v59, "hi"

    const-string v60, "hi_IN"

    const-string v61, "hr"

    const-string v62, "hr_HR"

    const-string v63, "hu"

    const-string v64, "hu_HU"

    const-string v65, "hy"

    const-string v66, "hy_AM"

    const-string v67, "id"

    const-string v68, "id_ID"

    const-string v69, "is"

    const-string v70, "is_IS"

    const-string v71, "it"

    const-string v72, "it_IT"

    const-string v73, "ja"

    const-string v74, "ja_JP"

    const-string v75, "jv"

    const-string v76, "jv_ID"

    const-string v77, "ka"

    const-string v78, "ka_GE"

    const-string v79, "kk"

    const-string v80, "kk_KZ"

    const-string v81, "km"

    const-string v82, "km_KH"

    const-string v83, "kn"

    const-string v84, "kn_IN"

    const-string v85, "ko"

    const-string v86, "ko_KR"

    const-string v87, "ky"

    const-string v88, "ky_KG"

    const-string v89, "lo"

    const-string v90, "lo_LA"

    const-string v91, "lt"

    const-string v92, "lt_LT"

    const-string v93, "lv"

    const-string v94, "lv_LV"

    const-string v95, "mk"

    const-string v96, "mk_MK"

    const-string v97, "ml"

    const-string v98, "ml_IN"

    const-string v99, "mn"

    const-string v100, "mn_MN"

    const-string v101, "mr"

    const-string v102, "mr_IN"

    const-string v103, "ms"

    const-string v104, "ms_MY"

    const-string v105, "my"

    const-string v106, "my_MM"

    const-string v107, "nb"

    const-string v108, "nb_NO"

    const-string v109, "ne"

    const-string v110, "ne_NP"

    const-string v111, "nl"

    const-string v112, "nl_NL"

    const-string v113, "no"

    const-string v114, "or"

    const-string v115, "or_IN"

    const-string v116, "pa"

    const-string v117, "pa_IN"

    const-string v118, "pl"

    const-string v119, "pl_PL"

    const-string v120, "ps"

    const-string v121, "ps_AF"

    const-string v122, "pt"

    const-string v123, "pt_BR"

    const-string v124, "pt_PT"

    const-string v125, "ro"

    const-string v126, "ro_RO"

    const-string v127, "ru"

    const-string v128, "ru_RU"

    const-string v129, "sd"

    const-string v130, "sd_IN"

    const-string v131, "si"

    const-string v132, "si_LK"

    const-string v133, "sk"

    const-string v134, "sk_SK"

    const-string v135, "sl"

    const-string v136, "sl_SI"

    const-string v137, "so"

    const-string v138, "so_SO"

    const-string v139, "sq"

    const-string v140, "sq_AL"

    const-string v141, "sr"

    const-string v142, "sr_Cyrl_RS"

    const-string v143, "sr_Latn"

    const-string v144, "sr_RS"

    const-string v145, "sv"

    const-string v146, "sv_SE"

    const-string v147, "sw"

    const-string v148, "sw_TZ"

    const-string v149, "ta"

    const-string v150, "ta_IN"

    const-string v151, "te"

    const-string v152, "te_IN"

    const-string v153, "th"

    const-string v154, "th_TH"

    const-string v155, "tk"

    const-string v156, "tk_TM"

    const-string v157, "tr"

    const-string v158, "tr_TR"

    const-string v159, "uk"

    const-string v160, "uk_UA"

    const-string v161, "ur"

    const-string v162, "ur_PK"

    const-string v163, "uz"

    const-string v164, "uz_UZ"

    const-string v165, "vi"

    const-string v166, "vi_VN"

    const-string v167, "yue"

    const-string v168, "yue_Hant"

    const-string v169, "yue_Hant_HK"

    const-string v170, "yue_HK"

    const-string v171, "zh"

    const-string v172, "zh_CN"

    const-string v173, "zh_Hans"

    const-string v174, "zh_Hans_CN"

    const-string v175, "zh_Hant"

    const-string v176, "zh_Hant_TW"

    const-string v177, "zh_TW"

    const-string v178, "zu"

    const-string v179, "zu_ZA"

    filled-new-array/range {v3 .. v179}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1757
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroid/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    .line 1760
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_194
    sget-object v2, Landroid/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19a
    .catchall {:try_start_5 .. :try_end_19a} :catchall_19f

    monitor-exit v1

    return v2

    .line 1734
    :cond_19c
    :goto_19c
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1732
    .end local p0    # "name":Ljava/lang/String;
    :catchall_19f
    move-exception v0

    :try_start_1a0
    monitor-exit v1
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    throw v0
.end method

.method private static greylist-max-o lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 460
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_10
    const/16 v1, 0x5f

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_20
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2e

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2e
    if-eqz p3, :cond_47

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47

    .line 471
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_41

    .line 472
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    :cond_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 2
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    .line 2655
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;
    .registers 9
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "fieldToFavor"    # Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2716
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2717
    .local v0, "tags":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2719
    .local v1, "trailing":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2723
    .local v2, "trailingIndex":I
    iget-object v3, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 2724
    iget-object v3, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2727
    :cond_18
    sget-object v3, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    .line 2728
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 2727
    invoke-virtual {v3, v4, v5, v6, p1}, Landroid/icu/impl/locale/LikelySubtags;->minimizeSubtags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/impl/locale/LSR;

    move-result-object v3

    .line 2729
    .local v3, "lsr":Landroid/icu/impl/locale/LSR;
    iget-object v4, v3, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v5, v3, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v6, v3, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2732
    .local v4, "newLocaleID":Ljava/lang/String;
    if-nez v4, :cond_38

    move-object v5, p0

    goto :goto_3d

    :cond_38
    new-instance v5, Landroid/icu/util/ULocale;

    invoke-direct {v5, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :goto_3d
    return-object v5
.end method

.method private static greylist-max-o parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "tags"    # [Ljava/lang/String;

    .line 2865
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2867
    .local v0, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2868
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 2869
    .local v2, "script":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 2871
    .local v3, "region":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    .line 2872
    const-string v4, "und"

    aput-object v4, p1, v5

    goto :goto_1f

    .line 2875
    :cond_1d
    aput-object v1, p1, v5

    .line 2878
    :goto_1f
    const-string v4, "Zzzz"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_2d

    .line 2879
    aput-object v5, p1, v6

    goto :goto_2f

    .line 2882
    :cond_2d
    aput-object v2, p1, v6

    .line 2885
    :goto_2f
    const-string v4, "ZZ"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_3b

    .line 2886
    aput-object v5, p1, v6

    goto :goto_3d

    .line 2889
    :cond_3b
    aput-object v3, p1, v6

    .line 2904
    :goto_3d
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 2906
    .local v4, "variant":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 2907
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2910
    .local v5, "index":I
    if-lez v5, :cond_50

    add-int/lit8 v6, v5, -0x1

    goto :goto_51

    :cond_50
    move v6, v5

    :goto_51
    return v6

    .line 2914
    .end local v5    # "index":I
    :cond_52
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2916
    .restart local v5    # "index":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_60

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_61

    :cond_60
    move v6, v5

    :goto_61
    return v6
.end method

.method public static declared-synchronized greylist-max-o setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;
    .param p1, "newLocale"    # Landroid/icu/util/ULocale;

    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    .line 667
    .local v1, "newJavaDefault":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 668
    .local v2, "idx":I
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aput-object p1, v3, v2

    .line 669
    sget-object v3, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v3, v2

    .line 670
    invoke-static {p0, v1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 671
    monitor-exit v0

    return-void

    .line 665
    .end local v1    # "newJavaDefault":Ljava/util/Locale;
    .end local v2    # "idx":I
    .end local p0    # "category":Landroid/icu/util/ULocale$Category;
    .end local p1    # "newLocale":Landroid/icu/util/ULocale;
    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static declared-synchronized greylist-max-o setDefault(Landroid/icu/util/ULocale;)V
    .registers 6
    .param p0, "newLocale"    # Landroid/icu/util/ULocale;

    const-class v0, Landroid/icu/util/ULocale;

    monitor-enter v0

    .line 592
    :try_start_3
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 593
    sput-object p0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    .line 595
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 596
    .local v4, "cat":Landroid/icu/util/ULocale$Category;
    invoke-static {v4, p0}, Landroid/icu/util/ULocale;->setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    .line 595
    .end local v4    # "cat":Landroid/icu/util/ULocale$Category;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 598
    :cond_1c
    monitor-exit v0

    return-void

    .line 591
    .end local p0    # "newLocale":Landroid/icu/util/ULocale;
    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static whitelist test-api setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1797
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 1798
    .local v0, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist stripLeadingUnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "localeID"    # Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1122
    .local v0, "length":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    .line 1123
    return-object p0

    .line 1127
    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "und"

    move-object v2, p0

    .end local p0    # "localeID":Ljava/lang/String;
    .local v2, "localeID":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_16

    .line 1128
    return-object v2

    .line 1132
    :cond_16
    if-ne v0, v1, :cond_1b

    .line 1133
    const-string p0, ""

    return-object p0

    .line 1137
    :cond_1b
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 1138
    .local p0, "separator":C
    const/16 v3, 0x2d

    if-eq p0, v3, :cond_29

    const/16 v3, 0x5f

    if-ne p0, v3, :cond_28

    goto :goto_29

    .line 1142
    :cond_28
    return-object v2

    .line 1139
    :cond_29
    :goto_29
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/String;

    .line 3283
    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3284
    .local v0, "legacyKey":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 3293
    const-string v1, "[0-9a-zA-Z]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3294
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3297
    :cond_12
    return-object v0
.end method

.method public static whitelist test-api toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 3326
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 3327
    .local v0, "legacyType":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 3337
    const-string v1, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3338
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3341
    :cond_13
    return-object v0
.end method

.method public static whitelist test-api toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "keyword"    # Ljava/lang/String;

    .line 3228
    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3229
    .local v0, "bcpKey":Ljava/lang/String;
    if-nez v0, :cond_10

    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3231
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3233
    :cond_10
    return-object v0
.end method

.method public static whitelist test-api toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 3263
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 3264
    .local v0, "bcpType":Ljava/lang/String;
    if-nez v0, :cond_11

    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3266
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3268
    :cond_11
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1

    .line 679
    return-object p0
.end method

.method public whitelist test-api compareTo(Landroid/icu/util/ULocale;)I
    .registers 12
    .param p1, "other"    # Landroid/icu/util/ULocale;

    .line 721
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 722
    return v0

    .line 725
    :cond_4
    const/4 v1, 0x0

    .line 728
    .local v1, "cmp":I
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 729
    const/4 v2, -0x1

    if-nez v1, :cond_98

    .line 731
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 732
    if-nez v1, :cond_98

    .line 734
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 735
    if-nez v1, :cond_98

    .line 737
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 738
    if-nez v1, :cond_98

    .line 740
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v3

    .line 741
    .local v3, "thisKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v4

    .line 743
    .local v4, "otherKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v3, :cond_4f

    .line 744
    if-nez v4, :cond_4c

    move v5, v0

    goto :goto_4d

    :cond_4c
    move v5, v2

    :goto_4d
    move v1, v5

    goto :goto_98

    .line 745
    :cond_4f
    if-nez v4, :cond_53

    .line 746
    const/4 v1, 0x1

    goto :goto_98

    .line 749
    :cond_53
    :goto_53
    if-nez v1, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 750
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_63

    .line 751
    const/4 v1, 0x1

    .line 752
    goto :goto_8f

    .line 755
    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 756
    .local v5, "thisKey":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 757
    .local v6, "otherKey":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 758
    if-nez v1, :cond_8e

    .line 760
    invoke-virtual {p0, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 761
    .local v7, "thisVal":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 762
    .local v8, "otherVal":Ljava/lang/String;
    if-nez v7, :cond_86

    .line 763
    if-nez v8, :cond_83

    move v9, v0

    goto :goto_84

    :cond_83
    move v9, v2

    :goto_84
    move v1, v9

    .end local v1    # "cmp":I
    .local v9, "cmp":I
    goto :goto_8e

    .line 764
    .end local v9    # "cmp":I
    .restart local v1    # "cmp":I
    :cond_86
    if-nez v8, :cond_8a

    .line 765
    const/4 v1, 0x1

    goto :goto_8e

    .line 767
    :cond_8a
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 770
    .end local v5    # "thisKey":Ljava/lang/String;
    .end local v6    # "otherKey":Ljava/lang/String;
    .end local v7    # "thisVal":Ljava/lang/String;
    .end local v8    # "otherVal":Ljava/lang/String;
    :cond_8e
    :goto_8e
    goto :goto_53

    .line 771
    :cond_8f
    :goto_8f
    if-nez v1, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 772
    const/4 v1, -0x1

    .line 784
    .end local v3    # "thisKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "otherKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_98
    :goto_98
    if-gez v1, :cond_9c

    move v0, v2

    goto :goto_9f

    :cond_9c
    if-lez v1, :cond_9f

    const/4 v0, 0x1

    :cond_9f
    :goto_9f
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 104
    check-cast p1, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 701
    if-ne p0, p1, :cond_4

    .line 702
    const/4 v0, 0x1

    return v0

    .line 704
    :cond_4
    instance-of v0, p1, Landroid/icu/util/ULocale;

    if-eqz v0, :cond_14

    .line 705
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/util/ULocale;

    iget-object v1, v1, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 707
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getBaseName()Ljava/lang/String;
    .registers 2

    .line 1034
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCharacterOrientation()Ljava/lang/String;
    .registers 4

    .line 2400
    const-string v0, "layout"

    const-string v1, "characters"

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, p0, v0, v1, v1}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCountry()Ljava/lang/String;
    .registers 2

    .line 886
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayCountry()Ljava/lang/String;
    .registers 2

    .line 2116
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayCountry(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2127
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;

    .line 2251
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayKeywordValue(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2261
    invoke-static {p0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayLanguage()Ljava/lang/String;
    .registers 3

    .line 1920
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayLanguage(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 1929
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayLanguageWithDialect()Ljava/lang/String;
    .registers 3

    .line 1961
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayLanguageWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 1971
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 2

    .line 2305
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2314
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayNameWithDialect()Ljava/lang/String;
    .registers 2

    .line 2350
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayNameWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2360
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayScript()Ljava/lang/String;
    .registers 2

    .line 2011
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayScript(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2033
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayScriptInContext()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2024
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayScriptInContext(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2046
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayVariant()Ljava/lang/String;
    .registers 2

    .line 2168
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayVariant(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    .line 2177
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtension(C)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # C

    .line 2955
    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2958
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2956
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getExtensionKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 2970
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFallback()Landroid/icu/util/ULocale;
    .registers 5

    .line 998
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_15

    goto :goto_24

    .line 1001
    :cond_15
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    .line 999
    :cond_24
    :goto_24
    return-object v1
.end method

.method public whitelist test-api getISO3Country()Ljava/lang/String;
    .registers 2

    .line 1851
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getISO3Language()Ljava/lang/String;
    .registers 2

    .line 1827
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keywordName"    # Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getKeywords()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLanguage()Ljava/lang/String;
    .registers 2

    .line 846
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLineOrientation()Ljava/lang/String;
    .registers 4

    .line 2411
    const-string v0, "layout"

    const-string v1, "lines"

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, p0, v0, v1, v1}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 1057
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getScript()Ljava/lang/String;
    .registers 2

    .line 866
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUnicodeLocaleAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2981
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUnicodeLocaleKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3012
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 2998
    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidUnicodeLocaleKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3001
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2999
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getVariant()Ljava/lang/String;
    .registers 2

    .line 973
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 688
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isRightToLeft()Z
    .registers 7

    .line 1886
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1887
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3c

    .line 1890
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1891
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    .line 1892
    const-string v2, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1893
    .local v4, "langIndex":I
    if-ltz v4, :cond_2d

    .line 1894
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_46

    :pswitch_29
    goto :goto_2d

    .line 1895
    :pswitch_2a
    return v3

    .line 1896
    :pswitch_2b
    const/4 v2, 0x1

    return v2

    .line 1902
    .end local v4    # "langIndex":I
    :cond_2d
    :goto_2d
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1903
    .local v2, "likely":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1904
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3c

    .line 1905
    return v3

    .line 1908
    .end local v1    # "lang":Ljava/lang/String;
    .end local v2    # "likely":Landroid/icu/util/ULocale;
    :cond_3c
    invoke-static {v0}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v1

    .line 1909
    .local v1, "scriptCode":I
    invoke-static {v1}, Landroid/icu/lang/UScript;->isRightToLeft(I)Z

    move-result v2

    return v2

    nop

    :pswitch_data_46
    .packed-switch 0x2b
        :pswitch_2b
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public whitelist test-api setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;
    .registers 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1779
    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public whitelist test-api toLanguageTag()Ljava/lang/String;
    .registers 12

    .line 3069
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 3070
    .local v0, "base":Landroid/icu/impl/locale/BaseLocale;
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    .line 3072
    .local v1, "exts":Landroid/icu/impl/locale/LocaleExtensions;
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POSIX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3074
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 3075
    const-string v2, "va"

    invoke-virtual {v1, v2}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 3077
    new-instance v3, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3079
    .local v3, "ilocbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_start_33
    sget-object v4, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    invoke-virtual {v3, v4, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3080
    const-string v4, "posix"

    invoke-virtual {v3, v2, v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 3081
    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v2
    :try_end_41
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_33 .. :try_end_41} :catch_43

    move-object v1, v2

    .line 3085
    goto :goto_4a

    .line 3082
    :catch_43
    move-exception v2

    .line 3084
    .local v2, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3089
    .end local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    .end local v3    # "ilocbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :cond_4a
    :goto_4a
    invoke-static {v0, v1}, Landroid/icu/impl/locale/LanguageTag;->parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object v2

    .line 3091
    .local v2, "tag":Landroid/icu/impl/locale/LanguageTag;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3092
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 3093
    .local v4, "subtag":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_64

    .line 3094
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    :cond_64
    invoke-virtual {v2}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 3098
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "-"

    if-lez v5, :cond_7a

    .line 3099
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    :cond_7a
    invoke-virtual {v2}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 3104
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8e

    .line 3105
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    :cond_8e
    invoke-virtual {v2}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v5

    .line 3111
    .local v5, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3112
    .local v7, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3113
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3114
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    invoke-static {v9}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    .end local v9    # "s":Ljava/lang/String;
    goto :goto_9e

    .line 3118
    :cond_b5
    invoke-virtual {v2}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v5

    .line 3119
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_bd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3120
    .restart local v9    # "s":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3121
    invoke-static {v9}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    .end local v9    # "s":Ljava/lang/String;
    goto :goto_bd

    .line 3124
    :cond_d4
    invoke-virtual {v2}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v4

    .line 3125
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_fc

    .line 3126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_e9

    .line 3127
    const-string v8, "und"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    :cond_e9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    const-string v8, "x"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3134
    :cond_fc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public whitelist test-api toLocale()Ljava/util/Locale;
    .registers 2

    .line 486
    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    if-nez v0, :cond_a

    .line 487
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 489
    :cond_a
    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1151
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method
