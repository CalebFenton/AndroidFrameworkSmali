.class public final Landroid/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/ULocale$Category;,
        Landroid/icu/util/ULocale$Type;,
        Landroid/icu/util/ULocale$Minimize;,
        Landroid/icu/util/ULocale$Builder;,
        Landroid/icu/util/ULocale$JDKLocaleHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static final CACHE:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Ljava/util/Locale;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field public static final CANADA:Landroid/icu/util/ULocale;

.field public static final CANADA_FRENCH:Landroid/icu/util/ULocale;

.field private static CANONICALIZE_MAP:[[Ljava/lang/String; = null

.field public static final CHINA:Landroid/icu/util/ULocale;

.field public static final CHINESE:Landroid/icu/util/ULocale;

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final ENGLISH:Landroid/icu/util/ULocale;

.field public static final FRANCE:Landroid/icu/util/ULocale;

.field public static final FRENCH:Landroid/icu/util/ULocale;

.field public static final GERMAN:Landroid/icu/util/ULocale;

.field public static final GERMANY:Landroid/icu/util/ULocale;

.field public static final ITALIAN:Landroid/icu/util/ULocale;

.field public static final ITALY:Landroid/icu/util/ULocale;

.field public static final JAPAN:Landroid/icu/util/ULocale;

.field public static final JAPANESE:Landroid/icu/util/ULocale;

.field public static final KOREA:Landroid/icu/util/ULocale;

.field public static final KOREAN:Landroid/icu/util/ULocale;

.field private static final LANG_DIR_STRING:Ljava/lang/String; = "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

.field private static final LOCALE_ATTRIBUTE_KEY:Ljava/lang/String; = "attribute"

.field public static final PRC:Landroid/icu/util/ULocale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Landroid/icu/util/ULocale;

.field public static final SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

.field public static final TAIWAN:Landroid/icu/util/ULocale;

.field public static final TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

.field public static final UK:Landroid/icu/util/ULocale;

.field private static final UNDEFINED_LANGUAGE:Ljava/lang/String; = "und"

.field private static final UNDEFINED_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNDEFINED_SCRIPT:Ljava/lang/String; = "Zzzz"

.field private static final UNDERSCORE:C = '_'

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Landroid/icu/util/ULocale;

.field public static VALID_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static defaultCategoryLocales:[Ljava/util/Locale; = null

.field private static defaultCategoryULocales:[Landroid/icu/util/ULocale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static defaultULocale:Landroid/icu/util/ULocale; = null

.field private static nameCache:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x338ef66846d00be1L

.field private static variantsToKeywords:[[Ljava/lang/String;


# instance fields
.field private volatile transient baseLocale:Landroid/icu/impl/locale/BaseLocale;

.field private volatile transient extensions:Landroid/icu/impl/locale/LocaleExtensions;

.field private volatile transient locale:Ljava/util/Locale;

.field private localeID:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "base"    # Landroid/icu/impl/locale/BaseLocale;
    .param p1, "exts"    # Landroid/icu/impl/locale/LocaleExtensions;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 116
    new-instance v6, Landroid/icu/impl/SimpleCache;

    #@4
    invoke-direct {v6}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@7
    sput-object v6, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/ICUCache;

    #@9
    .line 122
    new-instance v6, Landroid/icu/util/ULocale;

    #@b
    const-string/jumbo v7, "en"

    #@e
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@10
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@13
    sput-object v6, Landroid/icu/util/ULocale;->ENGLISH:Landroid/icu/util/ULocale;

    #@15
    .line 128
    new-instance v6, Landroid/icu/util/ULocale;

    #@17
    const-string/jumbo v7, "fr"

    #@1a
    sget-object v8, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    #@1c
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@1f
    sput-object v6, Landroid/icu/util/ULocale;->FRENCH:Landroid/icu/util/ULocale;

    #@21
    .line 134
    new-instance v6, Landroid/icu/util/ULocale;

    #@23
    const-string/jumbo v7, "de"

    #@26
    sget-object v8, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    #@28
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@2b
    sput-object v6, Landroid/icu/util/ULocale;->GERMAN:Landroid/icu/util/ULocale;

    #@2d
    .line 140
    new-instance v6, Landroid/icu/util/ULocale;

    #@2f
    const-string/jumbo v7, "it"

    #@32
    sget-object v8, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    #@34
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@37
    sput-object v6, Landroid/icu/util/ULocale;->ITALIAN:Landroid/icu/util/ULocale;

    #@39
    .line 146
    new-instance v6, Landroid/icu/util/ULocale;

    #@3b
    const-string/jumbo v7, "ja"

    #@3e
    sget-object v8, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    #@40
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@43
    sput-object v6, Landroid/icu/util/ULocale;->JAPANESE:Landroid/icu/util/ULocale;

    #@45
    .line 152
    new-instance v6, Landroid/icu/util/ULocale;

    #@47
    const-string/jumbo v7, "ko"

    #@4a
    sget-object v8, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    #@4c
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@4f
    sput-object v6, Landroid/icu/util/ULocale;->KOREAN:Landroid/icu/util/ULocale;

    #@51
    .line 158
    new-instance v6, Landroid/icu/util/ULocale;

    #@53
    const-string/jumbo v7, "zh"

    #@56
    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    #@58
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@5b
    sput-object v6, Landroid/icu/util/ULocale;->CHINESE:Landroid/icu/util/ULocale;

    #@5d
    .line 187
    new-instance v6, Landroid/icu/util/ULocale;

    #@5f
    const-string/jumbo v7, "zh_Hans"

    #@62
    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@65
    sput-object v6, Landroid/icu/util/ULocale;->SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

    #@67
    .line 194
    new-instance v6, Landroid/icu/util/ULocale;

    #@69
    const-string/jumbo v7, "zh_Hant"

    #@6c
    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@6f
    sput-object v6, Landroid/icu/util/ULocale;->TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

    #@71
    .line 200
    new-instance v6, Landroid/icu/util/ULocale;

    #@73
    const-string/jumbo v7, "fr_FR"

    #@76
    sget-object v8, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    #@78
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@7b
    sput-object v6, Landroid/icu/util/ULocale;->FRANCE:Landroid/icu/util/ULocale;

    #@7d
    .line 206
    new-instance v6, Landroid/icu/util/ULocale;

    #@7f
    const-string/jumbo v7, "de_DE"

    #@82
    sget-object v8, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    #@84
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@87
    sput-object v6, Landroid/icu/util/ULocale;->GERMANY:Landroid/icu/util/ULocale;

    #@89
    .line 212
    new-instance v6, Landroid/icu/util/ULocale;

    #@8b
    const-string/jumbo v7, "it_IT"

    #@8e
    sget-object v8, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    #@90
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@93
    sput-object v6, Landroid/icu/util/ULocale;->ITALY:Landroid/icu/util/ULocale;

    #@95
    .line 218
    new-instance v6, Landroid/icu/util/ULocale;

    #@97
    const-string/jumbo v7, "ja_JP"

    #@9a
    sget-object v8, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    #@9c
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@9f
    sput-object v6, Landroid/icu/util/ULocale;->JAPAN:Landroid/icu/util/ULocale;

    #@a1
    .line 224
    new-instance v6, Landroid/icu/util/ULocale;

    #@a3
    const-string/jumbo v7, "ko_KR"

    #@a6
    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    #@a8
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@ab
    sput-object v6, Landroid/icu/util/ULocale;->KOREA:Landroid/icu/util/ULocale;

    #@ad
    .line 230
    new-instance v6, Landroid/icu/util/ULocale;

    #@af
    const-string/jumbo v7, "zh_Hans_CN"

    #@b2
    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@b5
    sput-object v6, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    #@b7
    .line 236
    sget-object v6, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    #@b9
    sput-object v6, Landroid/icu/util/ULocale;->PRC:Landroid/icu/util/ULocale;

    #@bb
    .line 242
    new-instance v6, Landroid/icu/util/ULocale;

    #@bd
    const-string/jumbo v7, "zh_Hant_TW"

    #@c0
    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@c3
    sput-object v6, Landroid/icu/util/ULocale;->TAIWAN:Landroid/icu/util/ULocale;

    #@c5
    .line 248
    new-instance v6, Landroid/icu/util/ULocale;

    #@c7
    const-string/jumbo v7, "en_GB"

    #@ca
    sget-object v8, Ljava/util/Locale;->UK:Ljava/util/Locale;

    #@cc
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@cf
    sput-object v6, Landroid/icu/util/ULocale;->UK:Landroid/icu/util/ULocale;

    #@d1
    .line 254
    new-instance v6, Landroid/icu/util/ULocale;

    #@d3
    const-string/jumbo v7, "en_US"

    #@d6
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d8
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@db
    sput-object v6, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    #@dd
    .line 260
    new-instance v6, Landroid/icu/util/ULocale;

    #@df
    const-string/jumbo v7, "en_CA"

    #@e2
    sget-object v8, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    #@e4
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@e7
    sput-object v6, Landroid/icu/util/ULocale;->CANADA:Landroid/icu/util/ULocale;

    #@e9
    .line 266
    new-instance v6, Landroid/icu/util/ULocale;

    #@eb
    const-string/jumbo v7, "fr_CA"

    #@ee
    sget-object v8, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    #@f0
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@f3
    sput-object v6, Landroid/icu/util/ULocale;->CANADA_FRENCH:Landroid/icu/util/ULocale;

    #@f5
    .line 277
    new-instance v6, Ljava/util/Locale;

    #@f7
    const-string/jumbo v7, ""

    #@fa
    const-string/jumbo v8, ""

    #@fd
    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@100
    sput-object v6, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    #@102
    .line 286
    new-instance v6, Landroid/icu/util/ULocale;

    #@104
    const-string/jumbo v7, ""

    #@107
    sget-object v8, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    #@109
    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@10c
    sput-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@10e
    .line 306
    new-instance v6, Landroid/icu/impl/SimpleCache;

    #@110
    invoke-direct {v6}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@113
    sput-object v6, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SimpleCache;

    #@115
    .line 559
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@118
    move-result-object v6

    #@119
    sput-object v6, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@11b
    .line 562
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@11e
    move-result-object v6

    #@11f
    array-length v6, v6

    #@120
    new-array v6, v6, [Ljava/util/Locale;

    #@122
    sput-object v6, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@124
    .line 563
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@127
    move-result-object v6

    #@128
    array-length v6, v6

    #@129
    new-array v6, v6, [Landroid/icu/util/ULocale;

    #@12b
    sput-object v6, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@12d
    .line 566
    sget-object v6, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@12f
    invoke-static {v6}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@132
    move-result-object v6

    #@133
    sput-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@135
    .line 576
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    #@138
    move-result v6

    #@139
    if-eqz v6, :cond_0

    #@13b
    .line 577
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@13e
    move-result-object v6

    #@13f
    array-length v7, v6

    #@140
    .local v1, "cat":Landroid/icu/util/ULocale$Category;
    .local v2, "idx":I
    :goto_0
    if-ge v5, v7, :cond_2

    #@142
    aget-object v1, v6, v5

    #@144
    .line 578
    .end local v2    # "idx":I
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@147
    move-result v2

    #@148
    .line 579
    .restart local v2    # "idx":I
    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@14a
    invoke-static {v1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    #@14d
    move-result-object v9

    #@14e
    aput-object v9, v8, v2

    #@150
    .line 580
    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@152
    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@154
    aget-object v9, v9, v2

    #@156
    invoke-static {v9}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@159
    move-result-object v9

    #@15a
    aput-object v9, v8, v2

    #@15c
    .line 577
    add-int/lit8 v5, v5, 0x1

    #@15e
    goto :goto_0

    #@15f
    .line 587
    .end local v1    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v2    # "idx":I
    :cond_0
    sget-object v6, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@161
    invoke-static {v6}, Landroid/icu/util/ULocale$JDKLocaleHelper;->isOriginalDefaultLocale(Ljava/util/Locale;)Z

    #@164
    move-result v6

    #@165
    if-eqz v6, :cond_1

    #@167
    .line 589
    const-string/jumbo v6, "user.script"

    #@16a
    invoke-static {v6}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@16d
    move-result-object v4

    #@16e
    .line 590
    .local v4, "userScript":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@170
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@173
    move-result v6

    #@174
    if-eqz v6, :cond_1

    #@176
    .line 593
    sget-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@178
    invoke-direct {v6}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@17b
    move-result-object v0

    #@17c
    .line 594
    .local v0, "base":Landroid/icu/impl/locale/BaseLocale;
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@17f
    move-result-object v6

    #@180
    .line 595
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@183
    move-result-object v7

    #@184
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@187
    move-result-object v8

    #@188
    .line 594
    invoke-static {v6, v4, v7, v8}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    #@18b
    move-result-object v3

    #@18c
    .line 596
    .local v3, "newBase":Landroid/icu/impl/locale/BaseLocale;
    sget-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@18e
    invoke-direct {v6}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@191
    move-result-object v6

    #@192
    invoke-static {v3, v6}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    #@195
    move-result-object v6

    #@196
    sput-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@198
    .line 602
    .end local v0    # "base":Landroid/icu/impl/locale/BaseLocale;
    .end local v3    # "newBase":Landroid/icu/impl/locale/BaseLocale;
    :cond_1
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@19b
    move-result-object v6

    #@19c
    array-length v7, v6

    #@19d
    :goto_1
    if-ge v5, v7, :cond_2

    #@19f
    aget-object v1, v6, v5

    #@1a1
    .line 603
    .restart local v1    # "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1a4
    move-result v2

    #@1a5
    .line 604
    .restart local v2    # "idx":I
    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@1a7
    sget-object v9, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@1a9
    aput-object v9, v8, v2

    #@1ab
    .line 605
    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@1ad
    sget-object v9, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@1af
    aput-object v9, v8, v2

    #@1b1
    .line 602
    add-int/lit8 v5, v5, 0x1

    #@1b3
    goto :goto_1

    #@1b4
    .line 1955
    .end local v1    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v2    # "idx":I
    .end local v4    # "userScript":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/icu/util/ULocale$Type;

    #@1b6
    invoke-direct {v5, v10}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale$Type;)V

    #@1b9
    sput-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@1bb
    .line 1971
    new-instance v5, Landroid/icu/util/ULocale$Type;

    #@1bd
    invoke-direct {v5, v10}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale$Type;)V

    #@1c0
    sput-object v5, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@1c2
    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 472
    invoke-static {p1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@9
    .line 471
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 482
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 481
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "c"    # Ljava/lang/String;

    #@0
    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 506
    const-string/jumbo v0, ""

    #@6
    invoke-static {p1, p2, p3, v0}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@10
    .line 505
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 420
    iput-object p1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@5
    .line 421
    iput-object p2, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    #@7
    .line 419
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 429
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@11
    .line 430
    iput-object p1, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    #@13
    .line 428
    return-void
.end method

.method public static acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 4
    .param p0, "acceptLanguageList"    # Ljava/lang/String;
    .param p1, "availableLocales"    # [Landroid/icu/util/ULocale;
    .param p2, "fallback"    # [Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2003
    if-nez p0, :cond_0

    #@3
    .line 2004
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 2006
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 2008
    .local v0, "acceptList":[Landroid/icu/util/ULocale;
    const/4 v2, 0x1

    #@b
    :try_start_0
    invoke-static {p0, v2}, Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v0

    #@f
    .line 2012
    .end local v0    # "acceptList":[Landroid/icu/util/ULocale;
    :goto_0
    if-nez v0, :cond_1

    #@11
    .line 2013
    return-object v3

    #@12
    .line 2009
    .restart local v0    # "acceptList":[Landroid/icu/util/ULocale;
    :catch_0
    move-exception v1

    #@13
    .line 2010
    .local v1, "pe":Ljava/text/ParseException;
    const/4 v0, 0x0

    #@14
    goto :goto_0

    #@15
    .line 2015
    .end local v0    # "acceptList":[Landroid/icu/util/ULocale;
    .end local v1    # "pe":Ljava/text/ParseException;
    :cond_1
    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method public static acceptLanguage(Ljava/lang/String;[Z)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "acceptLanguageList"    # Ljava/lang/String;
    .param p1, "fallback"    # [Z

    #@0
    .prologue
    .line 2099
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 11
    .param p0, "acceptLanguageList"    # [Landroid/icu/util/ULocale;
    .param p1, "availableLocales"    # [Landroid/icu/util/ULocale;
    .param p2, "fallback"    # [Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 2038
    if-eqz p2, :cond_0

    #@4
    .line 2039
    const/4 v7, 0x1

    #@5
    aput-boolean v7, p2, v9

    #@7
    .line 2041
    :cond_0
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v7, p0

    #@9
    if-ge v1, v7, :cond_8

    #@b
    .line 2042
    aget-object v0, p0, v1

    #@d
    .line 2043
    .local v0, "aLocale":Landroid/icu/util/ULocale;
    move-object v6, p2

    #@e
    .line 2045
    .end local v0    # "aLocale":Landroid/icu/util/ULocale;
    :cond_1
    const/4 v2, 0x0

    #@f
    .local v2, "j":I
    :goto_1
    array-length v7, p1

    #@10
    if-ge v2, v7, :cond_6

    #@12
    .line 2046
    aget-object v7, p1, v2

    #@14
    invoke-virtual {v7, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_3

    #@1a
    .line 2047
    if-eqz v6, :cond_2

    #@1c
    .line 2048
    aput-boolean v9, v6, v9

    #@1e
    .line 2050
    :cond_2
    aget-object v7, p1, v2

    #@20
    return-object v7

    #@21
    .line 2054
    :cond_3
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_5

    #@2b
    .line 2055
    aget-object v7, p1, v2

    #@2d
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@34
    move-result v7

    #@35
    if-lez v7, :cond_5

    #@37
    .line 2056
    aget-object v7, p1, v2

    #@39
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v7

    #@45
    .line 2054
    if-eqz v7, :cond_5

    #@47
    .line 2057
    aget-object v7, p1, v2

    #@49
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v7

    #@55
    .line 2054
    if-eqz v7, :cond_5

    #@57
    .line 2058
    aget-object v7, p1, v2

    #@59
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v7

    #@65
    .line 2054
    if-eqz v7, :cond_5

    #@67
    .line 2059
    aget-object v7, p1, v2

    #@69
    invoke-static {v7}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@6c
    move-result-object v4

    #@6d
    .line 2060
    .local v4, "minAvail":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@74
    move-result v7

    #@75
    if-nez v7, :cond_5

    #@77
    .line 2061
    if-eqz v6, :cond_4

    #@79
    .line 2062
    aput-boolean v9, v6, v9

    #@7b
    .line 2064
    :cond_4
    return-object v0

    #@7c
    .line 2045
    .end local v4    # "minAvail":Landroid/icu/util/ULocale;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@7e
    goto :goto_1

    #@7f
    .line 2068
    :cond_6
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@82
    move-result-object v3

    #@83
    .line 2069
    .local v3, "loc":Ljava/util/Locale;
    invoke-static {v3}, Landroid/icu/impl/LocaleUtility;->fallback(Ljava/util/Locale;)Ljava/util/Locale;

    #@86
    move-result-object v5

    #@87
    .line 2070
    .local v5, "parent":Ljava/util/Locale;
    if-eqz v5, :cond_7

    #@89
    .line 2071
    new-instance v0, Landroid/icu/util/ULocale;

    #@8b
    invoke-direct {v0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/util/Locale;)V

    #@8e
    .line 2075
    :goto_2
    const/4 v6, 0x0

    #@8f
    .line 2076
    .local v6, "setFallback":[Z
    if-nez v0, :cond_1

    #@91
    .line 2041
    add-int/lit8 v1, v1, 0x1

    #@93
    goto/16 :goto_0

    #@95
    .line 2073
    .end local v6    # "setFallback":[Z
    :cond_7
    const/4 v0, 0x0

    #@96
    .local v0, "aLocale":Landroid/icu/util/ULocale;
    goto :goto_2

    #@97
    .line 2078
    .end local v0    # "aLocale":Landroid/icu/util/ULocale;
    .end local v2    # "j":I
    .end local v3    # "loc":Ljava/util/Locale;
    .end local v5    # "parent":Ljava/util/Locale;
    :cond_8
    return-object v10
.end method

.method public static acceptLanguage([Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "acceptLanguageList"    # [Landroid/icu/util/ULocale;
    .param p1, "fallback"    # [Z

    #@0
    .prologue
    .line 2120
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 2413
    const/4 v4, 0x3

    #@1
    new-array v1, v4, [Ljava/lang/String;

    #@3
    .line 2414
    .local v1, "tags":[Ljava/lang/String;
    const/4 v2, 0x0

    #@4
    .line 2417
    .local v2, "trailing":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@6
    .line 2416
    invoke-static {v4, v1}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    #@9
    move-result v3

    #@a
    .line 2420
    .local v3, "trailingIndex":I
    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    if-ge v3, v4, :cond_0

    #@12
    .line 2421
    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@14
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 2426
    .end local v2    # "trailing":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    #@19
    aget-object v4, v1, v4

    #@1b
    .line 2427
    const/4 v5, 0x1

    #@1c
    aget-object v5, v1, v5

    #@1e
    .line 2428
    const/4 v6, 0x2

    #@1f
    aget-object v6, v1, v6

    #@21
    .line 2425
    invoke-static {v4, v5, v6, v2}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 2431
    .local v0, "newLocaleID":Ljava/lang/String;
    if-nez v0, :cond_1

    #@27
    .end local p0    # "loc":Landroid/icu/util/ULocale;
    :goto_0
    return-object p0

    #@28
    .restart local p0    # "loc":Landroid/icu/util/ULocale;
    :cond_1
    new-instance p0, Landroid/icu/util/ULocale;

    #@2a
    .end local p0    # "loc":Landroid/icu/util/ULocale;
    invoke-direct {p0, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 2685
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2686
    const/16 v0, 0x5f

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    .line 2689
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 2684
    return-void
.end method

.method private base()Landroid/icu/impl/locale/BaseLocale;
    .locals 6

    #@0
    .prologue
    .line 3958
    iget-object v5, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    #@2
    if-nez v5, :cond_1

    #@4
    .line 3960
    const-string/jumbo v4, ""

    #@7
    .local v4, "variant":Ljava/lang/String;
    move-object v2, v4

    #@8
    .local v2, "region":Ljava/lang/String;
    move-object v3, v4

    #@9
    .local v3, "script":Ljava/lang/String;
    move-object v0, v4

    #@a
    .line 3961
    .local v0, "language":Ljava/lang/String;
    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@c
    invoke-virtual {p0, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_0

    #@12
    .line 3962
    new-instance v1, Landroid/icu/impl/LocaleIDParser;

    #@14
    iget-object v5, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@16
    invoke-direct {v1, v5}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@19
    .line 3963
    .local v1, "lp":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 3964
    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 3965
    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 3966
    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 3968
    .end local v1    # "lp":Landroid/icu/impl/LocaleIDParser;
    :cond_0
    invoke-static {v0, v3, v2, v4}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    #@2f
    .line 3970
    .end local v0    # "language":Ljava/lang/String;
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "script":Ljava/lang/String;
    .end local v4    # "variant":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    #@31
    return-object v5
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 1194
    new-instance v4, Landroid/icu/impl/LocaleIDParser;

    #@6
    invoke-direct {v4, p0, v9}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    #@9
    .line 1195
    .local v4, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1196
    .local v0, "baseName":Ljava/lang/String;
    const/4 v1, 0x0

    #@e
    .line 1202
    .local v1, "foundVariant":Z
    const-string/jumbo v6, ""

    #@11
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 1203
    const-string/jumbo v6, ""

    #@1a
    return-object v6

    #@1b
    .line 1209
    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale;->initCANONICALIZE_MAP()V

    #@1e
    .line 1212
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_0
    sget-object v6, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    #@21
    array-length v6, v6

    #@22
    if-ge v2, v6, :cond_2

    #@24
    .line 1213
    sget-object v6, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    #@26
    aget-object v5, v6, v2

    #@28
    .line 1214
    .local v5, "vals":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "_"

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    aget-object v7, v5, v8

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@41
    move-result v3

    #@42
    .line 1215
    .local v3, "idx":I
    const/4 v6, -0x1

    #@43
    if-le v3, v6, :cond_5

    #@45
    .line 1216
    const/4 v1, 0x1

    #@46
    .line 1218
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 1219
    const-string/jumbo v6, "_"

    #@4d
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_1

    #@53
    .line 1220
    add-int/lit8 v3, v3, -0x1

    #@55
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    .line 1222
    :cond_1
    invoke-virtual {v4, v0}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    #@5c
    .line 1223
    aget-object v6, v5, v9

    #@5e
    aget-object v7, v5, v10

    #@60
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    .line 1229
    .end local v3    # "idx":I
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    #@64
    :goto_1
    sget-object v6, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    #@66
    array-length v6, v6

    #@67
    if-ge v2, v6, :cond_3

    #@69
    .line 1230
    sget-object v6, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    #@6b
    aget-object v6, v6, v2

    #@6d
    aget-object v6, v6, v8

    #@6f
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_6

    #@75
    .line 1231
    const/4 v1, 0x1

    #@76
    .line 1233
    sget-object v6, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    #@78
    aget-object v5, v6, v2

    #@7a
    .line 1234
    .restart local v5    # "vals":[Ljava/lang/String;
    aget-object v6, v5, v9

    #@7c
    invoke-virtual {v4, v6}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    #@7f
    .line 1235
    aget-object v6, v5, v10

    #@81
    if-eqz v6, :cond_3

    #@83
    .line 1236
    aget-object v6, v5, v10

    #@85
    const/4 v7, 0x3

    #@86
    aget-object v7, v5, v7

    #@88
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 1243
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    #@8d
    .line 1244
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    #@90
    move-result-object v6

    #@91
    const-string/jumbo v7, "nb"

    #@94
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v6

    #@98
    if-eqz v6, :cond_4

    #@9a
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    const-string/jumbo v7, "NY"

    #@a1
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v6

    #@a5
    if-eqz v6, :cond_4

    #@a7
    .line 1245
    const-string/jumbo v6, "nn"

    #@aa
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    #@b1
    move-result-object v8

    #@b2
    invoke-static {v6, v7, v8, v11}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    invoke-virtual {v4, v6}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    #@b9
    .line 1249
    :cond_4
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    return-object v6

    #@be
    .line 1212
    .restart local v3    # "idx":I
    .restart local v5    # "vals":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@c0
    goto/16 :goto_0

    #@c2
    .line 1229
    .end local v3    # "idx":I
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@c4
    goto :goto_1
.end method

.method public static createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 3
    .param p0, "nonCanonicalID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    new-instance v1, Landroid/icu/util/ULocale;

    #@2
    invoke-static {p0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    const/4 v0, 0x0

    #@7
    check-cast v0, Ljava/util/Locale;

    #@9
    invoke-direct {v1, v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@c
    return-object v1
.end method

.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variants"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2934
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 2975
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2

    #@13
    .line 2978
    invoke-static {p0, p1, v3, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 2984
    .local v1, "searchTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 2985
    .local v0, "likelySubtags":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1d
    .line 2989
    invoke-static {v3, v3, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 2937
    .end local v0    # "likelySubtags":Ljava/lang/String;
    .end local v1    # "searchTag":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 2943
    .restart local v1    # "searchTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 2959
    .restart local v0    # "likelySubtags":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@2c
    .line 2963
    invoke-static {v3, v3, v3, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 3001
    .end local v0    # "likelySubtags":Ljava/lang/String;
    .end local v1    # "searchTag":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_3

    #@37
    .line 3004
    invoke-static {p0, v3, p2, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 3010
    .restart local v1    # "searchTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 3012
    .restart local v0    # "likelySubtags":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@41
    .line 3016
    invoke-static {v3, p1, v3, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    return-object v2

    #@46
    .line 3030
    .end local v0    # "likelySubtags":Ljava/lang/String;
    .end local v1    # "searchTag":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v3, v3, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 3036
    .restart local v1    # "searchTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 3038
    .restart local v0    # "likelySubtags":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@50
    .line 3042
    invoke-static {v3, p1, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    return-object v2

    #@55
    .line 3051
    :cond_4
    return-object v3
.end method

.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "trailing"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2848
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "trailing"    # Ljava/lang/String;
    .param p4, "alternateTags"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0x5f

    #@2
    const/4 v8, 0x1

    #@3
    .line 2711
    const/4 v3, 0x0

    #@4
    .line 2712
    .local v3, "parser":Landroid/icu/impl/LocaleIDParser;
    const/4 v4, 0x0

    #@5
    .line 2714
    .local v4, "regionAppended":Z
    new-instance v6, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 2716
    .local v6, "tag":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@d
    move-result v7

    #@e
    if-nez v7, :cond_4

    #@10
    .line 2717
    invoke-static {p0, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@13
    .line 2744
    .end local v3    # "parser":Landroid/icu/impl/LocaleIDParser;
    :goto_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_7

    #@19
    .line 2745
    invoke-static {p1, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@1c
    .line 2766
    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_9

    #@22
    .line 2767
    invoke-static {p2, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@25
    .line 2771
    const/4 v4, 0x1

    #@26
    .line 2792
    :cond_1
    :goto_2
    if-eqz p3, :cond_3

    #@28
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@2b
    move-result v7

    #@2c
    if-le v7, v8, :cond_3

    #@2e
    .line 2798
    const/4 v5, 0x0

    #@2f
    .line 2800
    .local v5, "separators":I
    const/4 v7, 0x0

    #@30
    invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v7

    #@34
    if-ne v7, v9, :cond_b

    #@36
    .line 2801
    invoke-virtual {p3, v8}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v7

    #@3a
    if-ne v7, v9, :cond_2

    #@3c
    .line 2802
    const/4 v5, 0x2

    #@3d
    .line 2809
    :cond_2
    :goto_3
    if-eqz v4, :cond_d

    #@3f
    .line 2814
    const/4 v7, 0x2

    #@40
    if-ne v5, v7, :cond_c

    #@42
    .line 2815
    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 2833
    .end local v5    # "separators":I
    :cond_3
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    return-object v7

    #@4e
    .line 2721
    .restart local v3    # "parser":Landroid/icu/impl/LocaleIDParser;
    :cond_4
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_5

    #@54
    .line 2727
    const-string/jumbo v7, "und"

    #@57
    .line 2726
    invoke-static {v7, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@5a
    goto :goto_0

    #@5b
    .line 2731
    :cond_5
    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    #@5d
    .end local v3    # "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-direct {v3, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@60
    .line 2733
    .local v3, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 2740
    .local v0, "alternateLang":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@67
    move-result v7

    #@68
    if-nez v7, :cond_6

    #@6a
    .line 2739
    .end local v0    # "alternateLang":Ljava/lang/String;
    :goto_5
    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@6d
    goto :goto_0

    #@6e
    .line 2740
    .restart local v0    # "alternateLang":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "und"

    #@71
    goto :goto_5

    #@72
    .line 2749
    .end local v0    # "alternateLang":Ljava/lang/String;
    .end local v3    # "parser":Landroid/icu/impl/LocaleIDParser;
    :cond_7
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@75
    move-result v7

    #@76
    if-nez v7, :cond_0

    #@78
    .line 2753
    if-nez v3, :cond_8

    #@7a
    .line 2754
    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    #@7c
    invoke-direct {v3, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@7f
    .line 2757
    :cond_8
    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 2759
    .local v2, "alternateScript":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@86
    move-result v7

    #@87
    if-nez v7, :cond_0

    #@89
    .line 2760
    invoke-static {v2, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@8c
    goto :goto_1

    #@8d
    .line 2773
    .end local v2    # "alternateScript":Ljava/lang/String;
    :cond_9
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@90
    move-result v7

    #@91
    if-nez v7, :cond_1

    #@93
    .line 2777
    if-nez v3, :cond_a

    #@95
    .line 2778
    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    #@97
    invoke-direct {v3, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@9a
    .line 2781
    :cond_a
    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    .line 2783
    .local v1, "alternateRegion":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@a1
    move-result v7

    #@a2
    if-nez v7, :cond_1

    #@a4
    .line 2784
    invoke-static {v1, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@a7
    .line 2788
    const/4 v4, 0x1

    #@a8
    goto/16 :goto_2

    #@aa
    .line 2806
    .end local v1    # "alternateRegion":Ljava/lang/String;
    .restart local v5    # "separators":I
    :cond_b
    const/4 v5, 0x1

    #@ab
    goto :goto_3

    #@ac
    .line 2818
    :cond_c
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    goto :goto_4

    #@b0
    .line 2826
    :cond_d
    if-ne v5, v8, :cond_e

    #@b2
    .line 2827
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b5
    .line 2829
    :cond_e
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    goto :goto_4
.end method

.method private extensions()Landroid/icu/impl/locale/LocaleExtensions;
    .locals 13

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3974
    iget-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 3975
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    #@8
    move-result-object v5

    #@9
    .line 3976
    .local v5, "kwitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    #@b
    .line 3977
    sget-object v8, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    #@d
    iput-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    #@f
    .line 4014
    .end local v5    # "kwitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    #@11
    return-object v8

    #@12
    .line 3979
    .restart local v5    # "kwitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@14
    invoke-direct {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    #@17
    .line 3980
    .local v3, "intbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_5

    #@1d
    .line 3981
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Ljava/lang/String;

    #@23
    .line 3982
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, "attribute"

    #@26
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_3

    #@2c
    .line 3984
    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    const-string/jumbo v10, "[-_]"

    #@33
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    .line 3985
    .local v7, "uattributes":[Ljava/lang/String;
    array-length v10, v7

    #@38
    move v8, v9

    #@39
    :goto_2
    if-ge v8, v10, :cond_2

    #@3b
    aget-object v6, v7, v8

    #@3d
    .line 3987
    .local v6, "uattr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 3985
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@42
    goto :goto_2

    #@43
    .line 3988
    :catch_0
    move-exception v2

    #@44
    .local v2, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    goto :goto_3

    #@45
    .line 3992
    .end local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    .end local v6    # "uattr":Ljava/lang/String;
    .end local v7    # "uattributes":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@48
    move-result v8

    #@49
    const/4 v10, 0x2

    #@4a
    if-lt v8, v10, :cond_4

    #@4c
    .line 3993
    invoke-static {v4}, Landroid/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    .line 3994
    .local v0, "bcpKey":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-static {v4, v8}, Landroid/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 3995
    .local v1, "bcpType":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@5a
    if-eqz v1, :cond_2

    #@5c
    .line 3997
    :try_start_1
    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_1
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    #@5f
    goto :goto_1

    #@60
    .line 3998
    :catch_1
    move-exception v2

    #@61
    .restart local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    goto :goto_1

    #@62
    .line 4002
    .end local v0    # "bcpKey":Ljava/lang/String;
    .end local v1    # "bcpType":Ljava/lang/String;
    .end local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@65
    move-result v8

    #@66
    const/4 v10, 0x1

    #@67
    if-ne v8, v10, :cond_2

    #@69
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    #@6c
    move-result v8

    #@6d
    const/16 v10, 0x75

    #@6f
    if-eq v8, v10, :cond_2

    #@71
    .line 4004
    const/4 v8, 0x0

    #@72
    :try_start_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v8

    #@76
    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v10

    #@7a
    const-string/jumbo v11, "_"

    #@7d
    .line 4005
    const-string/jumbo v12, "-"

    #@80
    .line 4004
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v3, v8, v10}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_2
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    #@87
    goto :goto_1

    #@88
    .line 4006
    :catch_2
    move-exception v2

    #@89
    .restart local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    goto :goto_1

    #@8a
    .line 4011
    .end local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    .end local v4    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@8d
    move-result-object v8

    #@8e
    iput-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    #@90
    goto/16 :goto_0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 4
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3387
    const/4 v2, 0x0

    #@1
    invoke-static {p0, v2}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    #@4
    move-result-object v1

    #@5
    .line 3388
    .local v1, "tag":Landroid/icu/impl/locale/LanguageTag;
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@7
    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    #@a
    .line 3389
    .local v0, "bldr":Landroid/icu/impl/locale/InternalLocaleBuilder;
    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@d
    .line 3390
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method public static forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 2
    .param p0, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 440
    if-nez p0, :cond_0

    #@3
    .line 441
    return-object v1

    #@4
    .line 443
    :cond_0
    sget-object v1, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SimpleCache;

    #@6
    invoke-virtual {v1, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/icu/util/ULocale;

    #@c
    .line 444
    .local v0, "result":Landroid/icu/util/ULocale;
    if-nez v0, :cond_1

    #@e
    .line 445
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@11
    move-result-object v0

    #@12
    .line 446
    sget-object v1, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SimpleCache;

    #@14
    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@17
    .line 448
    :cond_1
    return-object v0
.end method

.method public static getAvailableLocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 888
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1063
    const/16 v0, 0x40

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 1064
    return-object p0

    #@a
    .line 1066
    :cond_0
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@c
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 976
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDefault()Landroid/icu/util/ULocale;
    .locals 9

    #@0
    .prologue
    .line 634
    const-class v4, Landroid/icu/util/ULocale;

    #@2
    monitor-enter v4

    #@3
    .line 635
    :try_start_0
    sget-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 644
    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v4

    #@a
    return-object v3

    #@b
    .line 646
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@e
    move-result-object v1

    #@f
    .line 647
    .local v1, "currentDefault":Ljava/util/Locale;
    sget-object v3, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@11
    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 648
    sput-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@19
    .line 649
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@1c
    move-result-object v3

    #@1d
    sput-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@1f
    .line 651
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_1

    #@25
    .line 655
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@28
    move-result-object v5

    #@29
    const/4 v3, 0x0

    #@2a
    array-length v6, v5

    #@2b
    :goto_0
    if-ge v3, v6, :cond_1

    #@2d
    aget-object v0, v5, v3

    #@2f
    .line 656
    .local v0, "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@32
    move-result v2

    #@33
    .line 657
    .local v2, "idx":I
    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@35
    aput-object v1, v7, v2

    #@37
    .line 658
    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@39
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3c
    move-result-object v8

    #@3d
    aput-object v8, v7, v2

    #@3f
    .line 655
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_0

    #@42
    .line 662
    .end local v0    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v2    # "idx":I
    :cond_1
    sget-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v4

    #@45
    return-object v3

    #@46
    .line 634
    :catchall_0
    move-exception v3

    #@47
    monitor-exit v4

    #@48
    throw v3
.end method

.method public static getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;
    .locals 11
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;

    #@0
    .prologue
    .line 701
    const-class v6, Landroid/icu/util/ULocale;

    #@2
    monitor-enter v6

    #@3
    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@6
    move-result v3

    #@7
    .line 703
    .local v3, "idx":I
    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@9
    aget-object v5, v5, v3

    #@b
    if-nez v5, :cond_0

    #@d
    .line 707
    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v6

    #@10
    return-object v5

    #@11
    .line 709
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_2

    #@17
    .line 710
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    #@1a
    move-result-object v1

    #@1b
    .line 711
    .local v1, "currentCategoryDefault":Ljava/util/Locale;
    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@1d
    aget-object v5, v5, v3

    #@1f
    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_1

    #@25
    .line 712
    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@27
    aput-object v1, v5, v3

    #@29
    .line 713
    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@2b
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@2e
    move-result-object v7

    #@2f
    aput-object v7, v5, v3

    #@31
    .line 743
    .end local v1    # "currentCategoryDefault":Ljava/util/Locale;
    :cond_1
    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@33
    aget-object v5, v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    monitor-exit v6

    #@36
    return-object v5

    #@37
    .line 728
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3a
    move-result-object v2

    #@3b
    .line 729
    .local v2, "currentDefault":Ljava/util/Locale;
    sget-object v5, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@3d
    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_1

    #@43
    .line 730
    sput-object v2, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@45
    .line 731
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@48
    move-result-object v5

    #@49
    sput-object v5, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@4b
    .line 733
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@4e
    move-result-object v7

    #@4f
    const/4 v5, 0x0

    #@50
    array-length v8, v7

    #@51
    :goto_0
    if-ge v5, v8, :cond_1

    #@53
    aget-object v0, v7, v5

    #@55
    .line 734
    .local v0, "cat":Landroid/icu/util/ULocale$Category;
    invoke-virtual {v0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@58
    move-result v4

    #@59
    .line 735
    .local v4, "tmpIdx":I
    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@5b
    aput-object v2, v9, v4

    #@5d
    .line 736
    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@5f
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@62
    move-result-object v10

    #@63
    aput-object v10, v9, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .line 733
    add-int/lit8 v5, v5, 0x1

    #@67
    goto :goto_0

    #@68
    .line 701
    .end local v0    # "cat":Landroid/icu/util/ULocale$Category;
    .end local v2    # "currentDefault":Ljava/util/Locale;
    .end local v3    # "idx":I
    .end local v4    # "tmpIdx":I
    :catchall_0
    move-exception v5

    #@69
    monitor-exit v6

    #@6a
    throw v5
.end method

.method public static getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1661
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1647
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1666
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@3
    move-result-object v0

    #@4
    .line 1667
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1666
    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1728
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1752
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1740
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1756
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1807
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1792
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    .line 1793
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    .line 1792
    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1813
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 1814
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1815
    .local v0, "value":Ljava/lang/String;
    invoke-static {p2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1, v0}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1452
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1439
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    .line 1440
    const/4 v2, 0x0

    #@b
    .line 1439
    invoke-static {v0, v1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;
    .param p2, "useDialect"    # Z

    #@0
    .prologue
    .line 1505
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1506
    .local v0, "lang":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Landroid/icu/text/LocaleDisplayNames;->languageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1505
    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .restart local v0    # "lang":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1500
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1486
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    .line 1487
    const/4 v2, 0x1

    #@b
    .line 1486
    invoke-static {v0, v1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1859
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1847
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1863
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1912
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1898
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    .line 1899
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    .line 1898
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1916
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    invoke-static {p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1586
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1562
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1598
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1575
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1608
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@3
    move-result-object v0

    #@4
    .line 1609
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1608
    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1603
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@3
    move-result-object v0

    #@4
    .line 1604
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1603
    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1711
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "displayLocaleID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1699
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    new-instance v1, Landroid/icu/util/ULocale;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@a
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1715
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@3
    move-result-object v0

    #@4
    .line 1716
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1715
    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1005
    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fallback"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x5f

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, -0x1

    #@4
    .line 1024
    const/16 v2, 0x40

    #@6
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    .line 1025
    .local v0, "extStart":I
    if-ne v0, v3, :cond_0

    #@c
    .line 1026
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    .line 1028
    :cond_0
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->lastIndexOf(II)I

    #@13
    move-result v1

    #@14
    .line 1029
    .local v1, "last":I
    if-ne v1, v3, :cond_3

    #@16
    .line 1030
    const/4 v1, 0x0

    #@17
    .line 1040
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 1037
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@33
    .line 1033
    :cond_3
    if-lez v1, :cond_1

    #@35
    .line 1034
    add-int/lit8 v2, v1, -0x1

    #@37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v2

    #@3b
    if-eq v2, v5, :cond_2

    #@3d
    goto :goto_0
.end method

.method public static getISO3Country(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    invoke-static {p0}, Landroid/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getISO3Language(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1331
    invoke-static {p0}, Landroid/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 897
    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOCountries()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 909
    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOLanguages()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .locals 29
    .param p0, "base"    # Landroid/icu/impl/locale/BaseLocale;
    .param p1, "exts"    # Landroid/icu/impl/locale/LocaleExtensions;

    #@0
    .prologue
    .line 3891
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v25

    #@4
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v26

    #@8
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@b
    move-result-object v27

    #@c
    .line 3892
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@f
    move-result-object v28

    #@10
    .line 3891
    invoke-static/range {v25 .. v28}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v12

    #@14
    .line 3894
    .local v12, "id":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@17
    move-result-object v11

    #@18
    .line 3895
    .local v11, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    #@1b
    move-result v25

    #@1c
    if-nez v25, :cond_a

    #@1e
    .line 3900
    new-instance v19, Ljava/util/TreeMap;

    #@20
    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    #@23
    .line 3901
    .local v19, "kwds":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v15

    #@27
    .local v15, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v25

    #@2b
    if-eqz v25, :cond_7

    #@2d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v14

    #@31
    check-cast v14, Ljava/lang/Character;

    #@33
    .line 3902
    .local v14, "key":Ljava/lang/Character;
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v14}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    #@38
    move-result-object v10

    #@39
    .line 3903
    .local v10, "ext":Landroid/icu/impl/locale/Extension;
    instance-of v0, v10, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@3b
    move/from16 v25, v0

    #@3d
    if-eqz v25, :cond_6

    #@3f
    move-object/from16 v23, v10

    #@41
    .line 3904
    check-cast v23, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@43
    .line 3905
    .local v23, "uext":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    invoke-virtual/range {v23 .. v23}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    #@46
    move-result-object v24

    #@47
    .line 3906
    .local v24, "ukeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v7

    #@4b
    .local v7, "bcpKey$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v25

    #@4f
    if-eqz v25, :cond_3

    #@51
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Ljava/lang/String;

    #@57
    .line 3907
    .local v6, "bcpKey":Ljava/lang/String;
    move-object/from16 v0, v23

    #@59
    invoke-virtual {v0, v6}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    .line 3909
    .local v8, "bcpType":Ljava/lang/String;
    invoke-static {v6}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v20

    #@61
    .line 3910
    .local v20, "lkey":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@64
    move-result v25

    #@65
    if-nez v25, :cond_1

    #@67
    const-string/jumbo v8, "yes"

    #@6a
    .end local v8    # "bcpType":Ljava/lang/String;
    :cond_1
    invoke-static {v6, v8}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v21

    #@6e
    .line 3912
    .local v21, "ltype":Ljava/lang/String;
    const-string/jumbo v25, "va"

    #@71
    move-object/from16 v0, v20

    #@73
    move-object/from16 v1, v25

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v25

    #@79
    if-eqz v25, :cond_2

    #@7b
    const-string/jumbo v25, "posix"

    #@7e
    move-object/from16 v0, v21

    #@80
    move-object/from16 v1, v25

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v25

    #@86
    if-eqz v25, :cond_2

    #@88
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@8b
    move-result-object v25

    #@8c
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@8f
    move-result v25

    #@90
    if-nez v25, :cond_2

    #@92
    .line 3913
    new-instance v25, Ljava/lang/StringBuilder;

    #@94
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    move-object/from16 v0, v25

    #@99
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v25

    #@9d
    const-string/jumbo v26, "_POSIX"

    #@a0
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v25

    #@a4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    goto :goto_1

    #@a9
    .line 3915
    :cond_2
    invoke-virtual/range {v19 .. v21}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    goto :goto_1

    #@ad
    .line 3919
    .end local v6    # "bcpKey":Ljava/lang/String;
    .end local v20    # "lkey":Ljava/lang/String;
    .end local v21    # "ltype":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    #@b0
    move-result-object v22

    #@b1
    .line 3920
    .local v22, "uattributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    #@b4
    move-result v25

    #@b5
    if-lez v25, :cond_0

    #@b7
    .line 3921
    new-instance v5, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    .line 3922
    .local v5, "attrbuf":Ljava/lang/StringBuilder;
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bf
    move-result-object v4

    #@c0
    .local v4, "attr$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@c3
    move-result v25

    #@c4
    if-eqz v25, :cond_5

    #@c6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c9
    move-result-object v3

    #@ca
    check-cast v3, Ljava/lang/String;

    #@cc
    .line 3923
    .local v3, "attr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@cf
    move-result v25

    #@d0
    if-lez v25, :cond_4

    #@d2
    .line 3924
    const/16 v25, 0x2d

    #@d4
    move/from16 v0, v25

    #@d6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d9
    .line 3926
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    goto :goto_2

    #@dd
    .line 3928
    .end local v3    # "attr":Ljava/lang/String;
    :cond_5
    const-string/jumbo v25, "attribute"

    #@e0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v26

    #@e4
    move-object/from16 v0, v19

    #@e6
    move-object/from16 v1, v25

    #@e8
    move-object/from16 v2, v26

    #@ea
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    goto/16 :goto_0

    #@ef
    .line 3931
    .end local v4    # "attr$iterator":Ljava/util/Iterator;
    .end local v5    # "attrbuf":Ljava/lang/StringBuilder;
    .end local v7    # "bcpKey$iterator":Ljava/util/Iterator;
    .end local v22    # "uattributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "uext":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    .end local v24    # "ukeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@f2
    move-result-object v25

    #@f3
    invoke-virtual {v10}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    #@f6
    move-result-object v26

    #@f7
    move-object/from16 v0, v19

    #@f9
    move-object/from16 v1, v25

    #@fb
    move-object/from16 v2, v26

    #@fd
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    goto/16 :goto_0

    #@102
    .line 3935
    .end local v10    # "ext":Landroid/icu/impl/locale/Extension;
    .end local v14    # "key":Ljava/lang/Character;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->isEmpty()Z

    #@105
    move-result v25

    #@106
    if-nez v25, :cond_a

    #@108
    .line 3936
    new-instance v9, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10d
    .line 3937
    .local v9, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v25, "@"

    #@110
    move-object/from16 v0, v25

    #@112
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 3938
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@118
    move-result-object v16

    #@119
    .line 3939
    .local v16, "kset":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v13, 0x0

    #@11a
    .line 3940
    .local v13, "insertSep":Z
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11d
    move-result-object v18

    #@11e
    .local v18, "kwd$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@121
    move-result v25

    #@122
    if-eqz v25, :cond_9

    #@124
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@127
    move-result-object v17

    #@128
    check-cast v17, Ljava/util/Map$Entry;

    #@12a
    .line 3941
    .local v17, "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    #@12c
    .line 3942
    const-string/jumbo v25, ";"

    #@12f
    move-object/from16 v0, v25

    #@131
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    .line 3946
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@137
    move-result-object v25

    #@138
    check-cast v25, Ljava/lang/String;

    #@13a
    move-object/from16 v0, v25

    #@13c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    .line 3947
    const-string/jumbo v25, "="

    #@142
    move-object/from16 v0, v25

    #@144
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    .line 3948
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@14a
    move-result-object v25

    #@14b
    check-cast v25, Ljava/lang/String;

    #@14d
    move-object/from16 v0, v25

    #@14f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    goto :goto_3

    #@153
    .line 3944
    :cond_8
    const/4 v13, 0x1

    #@154
    goto :goto_4

    #@155
    .line 3951
    .end local v17    # "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v12

    #@159
    .line 3954
    .end local v9    # "buf":Ljava/lang/StringBuilder;
    .end local v13    # "insertSep":Z
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    .end local v16    # "kset":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v18    # "kwd$iterator":Ljava/util/Iterator;
    .end local v19    # "kwds":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    new-instance v25, Landroid/icu/util/ULocale;

    #@15b
    move-object/from16 v0, v25

    #@15d
    invoke-direct {v0, v12}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@160
    return-object v25
.end method

.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keywordName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1183
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1161
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 932
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1119
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v2, "@"

    #@5
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_3

    #@b
    .line 1125
    :cond_0
    move-object v1, p0

    #@c
    .line 1127
    .local v1, "tmpLocaleID":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v2, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/ICUCache;

    #@e
    invoke-interface {v2, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 1128
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_2

    #@16
    .line 1129
    new-instance v2, Landroid/icu/impl/LocaleIDParser;

    #@18
    invoke-direct {v2, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 1130
    sget-object v2, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/ICUCache;

    #@21
    invoke-interface {v2, v1, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@24
    .line 1132
    :cond_2
    return-object v0

    #@25
    .line 1119
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "tmpLocaleID":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    #@28
    move-result v2

    #@29
    const/4 v3, 0x1

    #@2a
    if-ne v2, v3, :cond_0

    #@2c
    .line 1120
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1121
    .restart local v1    # "tmpLocaleID":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_1

    #@3a
    .line 1122
    move-object v1, p0

    #@3b
    goto :goto_0
.end method

.method public static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 953
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getShortestSubtagLength(Ljava/lang/String;)I
    .locals 7
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1086
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 1087
    .local v2, "localeIDLength":I
    move v1, v2

    #@5
    .line 1088
    .local v1, "length":I
    const/4 v3, 0x1

    #@6
    .line 1089
    .local v3, "reset":Z
    const/4 v4, 0x0

    #@7
    .line 1091
    .local v4, "tmpLength":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@a
    .line 1092
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v5

    #@e
    const/16 v6, 0x5f

    #@10
    if-eq v5, v6, :cond_1

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v5

    #@16
    const/16 v6, 0x2d

    #@18
    if-eq v5, v6, :cond_1

    #@1a
    .line 1093
    if-eqz v3, :cond_0

    #@1c
    .line 1094
    const/4 v3, 0x0

    #@1d
    .line 1095
    const/4 v4, 0x0

    #@1e
    .line 1097
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@20
    .line 1091
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1099
    :cond_1
    if-eqz v4, :cond_2

    #@25
    if-ge v4, v1, :cond_2

    #@27
    .line 1100
    move v1, v4

    #@28
    .line 1102
    :cond_2
    const/4 v3, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1106
    :cond_3
    return v1
.end method

.method public static getVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 996
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static initCANONICALIZE_MAP()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 330
    sget-object v2, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 336
    const/16 v2, 0x32

    #@b
    new-array v0, v2, [[Ljava/lang/String;

    #@d
    .line 338
    const/4 v2, 0x4

    #@e
    new-array v2, v2, [Ljava/lang/String;

    #@10
    const-string/jumbo v3, "C"

    #@13
    aput-object v3, v2, v5

    #@15
    const-string/jumbo v3, "en_US_POSIX"

    #@18
    aput-object v3, v2, v6

    #@1a
    aput-object v4, v2, v7

    #@1c
    aput-object v4, v2, v8

    #@1e
    aput-object v2, v0, v5

    #@20
    .line 339
    const/4 v2, 0x4

    #@21
    new-array v2, v2, [Ljava/lang/String;

    #@23
    const-string/jumbo v3, "art_LOJBAN"

    #@26
    aput-object v3, v2, v5

    #@28
    const-string/jumbo v3, "jbo"

    #@2b
    aput-object v3, v2, v6

    #@2d
    aput-object v4, v2, v7

    #@2f
    aput-object v4, v2, v8

    #@31
    aput-object v2, v0, v6

    #@33
    .line 340
    const/4 v2, 0x4

    #@34
    new-array v2, v2, [Ljava/lang/String;

    #@36
    const-string/jumbo v3, "az_AZ_CYRL"

    #@39
    aput-object v3, v2, v5

    #@3b
    const-string/jumbo v3, "az_Cyrl_AZ"

    #@3e
    aput-object v3, v2, v6

    #@40
    aput-object v4, v2, v7

    #@42
    aput-object v4, v2, v8

    #@44
    aput-object v2, v0, v7

    #@46
    .line 341
    const/4 v2, 0x4

    #@47
    new-array v2, v2, [Ljava/lang/String;

    #@49
    const-string/jumbo v3, "az_AZ_LATN"

    #@4c
    aput-object v3, v2, v5

    #@4e
    const-string/jumbo v3, "az_Latn_AZ"

    #@51
    aput-object v3, v2, v6

    #@53
    aput-object v4, v2, v7

    #@55
    aput-object v4, v2, v8

    #@57
    aput-object v2, v0, v8

    #@59
    .line 342
    const/4 v2, 0x4

    #@5a
    new-array v2, v2, [Ljava/lang/String;

    #@5c
    const-string/jumbo v3, "ca_ES_PREEURO"

    #@5f
    aput-object v3, v2, v5

    #@61
    const-string/jumbo v3, "ca_ES"

    #@64
    aput-object v3, v2, v6

    #@66
    const-string/jumbo v3, "currency"

    #@69
    aput-object v3, v2, v7

    #@6b
    const-string/jumbo v3, "ESP"

    #@6e
    aput-object v3, v2, v8

    #@70
    const/4 v3, 0x4

    #@71
    aput-object v2, v0, v3

    #@73
    .line 343
    const/4 v2, 0x4

    #@74
    new-array v2, v2, [Ljava/lang/String;

    #@76
    const-string/jumbo v3, "cel_GAULISH"

    #@79
    aput-object v3, v2, v5

    #@7b
    const-string/jumbo v3, "cel__GAULISH"

    #@7e
    aput-object v3, v2, v6

    #@80
    aput-object v4, v2, v7

    #@82
    aput-object v4, v2, v8

    #@84
    const/4 v3, 0x5

    #@85
    aput-object v2, v0, v3

    #@87
    .line 344
    const/4 v2, 0x4

    #@88
    new-array v2, v2, [Ljava/lang/String;

    #@8a
    const-string/jumbo v3, "de_1901"

    #@8d
    aput-object v3, v2, v5

    #@8f
    const-string/jumbo v3, "de__1901"

    #@92
    aput-object v3, v2, v6

    #@94
    aput-object v4, v2, v7

    #@96
    aput-object v4, v2, v8

    #@98
    const/4 v3, 0x6

    #@99
    aput-object v2, v0, v3

    #@9b
    .line 345
    const/4 v2, 0x4

    #@9c
    new-array v2, v2, [Ljava/lang/String;

    #@9e
    const-string/jumbo v3, "de_1906"

    #@a1
    aput-object v3, v2, v5

    #@a3
    const-string/jumbo v3, "de__1906"

    #@a6
    aput-object v3, v2, v6

    #@a8
    aput-object v4, v2, v7

    #@aa
    aput-object v4, v2, v8

    #@ac
    const/4 v3, 0x7

    #@ad
    aput-object v2, v0, v3

    #@af
    .line 346
    const/4 v2, 0x4

    #@b0
    new-array v2, v2, [Ljava/lang/String;

    #@b2
    const-string/jumbo v3, "de__PHONEBOOK"

    #@b5
    aput-object v3, v2, v5

    #@b7
    const-string/jumbo v3, "de"

    #@ba
    aput-object v3, v2, v6

    #@bc
    const-string/jumbo v3, "collation"

    #@bf
    aput-object v3, v2, v7

    #@c1
    const-string/jumbo v3, "phonebook"

    #@c4
    aput-object v3, v2, v8

    #@c6
    const/16 v3, 0x8

    #@c8
    aput-object v2, v0, v3

    #@ca
    .line 347
    const/4 v2, 0x4

    #@cb
    new-array v2, v2, [Ljava/lang/String;

    #@cd
    const-string/jumbo v3, "de_AT_PREEURO"

    #@d0
    aput-object v3, v2, v5

    #@d2
    const-string/jumbo v3, "de_AT"

    #@d5
    aput-object v3, v2, v6

    #@d7
    const-string/jumbo v3, "currency"

    #@da
    aput-object v3, v2, v7

    #@dc
    const-string/jumbo v3, "ATS"

    #@df
    aput-object v3, v2, v8

    #@e1
    const/16 v3, 0x9

    #@e3
    aput-object v2, v0, v3

    #@e5
    .line 348
    const/4 v2, 0x4

    #@e6
    new-array v2, v2, [Ljava/lang/String;

    #@e8
    const-string/jumbo v3, "de_DE_PREEURO"

    #@eb
    aput-object v3, v2, v5

    #@ed
    const-string/jumbo v3, "de_DE"

    #@f0
    aput-object v3, v2, v6

    #@f2
    const-string/jumbo v3, "currency"

    #@f5
    aput-object v3, v2, v7

    #@f7
    const-string/jumbo v3, "DEM"

    #@fa
    aput-object v3, v2, v8

    #@fc
    const/16 v3, 0xa

    #@fe
    aput-object v2, v0, v3

    #@100
    .line 349
    const/4 v2, 0x4

    #@101
    new-array v2, v2, [Ljava/lang/String;

    #@103
    const-string/jumbo v3, "de_LU_PREEURO"

    #@106
    aput-object v3, v2, v5

    #@108
    const-string/jumbo v3, "de_LU"

    #@10b
    aput-object v3, v2, v6

    #@10d
    const-string/jumbo v3, "currency"

    #@110
    aput-object v3, v2, v7

    #@112
    const-string/jumbo v3, "EUR"

    #@115
    aput-object v3, v2, v8

    #@117
    const/16 v3, 0xb

    #@119
    aput-object v2, v0, v3

    #@11b
    .line 350
    const/4 v2, 0x4

    #@11c
    new-array v2, v2, [Ljava/lang/String;

    #@11e
    const-string/jumbo v3, "el_GR_PREEURO"

    #@121
    aput-object v3, v2, v5

    #@123
    const-string/jumbo v3, "el_GR"

    #@126
    aput-object v3, v2, v6

    #@128
    const-string/jumbo v3, "currency"

    #@12b
    aput-object v3, v2, v7

    #@12d
    const-string/jumbo v3, "GRD"

    #@130
    aput-object v3, v2, v8

    #@132
    const/16 v3, 0xc

    #@134
    aput-object v2, v0, v3

    #@136
    .line 351
    const/4 v2, 0x4

    #@137
    new-array v2, v2, [Ljava/lang/String;

    #@139
    const-string/jumbo v3, "en_BOONT"

    #@13c
    aput-object v3, v2, v5

    #@13e
    const-string/jumbo v3, "en__BOONT"

    #@141
    aput-object v3, v2, v6

    #@143
    aput-object v4, v2, v7

    #@145
    aput-object v4, v2, v8

    #@147
    const/16 v3, 0xd

    #@149
    aput-object v2, v0, v3

    #@14b
    .line 352
    const/4 v2, 0x4

    #@14c
    new-array v2, v2, [Ljava/lang/String;

    #@14e
    const-string/jumbo v3, "en_SCOUSE"

    #@151
    aput-object v3, v2, v5

    #@153
    const-string/jumbo v3, "en__SCOUSE"

    #@156
    aput-object v3, v2, v6

    #@158
    aput-object v4, v2, v7

    #@15a
    aput-object v4, v2, v8

    #@15c
    const/16 v3, 0xe

    #@15e
    aput-object v2, v0, v3

    #@160
    .line 353
    const/4 v2, 0x4

    #@161
    new-array v2, v2, [Ljava/lang/String;

    #@163
    const-string/jumbo v3, "en_BE_PREEURO"

    #@166
    aput-object v3, v2, v5

    #@168
    const-string/jumbo v3, "en_BE"

    #@16b
    aput-object v3, v2, v6

    #@16d
    const-string/jumbo v3, "currency"

    #@170
    aput-object v3, v2, v7

    #@172
    const-string/jumbo v3, "BEF"

    #@175
    aput-object v3, v2, v8

    #@177
    const/16 v3, 0xf

    #@179
    aput-object v2, v0, v3

    #@17b
    .line 354
    const/4 v2, 0x4

    #@17c
    new-array v2, v2, [Ljava/lang/String;

    #@17e
    const-string/jumbo v3, "en_IE_PREEURO"

    #@181
    aput-object v3, v2, v5

    #@183
    const-string/jumbo v3, "en_IE"

    #@186
    aput-object v3, v2, v6

    #@188
    const-string/jumbo v3, "currency"

    #@18b
    aput-object v3, v2, v7

    #@18d
    const-string/jumbo v3, "IEP"

    #@190
    aput-object v3, v2, v8

    #@192
    const/16 v3, 0x10

    #@194
    aput-object v2, v0, v3

    #@196
    .line 355
    const/4 v2, 0x4

    #@197
    new-array v2, v2, [Ljava/lang/String;

    #@199
    const-string/jumbo v3, "es__TRADITIONAL"

    #@19c
    aput-object v3, v2, v5

    #@19e
    const-string/jumbo v3, "es"

    #@1a1
    aput-object v3, v2, v6

    #@1a3
    const-string/jumbo v3, "collation"

    #@1a6
    aput-object v3, v2, v7

    #@1a8
    const-string/jumbo v3, "traditional"

    #@1ab
    aput-object v3, v2, v8

    #@1ad
    const/16 v3, 0x11

    #@1af
    aput-object v2, v0, v3

    #@1b1
    .line 356
    const/4 v2, 0x4

    #@1b2
    new-array v2, v2, [Ljava/lang/String;

    #@1b4
    const-string/jumbo v3, "es_ES_PREEURO"

    #@1b7
    aput-object v3, v2, v5

    #@1b9
    const-string/jumbo v3, "es_ES"

    #@1bc
    aput-object v3, v2, v6

    #@1be
    const-string/jumbo v3, "currency"

    #@1c1
    aput-object v3, v2, v7

    #@1c3
    const-string/jumbo v3, "ESP"

    #@1c6
    aput-object v3, v2, v8

    #@1c8
    const/16 v3, 0x12

    #@1ca
    aput-object v2, v0, v3

    #@1cc
    .line 357
    const/4 v2, 0x4

    #@1cd
    new-array v2, v2, [Ljava/lang/String;

    #@1cf
    const-string/jumbo v3, "eu_ES_PREEURO"

    #@1d2
    aput-object v3, v2, v5

    #@1d4
    const-string/jumbo v3, "eu_ES"

    #@1d7
    aput-object v3, v2, v6

    #@1d9
    const-string/jumbo v3, "currency"

    #@1dc
    aput-object v3, v2, v7

    #@1de
    const-string/jumbo v3, "ESP"

    #@1e1
    aput-object v3, v2, v8

    #@1e3
    const/16 v3, 0x13

    #@1e5
    aput-object v2, v0, v3

    #@1e7
    .line 358
    const/4 v2, 0x4

    #@1e8
    new-array v2, v2, [Ljava/lang/String;

    #@1ea
    const-string/jumbo v3, "fi_FI_PREEURO"

    #@1ed
    aput-object v3, v2, v5

    #@1ef
    const-string/jumbo v3, "fi_FI"

    #@1f2
    aput-object v3, v2, v6

    #@1f4
    const-string/jumbo v3, "currency"

    #@1f7
    aput-object v3, v2, v7

    #@1f9
    const-string/jumbo v3, "FIM"

    #@1fc
    aput-object v3, v2, v8

    #@1fe
    const/16 v3, 0x14

    #@200
    aput-object v2, v0, v3

    #@202
    .line 359
    const/4 v2, 0x4

    #@203
    new-array v2, v2, [Ljava/lang/String;

    #@205
    const-string/jumbo v3, "fr_BE_PREEURO"

    #@208
    aput-object v3, v2, v5

    #@20a
    const-string/jumbo v3, "fr_BE"

    #@20d
    aput-object v3, v2, v6

    #@20f
    const-string/jumbo v3, "currency"

    #@212
    aput-object v3, v2, v7

    #@214
    const-string/jumbo v3, "BEF"

    #@217
    aput-object v3, v2, v8

    #@219
    const/16 v3, 0x15

    #@21b
    aput-object v2, v0, v3

    #@21d
    .line 360
    const/4 v2, 0x4

    #@21e
    new-array v2, v2, [Ljava/lang/String;

    #@220
    const-string/jumbo v3, "fr_FR_PREEURO"

    #@223
    aput-object v3, v2, v5

    #@225
    const-string/jumbo v3, "fr_FR"

    #@228
    aput-object v3, v2, v6

    #@22a
    const-string/jumbo v3, "currency"

    #@22d
    aput-object v3, v2, v7

    #@22f
    const-string/jumbo v3, "FRF"

    #@232
    aput-object v3, v2, v8

    #@234
    const/16 v3, 0x16

    #@236
    aput-object v2, v0, v3

    #@238
    .line 361
    const/4 v2, 0x4

    #@239
    new-array v2, v2, [Ljava/lang/String;

    #@23b
    const-string/jumbo v3, "fr_LU_PREEURO"

    #@23e
    aput-object v3, v2, v5

    #@240
    const-string/jumbo v3, "fr_LU"

    #@243
    aput-object v3, v2, v6

    #@245
    const-string/jumbo v3, "currency"

    #@248
    aput-object v3, v2, v7

    #@24a
    const-string/jumbo v3, "LUF"

    #@24d
    aput-object v3, v2, v8

    #@24f
    const/16 v3, 0x17

    #@251
    aput-object v2, v0, v3

    #@253
    .line 362
    const/4 v2, 0x4

    #@254
    new-array v2, v2, [Ljava/lang/String;

    #@256
    const-string/jumbo v3, "ga_IE_PREEURO"

    #@259
    aput-object v3, v2, v5

    #@25b
    const-string/jumbo v3, "ga_IE"

    #@25e
    aput-object v3, v2, v6

    #@260
    const-string/jumbo v3, "currency"

    #@263
    aput-object v3, v2, v7

    #@265
    const-string/jumbo v3, "IEP"

    #@268
    aput-object v3, v2, v8

    #@26a
    const/16 v3, 0x18

    #@26c
    aput-object v2, v0, v3

    #@26e
    .line 363
    const/4 v2, 0x4

    #@26f
    new-array v2, v2, [Ljava/lang/String;

    #@271
    const-string/jumbo v3, "gl_ES_PREEURO"

    #@274
    aput-object v3, v2, v5

    #@276
    const-string/jumbo v3, "gl_ES"

    #@279
    aput-object v3, v2, v6

    #@27b
    const-string/jumbo v3, "currency"

    #@27e
    aput-object v3, v2, v7

    #@280
    const-string/jumbo v3, "ESP"

    #@283
    aput-object v3, v2, v8

    #@285
    const/16 v3, 0x19

    #@287
    aput-object v2, v0, v3

    #@289
    .line 364
    const/4 v2, 0x4

    #@28a
    new-array v2, v2, [Ljava/lang/String;

    #@28c
    const-string/jumbo v3, "hi__DIRECT"

    #@28f
    aput-object v3, v2, v5

    #@291
    const-string/jumbo v3, "hi"

    #@294
    aput-object v3, v2, v6

    #@296
    const-string/jumbo v3, "collation"

    #@299
    aput-object v3, v2, v7

    #@29b
    const-string/jumbo v3, "direct"

    #@29e
    aput-object v3, v2, v8

    #@2a0
    const/16 v3, 0x1a

    #@2a2
    aput-object v2, v0, v3

    #@2a4
    .line 365
    const/4 v2, 0x4

    #@2a5
    new-array v2, v2, [Ljava/lang/String;

    #@2a7
    const-string/jumbo v3, "it_IT_PREEURO"

    #@2aa
    aput-object v3, v2, v5

    #@2ac
    const-string/jumbo v3, "it_IT"

    #@2af
    aput-object v3, v2, v6

    #@2b1
    const-string/jumbo v3, "currency"

    #@2b4
    aput-object v3, v2, v7

    #@2b6
    const-string/jumbo v3, "ITL"

    #@2b9
    aput-object v3, v2, v8

    #@2bb
    const/16 v3, 0x1b

    #@2bd
    aput-object v2, v0, v3

    #@2bf
    .line 366
    const/4 v2, 0x4

    #@2c0
    new-array v2, v2, [Ljava/lang/String;

    #@2c2
    const-string/jumbo v3, "ja_JP_TRADITIONAL"

    #@2c5
    aput-object v3, v2, v5

    #@2c7
    const-string/jumbo v3, "ja_JP"

    #@2ca
    aput-object v3, v2, v6

    #@2cc
    const-string/jumbo v3, "calendar"

    #@2cf
    aput-object v3, v2, v7

    #@2d1
    const-string/jumbo v3, "japanese"

    #@2d4
    aput-object v3, v2, v8

    #@2d6
    const/16 v3, 0x1c

    #@2d8
    aput-object v2, v0, v3

    #@2da
    .line 368
    const/4 v2, 0x4

    #@2db
    new-array v2, v2, [Ljava/lang/String;

    #@2dd
    const-string/jumbo v3, "nl_BE_PREEURO"

    #@2e0
    aput-object v3, v2, v5

    #@2e2
    const-string/jumbo v3, "nl_BE"

    #@2e5
    aput-object v3, v2, v6

    #@2e7
    const-string/jumbo v3, "currency"

    #@2ea
    aput-object v3, v2, v7

    #@2ec
    const-string/jumbo v3, "BEF"

    #@2ef
    aput-object v3, v2, v8

    #@2f1
    const/16 v3, 0x1d

    #@2f3
    aput-object v2, v0, v3

    #@2f5
    .line 369
    const/4 v2, 0x4

    #@2f6
    new-array v2, v2, [Ljava/lang/String;

    #@2f8
    const-string/jumbo v3, "nl_NL_PREEURO"

    #@2fb
    aput-object v3, v2, v5

    #@2fd
    const-string/jumbo v3, "nl_NL"

    #@300
    aput-object v3, v2, v6

    #@302
    const-string/jumbo v3, "currency"

    #@305
    aput-object v3, v2, v7

    #@307
    const-string/jumbo v3, "NLG"

    #@30a
    aput-object v3, v2, v8

    #@30c
    const/16 v3, 0x1e

    #@30e
    aput-object v2, v0, v3

    #@310
    .line 370
    const/4 v2, 0x4

    #@311
    new-array v2, v2, [Ljava/lang/String;

    #@313
    const-string/jumbo v3, "pt_PT_PREEURO"

    #@316
    aput-object v3, v2, v5

    #@318
    const-string/jumbo v3, "pt_PT"

    #@31b
    aput-object v3, v2, v6

    #@31d
    const-string/jumbo v3, "currency"

    #@320
    aput-object v3, v2, v7

    #@322
    const-string/jumbo v3, "PTE"

    #@325
    aput-object v3, v2, v8

    #@327
    const/16 v3, 0x1f

    #@329
    aput-object v2, v0, v3

    #@32b
    .line 371
    const/4 v2, 0x4

    #@32c
    new-array v2, v2, [Ljava/lang/String;

    #@32e
    const-string/jumbo v3, "sl_ROZAJ"

    #@331
    aput-object v3, v2, v5

    #@333
    const-string/jumbo v3, "sl__ROZAJ"

    #@336
    aput-object v3, v2, v6

    #@338
    aput-object v4, v2, v7

    #@33a
    aput-object v4, v2, v8

    #@33c
    const/16 v3, 0x20

    #@33e
    aput-object v2, v0, v3

    #@340
    .line 372
    const/4 v2, 0x4

    #@341
    new-array v2, v2, [Ljava/lang/String;

    #@343
    const-string/jumbo v3, "sr_SP_CYRL"

    #@346
    aput-object v3, v2, v5

    #@348
    const-string/jumbo v3, "sr_Cyrl_RS"

    #@34b
    aput-object v3, v2, v6

    #@34d
    aput-object v4, v2, v7

    #@34f
    aput-object v4, v2, v8

    #@351
    const/16 v3, 0x21

    #@353
    aput-object v2, v0, v3

    #@355
    .line 373
    const/4 v2, 0x4

    #@356
    new-array v2, v2, [Ljava/lang/String;

    #@358
    const-string/jumbo v3, "sr_SP_LATN"

    #@35b
    aput-object v3, v2, v5

    #@35d
    const-string/jumbo v3, "sr_Latn_RS"

    #@360
    aput-object v3, v2, v6

    #@362
    aput-object v4, v2, v7

    #@364
    aput-object v4, v2, v8

    #@366
    const/16 v3, 0x22

    #@368
    aput-object v2, v0, v3

    #@36a
    .line 374
    const/4 v2, 0x4

    #@36b
    new-array v2, v2, [Ljava/lang/String;

    #@36d
    const-string/jumbo v3, "sr_YU_CYRILLIC"

    #@370
    aput-object v3, v2, v5

    #@372
    const-string/jumbo v3, "sr_Cyrl_RS"

    #@375
    aput-object v3, v2, v6

    #@377
    aput-object v4, v2, v7

    #@379
    aput-object v4, v2, v8

    #@37b
    const/16 v3, 0x23

    #@37d
    aput-object v2, v0, v3

    #@37f
    .line 375
    const/4 v2, 0x4

    #@380
    new-array v2, v2, [Ljava/lang/String;

    #@382
    const-string/jumbo v3, "th_TH_TRADITIONAL"

    #@385
    aput-object v3, v2, v5

    #@387
    const-string/jumbo v3, "th_TH"

    #@38a
    aput-object v3, v2, v6

    #@38c
    const-string/jumbo v3, "calendar"

    #@38f
    aput-object v3, v2, v7

    #@391
    const-string/jumbo v3, "buddhist"

    #@394
    aput-object v3, v2, v8

    #@396
    const/16 v3, 0x24

    #@398
    aput-object v2, v0, v3

    #@39a
    .line 376
    const/4 v2, 0x4

    #@39b
    new-array v2, v2, [Ljava/lang/String;

    #@39d
    const-string/jumbo v3, "uz_UZ_CYRILLIC"

    #@3a0
    aput-object v3, v2, v5

    #@3a2
    const-string/jumbo v3, "uz_Cyrl_UZ"

    #@3a5
    aput-object v3, v2, v6

    #@3a7
    aput-object v4, v2, v7

    #@3a9
    aput-object v4, v2, v8

    #@3ab
    const/16 v3, 0x25

    #@3ad
    aput-object v2, v0, v3

    #@3af
    .line 377
    const/4 v2, 0x4

    #@3b0
    new-array v2, v2, [Ljava/lang/String;

    #@3b2
    const-string/jumbo v3, "uz_UZ_CYRL"

    #@3b5
    aput-object v3, v2, v5

    #@3b7
    const-string/jumbo v3, "uz_Cyrl_UZ"

    #@3ba
    aput-object v3, v2, v6

    #@3bc
    aput-object v4, v2, v7

    #@3be
    aput-object v4, v2, v8

    #@3c0
    const/16 v3, 0x26

    #@3c2
    aput-object v2, v0, v3

    #@3c4
    .line 378
    const/4 v2, 0x4

    #@3c5
    new-array v2, v2, [Ljava/lang/String;

    #@3c7
    const-string/jumbo v3, "uz_UZ_LATN"

    #@3ca
    aput-object v3, v2, v5

    #@3cc
    const-string/jumbo v3, "uz_Latn_UZ"

    #@3cf
    aput-object v3, v2, v6

    #@3d1
    aput-object v4, v2, v7

    #@3d3
    aput-object v4, v2, v8

    #@3d5
    const/16 v3, 0x27

    #@3d7
    aput-object v2, v0, v3

    #@3d9
    .line 379
    const/4 v2, 0x4

    #@3da
    new-array v2, v2, [Ljava/lang/String;

    #@3dc
    const-string/jumbo v3, "zh_CHS"

    #@3df
    aput-object v3, v2, v5

    #@3e1
    const-string/jumbo v3, "zh_Hans"

    #@3e4
    aput-object v3, v2, v6

    #@3e6
    aput-object v4, v2, v7

    #@3e8
    aput-object v4, v2, v8

    #@3ea
    const/16 v3, 0x28

    #@3ec
    aput-object v2, v0, v3

    #@3ee
    .line 380
    const/4 v2, 0x4

    #@3ef
    new-array v2, v2, [Ljava/lang/String;

    #@3f1
    const-string/jumbo v3, "zh_CHT"

    #@3f4
    aput-object v3, v2, v5

    #@3f6
    const-string/jumbo v3, "zh_Hant"

    #@3f9
    aput-object v3, v2, v6

    #@3fb
    aput-object v4, v2, v7

    #@3fd
    aput-object v4, v2, v8

    #@3ff
    const/16 v3, 0x29

    #@401
    aput-object v2, v0, v3

    #@403
    .line 381
    const/4 v2, 0x4

    #@404
    new-array v2, v2, [Ljava/lang/String;

    #@406
    const-string/jumbo v3, "zh_GAN"

    #@409
    aput-object v3, v2, v5

    #@40b
    const-string/jumbo v3, "zh__GAN"

    #@40e
    aput-object v3, v2, v6

    #@410
    aput-object v4, v2, v7

    #@412
    aput-object v4, v2, v8

    #@414
    const/16 v3, 0x2a

    #@416
    aput-object v2, v0, v3

    #@418
    .line 382
    const/4 v2, 0x4

    #@419
    new-array v2, v2, [Ljava/lang/String;

    #@41b
    const-string/jumbo v3, "zh_GUOYU"

    #@41e
    aput-object v3, v2, v5

    #@420
    const-string/jumbo v3, "zh"

    #@423
    aput-object v3, v2, v6

    #@425
    aput-object v4, v2, v7

    #@427
    aput-object v4, v2, v8

    #@429
    const/16 v3, 0x2b

    #@42b
    aput-object v2, v0, v3

    #@42d
    .line 383
    const/4 v2, 0x4

    #@42e
    new-array v2, v2, [Ljava/lang/String;

    #@430
    const-string/jumbo v3, "zh_HAKKA"

    #@433
    aput-object v3, v2, v5

    #@435
    const-string/jumbo v3, "zh__HAKKA"

    #@438
    aput-object v3, v2, v6

    #@43a
    aput-object v4, v2, v7

    #@43c
    aput-object v4, v2, v8

    #@43e
    const/16 v3, 0x2c

    #@440
    aput-object v2, v0, v3

    #@442
    .line 384
    const/4 v2, 0x4

    #@443
    new-array v2, v2, [Ljava/lang/String;

    #@445
    const-string/jumbo v3, "zh_MIN"

    #@448
    aput-object v3, v2, v5

    #@44a
    const-string/jumbo v3, "zh__MIN"

    #@44d
    aput-object v3, v2, v6

    #@44f
    aput-object v4, v2, v7

    #@451
    aput-object v4, v2, v8

    #@453
    const/16 v3, 0x2d

    #@455
    aput-object v2, v0, v3

    #@457
    .line 385
    const/4 v2, 0x4

    #@458
    new-array v2, v2, [Ljava/lang/String;

    #@45a
    const-string/jumbo v3, "zh_MIN_NAN"

    #@45d
    aput-object v3, v2, v5

    #@45f
    const-string/jumbo v3, "zh__MINNAN"

    #@462
    aput-object v3, v2, v6

    #@464
    aput-object v4, v2, v7

    #@466
    aput-object v4, v2, v8

    #@468
    const/16 v3, 0x2e

    #@46a
    aput-object v2, v0, v3

    #@46c
    .line 386
    const/4 v2, 0x4

    #@46d
    new-array v2, v2, [Ljava/lang/String;

    #@46f
    const-string/jumbo v3, "zh_WUU"

    #@472
    aput-object v3, v2, v5

    #@474
    const-string/jumbo v3, "zh__WUU"

    #@477
    aput-object v3, v2, v6

    #@479
    aput-object v4, v2, v7

    #@47b
    aput-object v4, v2, v8

    #@47d
    const/16 v3, 0x2f

    #@47f
    aput-object v2, v0, v3

    #@481
    .line 387
    const/4 v2, 0x4

    #@482
    new-array v2, v2, [Ljava/lang/String;

    #@484
    const-string/jumbo v3, "zh_XIANG"

    #@487
    aput-object v3, v2, v5

    #@489
    const-string/jumbo v3, "zh__XIANG"

    #@48c
    aput-object v3, v2, v6

    #@48e
    aput-object v4, v2, v7

    #@490
    aput-object v4, v2, v8

    #@492
    const/16 v3, 0x30

    #@494
    aput-object v2, v0, v3

    #@496
    .line 388
    const/4 v2, 0x4

    #@497
    new-array v2, v2, [Ljava/lang/String;

    #@499
    const-string/jumbo v3, "zh_YUE"

    #@49c
    aput-object v3, v2, v5

    #@49e
    const-string/jumbo v3, "zh__YUE"

    #@4a1
    aput-object v3, v2, v6

    #@4a3
    aput-object v4, v2, v7

    #@4a5
    aput-object v4, v2, v8

    #@4a7
    const/16 v3, 0x31

    #@4a9
    aput-object v2, v0, v3

    #@4ab
    .line 391
    .local v0, "tempCANONICALIZE_MAP":[[Ljava/lang/String;
    const-class v3, Landroid/icu/util/ULocale;

    #@4ad
    monitor-enter v3

    #@4ae
    .line 392
    :try_start_0
    sget-object v2, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    #@4b0
    if-nez v2, :cond_0

    #@4b2
    .line 393
    sput-object v0, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b4
    :cond_0
    monitor-exit v3

    #@4b5
    .line 397
    :cond_1
    sget-object v2, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    #@4b7
    if-nez v2, :cond_3

    #@4b9
    .line 402
    new-array v1, v8, [[Ljava/lang/String;

    #@4bb
    .line 403
    new-array v2, v8, [Ljava/lang/String;

    #@4bd
    const-string/jumbo v3, "EURO"

    #@4c0
    aput-object v3, v2, v5

    #@4c2
    const-string/jumbo v3, "currency"

    #@4c5
    aput-object v3, v2, v6

    #@4c7
    const-string/jumbo v3, "EUR"

    #@4ca
    aput-object v3, v2, v7

    #@4cc
    aput-object v2, v1, v5

    #@4ce
    .line 404
    new-array v2, v8, [Ljava/lang/String;

    #@4d0
    const-string/jumbo v3, "PINYIN"

    #@4d3
    aput-object v3, v2, v5

    #@4d5
    const-string/jumbo v3, "collation"

    #@4d8
    aput-object v3, v2, v6

    #@4da
    const-string/jumbo v3, "pinyin"

    #@4dd
    aput-object v3, v2, v7

    #@4df
    aput-object v2, v1, v6

    #@4e1
    .line 405
    new-array v2, v8, [Ljava/lang/String;

    #@4e3
    const-string/jumbo v3, "STROKE"

    #@4e6
    aput-object v3, v2, v5

    #@4e8
    const-string/jumbo v3, "collation"

    #@4eb
    aput-object v3, v2, v6

    #@4ed
    const-string/jumbo v3, "stroke"

    #@4f0
    aput-object v3, v2, v7

    #@4f2
    aput-object v2, v1, v7

    #@4f4
    .line 408
    .local v1, "tempVariantsToKeywords":[[Ljava/lang/String;
    const-class v3, Landroid/icu/util/ULocale;

    #@4f6
    monitor-enter v3

    #@4f7
    .line 409
    :try_start_1
    sget-object v2, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    #@4f9
    if-nez v2, :cond_2

    #@4fb
    .line 410
    sput-object v1, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4fd
    :cond_2
    monitor-exit v3

    #@4fe
    .line 329
    .end local v1    # "tempVariantsToKeywords":[[Ljava/lang/String;
    :cond_3
    return-void

    #@4ff
    .line 391
    :catchall_0
    move-exception v2

    #@500
    monitor-exit v3

    #@501
    throw v2

    #@502
    .line 408
    .restart local v1    # "tempVariantsToKeywords":[[Ljava/lang/String;
    :catchall_1
    move-exception v2

    #@503
    monitor-exit v3

    #@504
    throw v2
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2674
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2919
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@3
    const-string/jumbo v3, "likelySubtags"

    #@6
    .line 2918
    invoke-static {v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@9
    move-result-object v0

    #@a
    .line 2921
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 2923
    :catch_0
    move-exception v1

    #@10
    .line 2924
    .local v1, "e":Ljava/util/MissingResourceException;
    const/4 v2, 0x0

    #@11
    return-object v2
.end method

.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x5f

    #@2
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 522
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_0

    #@f
    .line 523
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 525
    :cond_0
    if-eqz p1, :cond_1

    #@14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    if-lez v1, :cond_1

    #@1a
    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 529
    :cond_1
    if-eqz p2, :cond_2

    #@22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@25
    move-result v1

    #@26
    if-lez v1, :cond_2

    #@28
    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 531
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 533
    :cond_2
    if-eqz p3, :cond_5

    #@30
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@33
    move-result v1

    #@34
    if-lez v1, :cond_5

    #@36
    .line 534
    if-eqz p2, :cond_3

    #@38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_4

    #@3e
    .line 535
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 537
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 538
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 540
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    return-object v1
.end method

.method public static minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 2462
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    #@2
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;
    .locals 12
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "fieldToFavor"    # Landroid/icu/util/ULocale$Minimize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 2520
    const/4 v9, 0x3

    #@3
    new-array v7, v9, [Ljava/lang/String;

    #@5
    .line 2523
    .local v7, "tags":[Ljava/lang/String;
    iget-object v9, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@7
    .line 2522
    invoke-static {v9, v7}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    #@a
    move-result v8

    #@b
    .line 2526
    .local v8, "trailingIndex":I
    aget-object v2, v7, v11

    #@d
    .line 2527
    .local v2, "originalLang":Ljava/lang/String;
    const/4 v9, 0x1

    #@e
    aget-object v4, v7, v9

    #@10
    .line 2528
    .local v4, "originalScript":Ljava/lang/String;
    const/4 v9, 0x2

    #@11
    aget-object v3, v7, v9

    #@13
    .line 2529
    .local v3, "originalRegion":Ljava/lang/String;
    const/4 v5, 0x0

    #@14
    .line 2531
    .local v5, "originalTrailing":Ljava/lang/String;
    iget-object v9, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@16
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@19
    move-result v9

    #@1a
    if-ge v8, v9, :cond_0

    #@1c
    .line 2536
    iget-object v9, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@1e
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 2544
    .end local v5    # "originalTrailing":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v4, v3, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 2554
    .local v0, "maximizedLocaleID":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@29
    move-result v9

    #@2a
    if-eqz v9, :cond_1

    #@2c
    .line 2555
    return-object p0

    #@2d
    .line 2562
    :cond_1
    invoke-static {v2, v10, v10, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 2568
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_2

    #@37
    .line 2570
    invoke-static {v2, v10, v10, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 2576
    .local v1, "newLocaleID":Ljava/lang/String;
    new-instance v9, Landroid/icu/util/ULocale;

    #@3d
    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@40
    return-object v9

    #@41
    .line 2583
    .end local v1    # "newLocaleID":Ljava/lang/String;
    :cond_2
    sget-object v9, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    #@43
    if-ne p1, v9, :cond_4

    #@45
    .line 2584
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@48
    move-result v9

    #@49
    if-eqz v9, :cond_3

    #@4b
    .line 2586
    invoke-static {v2, v10, v3, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    .line 2592
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v9

    #@53
    if-eqz v9, :cond_3

    #@55
    .line 2594
    invoke-static {v2, v10, v3, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 2600
    .restart local v1    # "newLocaleID":Ljava/lang/String;
    new-instance v9, Landroid/icu/util/ULocale;

    #@5b
    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5e
    return-object v9

    #@5f
    .line 2603
    .end local v1    # "newLocaleID":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@62
    move-result v9

    #@63
    if-eqz v9, :cond_6

    #@65
    .line 2605
    invoke-static {v2, v4, v10, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    .line 2611
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v9

    #@6d
    if-eqz v9, :cond_6

    #@6f
    .line 2613
    invoke-static {v2, v4, v10, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    .line 2619
    .restart local v1    # "newLocaleID":Ljava/lang/String;
    new-instance v9, Landroid/icu/util/ULocale;

    #@75
    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@78
    return-object v9

    #@79
    .line 2623
    .end local v1    # "newLocaleID":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7c
    move-result v9

    #@7d
    if-eqz v9, :cond_5

    #@7f
    .line 2625
    invoke-static {v2, v4, v10, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    .line 2631
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v9

    #@87
    if-eqz v9, :cond_5

    #@89
    .line 2633
    invoke-static {v2, v4, v10, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    .line 2639
    .restart local v1    # "newLocaleID":Ljava/lang/String;
    new-instance v9, Landroid/icu/util/ULocale;

    #@8f
    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@92
    return-object v9

    #@93
    .line 2642
    .end local v1    # "newLocaleID":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@96
    move-result v9

    #@97
    if-eqz v9, :cond_6

    #@99
    .line 2644
    invoke-static {v2, v10, v3, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    .line 2650
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v9

    #@a1
    if-eqz v9, :cond_6

    #@a3
    .line 2652
    invoke-static {v2, v10, v3, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v1

    #@a7
    .line 2658
    .restart local v1    # "newLocaleID":Ljava/lang/String;
    new-instance v9, Landroid/icu/util/ULocale;

    #@a9
    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@ac
    return-object v9

    #@ad
    .line 2662
    .end local v1    # "newLocaleID":Ljava/lang/String;
    :cond_6
    return-object p0
.end method

.method static parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    .locals 20
    .param p0, "acceptLanguage"    # Ljava/lang/String;
    .param p1, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 2154
    new-instance v7, Ljava/util/TreeMap;

    #@2
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    #@5
    .line 2155
    .local v7, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;Lcom/ibm/icu/util/ULocale;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 2156
    .local v6, "languageRangeBuf":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 2157
    .local v13, "qvalBuf":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    #@10
    .line 2158
    .local v15, "state":I
    new-instance v17, Ljava/lang/StringBuilder;

    #@12
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    move-object/from16 v0, v17

    #@17
    move-object/from16 v1, p0

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v17

    #@1d
    const-string/jumbo v18, ","

    #@20
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v17

    #@24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    .line 2160
    const/16 v16, 0x0

    #@2a
    .line 2161
    .local v16, "subTag":Z
    const/4 v12, 0x0

    #@2b
    .line 2162
    .local v12, "q1":Z
    const/4 v8, 0x0

    #@2c
    .local v8, "n":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@2f
    move-result v17

    #@30
    move/from16 v0, v17

    #@32
    if-ge v8, v0, :cond_2f

    #@34
    .line 2163
    const/4 v5, 0x0

    #@35
    .line 2164
    .local v5, "gotLanguageQ":Z
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    .line 2165
    .local v3, "c":C
    packed-switch v15, :pswitch_data_0

    #@3e
    .line 2341
    :cond_0
    :goto_1
    const/16 v17, -0x1

    #@40
    move/from16 v0, v17

    #@42
    if-ne v15, v0, :cond_2b

    #@44
    .line 2343
    new-instance v17, Ljava/text/ParseException;

    #@46
    const-string/jumbo v18, "Invalid Accept-Language"

    #@49
    move-object/from16 v0, v17

    #@4b
    move-object/from16 v1, v18

    #@4d
    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@50
    throw v17

    #@51
    .line 2167
    :pswitch_0
    const/16 v17, 0x41

    #@53
    move/from16 v0, v17

    #@55
    if-gt v0, v3, :cond_2

    #@57
    const/16 v17, 0x5a

    #@59
    move/from16 v0, v17

    #@5b
    if-gt v3, v0, :cond_2

    #@5d
    .line 2169
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 2170
    const/4 v15, 0x1

    #@61
    .line 2171
    const/16 v16, 0x0

    #@63
    .line 2167
    goto :goto_1

    #@64
    :cond_2
    const/16 v17, 0x61

    #@66
    move/from16 v0, v17

    #@68
    if-gt v0, v3, :cond_3

    #@6a
    const/16 v17, 0x7a

    #@6c
    move/from16 v0, v17

    #@6e
    if-le v3, v0, :cond_1

    #@70
    .line 2172
    :cond_3
    const/16 v17, 0x2a

    #@72
    move/from16 v0, v17

    #@74
    if-ne v3, v0, :cond_4

    #@76
    .line 2173
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    .line 2174
    const/4 v15, 0x2

    #@7a
    goto :goto_1

    #@7b
    .line 2175
    :cond_4
    const/16 v17, 0x20

    #@7d
    move/from16 v0, v17

    #@7f
    if-eq v3, v0, :cond_0

    #@81
    const/16 v17, 0x9

    #@83
    move/from16 v0, v17

    #@85
    if-eq v3, v0, :cond_0

    #@87
    .line 2177
    const/4 v15, -0x1

    #@88
    goto :goto_1

    #@89
    .line 2181
    :pswitch_1
    const/16 v17, 0x41

    #@8b
    move/from16 v0, v17

    #@8d
    if-gt v0, v3, :cond_6

    #@8f
    const/16 v17, 0x5a

    #@91
    move/from16 v0, v17

    #@93
    if-gt v3, v0, :cond_6

    #@95
    .line 2182
    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    goto :goto_1

    #@99
    .line 2181
    :cond_6
    const/16 v17, 0x61

    #@9b
    move/from16 v0, v17

    #@9d
    if-gt v0, v3, :cond_7

    #@9f
    const/16 v17, 0x7a

    #@a1
    move/from16 v0, v17

    #@a3
    if-le v3, v0, :cond_5

    #@a5
    .line 2183
    :cond_7
    const/16 v17, 0x2d

    #@a7
    move/from16 v0, v17

    #@a9
    if-ne v3, v0, :cond_8

    #@ab
    .line 2184
    const/16 v16, 0x1

    #@ad
    .line 2185
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b0
    goto :goto_1

    #@b1
    .line 2186
    :cond_8
    const/16 v17, 0x5f

    #@b3
    move/from16 v0, v17

    #@b5
    if-ne v3, v0, :cond_a

    #@b7
    .line 2187
    if-eqz p1, :cond_9

    #@b9
    .line 2188
    const/16 v16, 0x1

    #@bb
    .line 2189
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    goto :goto_1

    #@bf
    .line 2191
    :cond_9
    const/4 v15, -0x1

    #@c0
    goto/16 :goto_1

    #@c2
    .line 2193
    :cond_a
    const/16 v17, 0x30

    #@c4
    move/from16 v0, v17

    #@c6
    if-gt v0, v3, :cond_c

    #@c8
    const/16 v17, 0x39

    #@ca
    move/from16 v0, v17

    #@cc
    if-gt v3, v0, :cond_c

    #@ce
    .line 2194
    if-eqz v16, :cond_b

    #@d0
    .line 2195
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d3
    goto/16 :goto_1

    #@d5
    .line 2198
    :cond_b
    const/4 v15, -0x1

    #@d6
    goto/16 :goto_1

    #@d8
    .line 2200
    :cond_c
    const/16 v17, 0x2c

    #@da
    move/from16 v0, v17

    #@dc
    if-ne v3, v0, :cond_d

    #@de
    .line 2202
    const/4 v5, 0x1

    #@df
    goto/16 :goto_1

    #@e1
    .line 2203
    :cond_d
    const/16 v17, 0x20

    #@e3
    move/from16 v0, v17

    #@e5
    if-eq v3, v0, :cond_e

    #@e7
    const/16 v17, 0x9

    #@e9
    move/from16 v0, v17

    #@eb
    if-ne v3, v0, :cond_f

    #@ed
    .line 2205
    :cond_e
    const/4 v15, 0x3

    #@ee
    .line 2203
    goto/16 :goto_1

    #@f0
    .line 2206
    :cond_f
    const/16 v17, 0x3b

    #@f2
    move/from16 v0, v17

    #@f4
    if-ne v3, v0, :cond_10

    #@f6
    .line 2208
    const/4 v15, 0x4

    #@f7
    goto/16 :goto_1

    #@f9
    .line 2211
    :cond_10
    const/4 v15, -0x1

    #@fa
    goto/16 :goto_1

    #@fc
    .line 2215
    :pswitch_2
    const/16 v17, 0x2c

    #@fe
    move/from16 v0, v17

    #@100
    if-ne v3, v0, :cond_11

    #@102
    .line 2217
    const/4 v5, 0x1

    #@103
    goto/16 :goto_1

    #@105
    .line 2218
    :cond_11
    const/16 v17, 0x20

    #@107
    move/from16 v0, v17

    #@109
    if-eq v3, v0, :cond_12

    #@10b
    const/16 v17, 0x9

    #@10d
    move/from16 v0, v17

    #@10f
    if-ne v3, v0, :cond_13

    #@111
    .line 2220
    :cond_12
    const/4 v15, 0x3

    #@112
    .line 2218
    goto/16 :goto_1

    #@114
    .line 2221
    :cond_13
    const/16 v17, 0x3b

    #@116
    move/from16 v0, v17

    #@118
    if-ne v3, v0, :cond_14

    #@11a
    .line 2223
    const/4 v15, 0x4

    #@11b
    goto/16 :goto_1

    #@11d
    .line 2226
    :cond_14
    const/4 v15, -0x1

    #@11e
    goto/16 :goto_1

    #@120
    .line 2230
    :pswitch_3
    const/16 v17, 0x2c

    #@122
    move/from16 v0, v17

    #@124
    if-ne v3, v0, :cond_15

    #@126
    .line 2232
    const/4 v5, 0x1

    #@127
    goto/16 :goto_1

    #@129
    .line 2233
    :cond_15
    const/16 v17, 0x3b

    #@12b
    move/from16 v0, v17

    #@12d
    if-ne v3, v0, :cond_16

    #@12f
    .line 2235
    const/4 v15, 0x4

    #@130
    goto/16 :goto_1

    #@132
    .line 2236
    :cond_16
    const/16 v17, 0x20

    #@134
    move/from16 v0, v17

    #@136
    if-eq v3, v0, :cond_0

    #@138
    const/16 v17, 0x9

    #@13a
    move/from16 v0, v17

    #@13c
    if-eq v3, v0, :cond_0

    #@13e
    .line 2238
    const/4 v15, -0x1

    #@13f
    goto/16 :goto_1

    #@141
    .line 2242
    :pswitch_4
    const/16 v17, 0x71

    #@143
    move/from16 v0, v17

    #@145
    if-ne v3, v0, :cond_17

    #@147
    .line 2244
    const/4 v15, 0x5

    #@148
    goto/16 :goto_1

    #@14a
    .line 2245
    :cond_17
    const/16 v17, 0x20

    #@14c
    move/from16 v0, v17

    #@14e
    if-eq v3, v0, :cond_0

    #@150
    const/16 v17, 0x9

    #@152
    move/from16 v0, v17

    #@154
    if-eq v3, v0, :cond_0

    #@156
    .line 2247
    const/4 v15, -0x1

    #@157
    goto/16 :goto_1

    #@159
    .line 2251
    :pswitch_5
    const/16 v17, 0x3d

    #@15b
    move/from16 v0, v17

    #@15d
    if-ne v3, v0, :cond_18

    #@15f
    .line 2253
    const/4 v15, 0x6

    #@160
    goto/16 :goto_1

    #@162
    .line 2254
    :cond_18
    const/16 v17, 0x20

    #@164
    move/from16 v0, v17

    #@166
    if-eq v3, v0, :cond_0

    #@168
    const/16 v17, 0x9

    #@16a
    move/from16 v0, v17

    #@16c
    if-eq v3, v0, :cond_0

    #@16e
    .line 2256
    const/4 v15, -0x1

    #@16f
    goto/16 :goto_1

    #@171
    .line 2260
    :pswitch_6
    const/16 v17, 0x30

    #@173
    move/from16 v0, v17

    #@175
    if-ne v3, v0, :cond_19

    #@177
    .line 2262
    const/4 v12, 0x0

    #@178
    .line 2263
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17b
    .line 2264
    const/4 v15, 0x7

    #@17c
    goto/16 :goto_1

    #@17e
    .line 2265
    :cond_19
    const/16 v17, 0x31

    #@180
    move/from16 v0, v17

    #@182
    if-ne v3, v0, :cond_1a

    #@184
    .line 2267
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@187
    .line 2268
    const/4 v15, 0x7

    #@188
    goto/16 :goto_1

    #@18a
    .line 2269
    :cond_1a
    const/16 v17, 0x2e

    #@18c
    move/from16 v0, v17

    #@18e
    if-ne v3, v0, :cond_1c

    #@190
    .line 2270
    if-eqz p1, :cond_1b

    #@192
    .line 2271
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@195
    .line 2272
    const/16 v15, 0x8

    #@197
    goto/16 :goto_1

    #@199
    .line 2274
    :cond_1b
    const/4 v15, -0x1

    #@19a
    goto/16 :goto_1

    #@19c
    .line 2276
    :cond_1c
    const/16 v17, 0x20

    #@19e
    move/from16 v0, v17

    #@1a0
    if-eq v3, v0, :cond_0

    #@1a2
    const/16 v17, 0x9

    #@1a4
    move/from16 v0, v17

    #@1a6
    if-eq v3, v0, :cond_0

    #@1a8
    .line 2278
    const/4 v15, -0x1

    #@1a9
    goto/16 :goto_1

    #@1ab
    .line 2282
    :pswitch_7
    const/16 v17, 0x2e

    #@1ad
    move/from16 v0, v17

    #@1af
    if-ne v3, v0, :cond_1d

    #@1b1
    .line 2284
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b4
    .line 2285
    const/16 v15, 0x8

    #@1b6
    goto/16 :goto_1

    #@1b8
    .line 2286
    :cond_1d
    const/16 v17, 0x2c

    #@1ba
    move/from16 v0, v17

    #@1bc
    if-ne v3, v0, :cond_1e

    #@1be
    .line 2288
    const/4 v5, 0x1

    #@1bf
    goto/16 :goto_1

    #@1c1
    .line 2289
    :cond_1e
    const/16 v17, 0x20

    #@1c3
    move/from16 v0, v17

    #@1c5
    if-eq v3, v0, :cond_1f

    #@1c7
    const/16 v17, 0x9

    #@1c9
    move/from16 v0, v17

    #@1cb
    if-ne v3, v0, :cond_20

    #@1cd
    .line 2291
    :cond_1f
    const/16 v15, 0xa

    #@1cf
    .line 2289
    goto/16 :goto_1

    #@1d1
    .line 2294
    :cond_20
    const/4 v15, -0x1

    #@1d2
    goto/16 :goto_1

    #@1d4
    .line 2298
    :pswitch_8
    const/16 v17, 0x30

    #@1d6
    move/from16 v0, v17

    #@1d8
    if-le v0, v3, :cond_21

    #@1da
    const/16 v17, 0x39

    #@1dc
    move/from16 v0, v17

    #@1de
    if-gt v3, v0, :cond_24

    #@1e0
    .line 2299
    :cond_21
    if-eqz v12, :cond_22

    #@1e2
    const/16 v17, 0x30

    #@1e4
    move/from16 v0, v17

    #@1e6
    if-eq v3, v0, :cond_22

    #@1e8
    if-eqz p1, :cond_23

    #@1ea
    .line 2304
    :cond_22
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1ed
    .line 2305
    const/16 v15, 0x9

    #@1ef
    goto/16 :goto_1

    #@1f1
    .line 2301
    :cond_23
    const/4 v15, -0x1

    #@1f2
    .line 2299
    goto/16 :goto_1

    #@1f4
    .line 2309
    :cond_24
    const/4 v15, -0x1

    #@1f5
    goto/16 :goto_1

    #@1f7
    .line 2313
    :pswitch_9
    const/16 v17, 0x30

    #@1f9
    move/from16 v0, v17

    #@1fb
    if-gt v0, v3, :cond_26

    #@1fd
    const/16 v17, 0x39

    #@1ff
    move/from16 v0, v17

    #@201
    if-gt v3, v0, :cond_26

    #@203
    .line 2314
    if-eqz v12, :cond_25

    #@205
    const/16 v17, 0x30

    #@207
    move/from16 v0, v17

    #@209
    if-eq v3, v0, :cond_25

    #@20b
    .line 2316
    const/4 v15, -0x1

    #@20c
    .line 2314
    goto/16 :goto_1

    #@20e
    .line 2318
    :cond_25
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@211
    goto/16 :goto_1

    #@213
    .line 2320
    :cond_26
    const/16 v17, 0x2c

    #@215
    move/from16 v0, v17

    #@217
    if-ne v3, v0, :cond_27

    #@219
    .line 2322
    const/4 v5, 0x1

    #@21a
    goto/16 :goto_1

    #@21c
    .line 2323
    :cond_27
    const/16 v17, 0x20

    #@21e
    move/from16 v0, v17

    #@220
    if-eq v3, v0, :cond_28

    #@222
    const/16 v17, 0x9

    #@224
    move/from16 v0, v17

    #@226
    if-ne v3, v0, :cond_29

    #@228
    .line 2325
    :cond_28
    const/16 v15, 0xa

    #@22a
    .line 2323
    goto/16 :goto_1

    #@22c
    .line 2328
    :cond_29
    const/4 v15, -0x1

    #@22d
    goto/16 :goto_1

    #@22f
    .line 2332
    :pswitch_a
    const/16 v17, 0x2c

    #@231
    move/from16 v0, v17

    #@233
    if-ne v3, v0, :cond_2a

    #@235
    .line 2334
    const/4 v5, 0x1

    #@236
    goto/16 :goto_1

    #@238
    .line 2335
    :cond_2a
    const/16 v17, 0x20

    #@23a
    move/from16 v0, v17

    #@23c
    if-eq v3, v0, :cond_0

    #@23e
    const/16 v17, 0x9

    #@240
    move/from16 v0, v17

    #@242
    if-eq v3, v0, :cond_0

    #@244
    .line 2337
    const/4 v15, -0x1

    #@245
    goto/16 :goto_1

    #@247
    .line 2345
    :cond_2b
    if-eqz v5, :cond_2e

    #@249
    .line 2346
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@24b
    .line 2347
    .local v10, "q":D
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    #@24e
    move-result v17

    #@24f
    if-eqz v17, :cond_2c

    #@251
    .line 2349
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@254
    move-result-object v17

    #@255
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@258
    move-result-wide v10

    #@259
    .line 2354
    :goto_2
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    #@25b
    cmpl-double v17, v10, v18

    #@25d
    if-lez v17, :cond_2c

    #@25f
    .line 2355
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@261
    .line 2358
    :cond_2c
    const/16 v17, 0x0

    #@263
    move/from16 v0, v17

    #@265
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@268
    move-result v17

    #@269
    const/16 v18, 0x2a

    #@26b
    move/from16 v0, v17

    #@26d
    move/from16 v1, v18

    #@26f
    if-eq v0, v1, :cond_2d

    #@271
    .line 2359
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    #@274
    move-result v14

    #@275
    .line 2360
    .local v14, "serial":I
    new-instance v4, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    #@277
    invoke-direct {v4, v10, v11, v14}, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;-><init>(DI)V

    #@27a
    .line 2362
    .local v4, "entry":Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;
    new-instance v17, Landroid/icu/util/ULocale;

    #@27c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27f
    move-result-object v18

    #@280
    invoke-static/range {v18 .. v18}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@283
    move-result-object v18

    #@284
    invoke-direct/range {v17 .. v18}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@287
    move-object/from16 v0, v17

    #@289
    invoke-virtual {v7, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28c
    .line 2366
    .end local v4    # "entry":Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;
    .end local v14    # "serial":I
    :cond_2d
    const/16 v17, 0x0

    #@28e
    move/from16 v0, v17

    #@290
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@293
    .line 2367
    const/16 v17, 0x0

    #@295
    move/from16 v0, v17

    #@297
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@29a
    .line 2368
    const/4 v15, 0x0

    #@29b
    .line 2162
    .end local v10    # "q":D
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    #@29d
    goto/16 :goto_0

    #@29f
    .line 2350
    .restart local v10    # "q":D
    :catch_0
    move-exception v9

    #@2a0
    .line 2352
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@2a2
    goto :goto_2

    #@2a3
    .line 2371
    .end local v3    # "c":C
    .end local v5    # "gotLanguageQ":Z
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .end local v10    # "q":D
    :cond_2f
    if-eqz v15, :cond_30

    #@2a5
    .line 2373
    new-instance v17, Ljava/text/ParseException;

    #@2a7
    const-string/jumbo v18, "Invalid AcceptlLanguage"

    #@2aa
    move-object/from16 v0, v17

    #@2ac
    move-object/from16 v1, v18

    #@2ae
    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2b1
    throw v17

    #@2b2
    .line 2377
    :cond_30
    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@2b5
    move-result-object v17

    #@2b6
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    #@2b9
    move-result v18

    #@2ba
    move/from16 v0, v18

    #@2bc
    new-array v0, v0, [Landroid/icu/util/ULocale;

    #@2be
    move-object/from16 v18, v0

    #@2c0
    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c3
    move-result-object v2

    #@2c4
    check-cast v2, [Landroid/icu/util/ULocale;

    #@2c6
    .line 2378
    .local v2, "acceptList":[Landroid/icu/util/ULocale;
    return-object v2

    #@2c7
    .line 2165
    nop

    #@2c8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "tags"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 2861
    new-instance v2, Landroid/icu/impl/LocaleIDParser;

    #@5
    invoke-direct {v2, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@8
    .line 2863
    .local v2, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 2864
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 2865
    .local v4, "script":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 2867
    .local v3, "region":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_1

    #@1a
    .line 2868
    const-string/jumbo v6, "und"

    #@1d
    aput-object v6, p1, v7

    #@1f
    .line 2874
    :goto_0
    const-string/jumbo v6, "Zzzz"

    #@22
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 2875
    const-string/jumbo v6, ""

    #@2b
    aput-object v6, p1, v8

    #@2d
    .line 2881
    :goto_1
    const-string/jumbo v6, "ZZ"

    #@30
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_3

    #@36
    .line 2882
    const-string/jumbo v6, ""

    #@39
    aput-object v6, p1, v9

    #@3b
    .line 2900
    :goto_2
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 2902
    .local v5, "variant":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_4

    #@45
    .line 2903
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@48
    move-result v0

    #@49
    .line 2906
    .local v0, "index":I
    if-lez v0, :cond_0

    #@4b
    add-int/lit8 v0, v0, -0x1

    #@4d
    .end local v0    # "index":I
    :cond_0
    return v0

    #@4e
    .line 2871
    .end local v5    # "variant":Ljava/lang/String;
    :cond_1
    aput-object v1, p1, v7

    #@50
    goto :goto_0

    #@51
    .line 2878
    :cond_2
    aput-object v4, p1, v8

    #@53
    goto :goto_1

    #@54
    .line 2885
    :cond_3
    aput-object v3, p1, v9

    #@56
    goto :goto_2

    #@57
    .line 2910
    .restart local v5    # "variant":Ljava/lang/String;
    :cond_4
    const/16 v6, 0x40

    #@59
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@5c
    move-result v0

    #@5d
    .line 2912
    .restart local v0    # "index":I
    const/4 v6, -0x1

    #@5e
    if-ne v0, v6, :cond_5

    #@60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@63
    move-result v0

    #@64
    .end local v0    # "index":I
    :cond_5
    return v0
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    .locals 4
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;
    .param p1, "newLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const-class v3, Landroid/icu/util/ULocale;

    #@2
    monitor-enter v3

    #@3
    .line 761
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@6
    move-result-object v1

    #@7
    .line 762
    .local v1, "newJavaDefault":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@a
    move-result v0

    #@b
    .line 763
    .local v0, "idx":I
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    #@d
    aput-object p1, v2, v0

    #@f
    .line 764
    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    #@11
    aput-object v1, v2, v0

    #@13
    .line 765
    invoke-static {p0, v1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v3

    #@17
    .line 760
    return-void

    #@18
    .end local v0    # "idx":I
    .end local v1    # "newJavaDefault":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/ULocale;)V
    .locals 5
    .param p0, "newLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const-class v2, Landroid/icu/util/ULocale;

    #@2
    monitor-enter v2

    #@3
    .line 684
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@6
    move-result-object v1

    #@7
    sput-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@9
    .line 685
    sget-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    #@b
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    #@e
    .line 686
    sput-object p0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    #@10
    .line 688
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@13
    move-result-object v3

    #@14
    const/4 v1, 0x0

    #@15
    array-length v4, v3

    #@16
    :goto_0
    if-ge v1, v4, :cond_0

    #@18
    aget-object v0, v3, v1

    #@1a
    .line 689
    .local v0, "cat":Landroid/icu/util/ULocale$Category;
    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 688
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .end local v0    # "cat":Landroid/icu/util/ULocale$Category;
    :cond_0
    monitor-exit v2

    #@21
    .line 683
    return-void

    #@22
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public static setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "localeID"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1286
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@5
    .line 1287
    .local v0, "parser":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1288
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3474
    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3475
    .local v0, "legacyKey":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 3484
    const-string/jumbo v1, "[0-9a-zA-Z]+"

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 3485
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 3488
    :cond_0
    return-object v0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3519
    invoke-static {p0, p1, v1, v1}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 3520
    .local v0, "legacyType":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 3530
    const-string/jumbo v1, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 3531
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 3534
    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3415
    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3416
    .local v0, "bcpKey":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 3418
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 3420
    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3452
    invoke-static {p0, p1, v1, v1}, Landroid/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 3453
    .local v0, "bcpType":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 3455
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 3457
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    #@0
    .prologue
    .line 774
    return-object p0
.end method

.method public compareTo(Landroid/icu/util/ULocale;)I
    .locals 10
    .param p1, "other"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 816
    if-ne p0, p1, :cond_0

    #@3
    .line 817
    return v7

    #@4
    .line 820
    :cond_0
    const/4 v0, 0x0

    #@5
    .line 823
    .local v0, "cmp":I
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v8

    #@9
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@c
    move-result-object v9

    #@d
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@10
    move-result v0

    #@11
    .line 824
    if-nez v0, :cond_1

    #@13
    .line 826
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1e
    move-result v0

    #@1f
    .line 827
    if-nez v0, :cond_1

    #@21
    .line 829
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2c
    move-result v0

    #@2d
    .line 830
    if-nez v0, :cond_1

    #@2f
    .line 832
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3a
    move-result v0

    #@3b
    .line 833
    if-nez v0, :cond_1

    #@3d
    .line 835
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    #@40
    move-result-object v5

    #@41
    .line 836
    .local v5, "thisKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    #@44
    move-result-object v2

    #@45
    .line 838
    .local v2, "otherKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    #@47
    .line 839
    if-nez v2, :cond_3

    #@49
    const/4 v0, 0x0

    #@4a
    .line 879
    .end local v2    # "otherKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "thisKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    if-gez v0, :cond_b

    #@4c
    const/4 v7, -0x1

    #@4d
    :cond_2
    :goto_1
    return v7

    #@4e
    .line 839
    .restart local v2    # "otherKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "thisKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    const/4 v0, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 840
    :cond_4
    if-nez v2, :cond_6

    #@52
    .line 841
    const/4 v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 850
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v4

    #@58
    check-cast v4, Ljava/lang/String;

    #@5a
    .line 851
    .local v4, "thisKey":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Ljava/lang/String;

    #@60
    .line 852
    .local v1, "otherKey":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@63
    move-result v0

    #@64
    .line 853
    if-nez v0, :cond_6

    #@66
    .line 855
    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    .line 856
    .local v6, "thisVal":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 857
    .local v3, "otherVal":Ljava/lang/String;
    if-nez v6, :cond_9

    #@70
    .line 858
    if-nez v3, :cond_8

    #@72
    const/4 v0, 0x0

    #@73
    .line 844
    .end local v1    # "otherKey":Ljava/lang/String;
    .end local v3    # "otherVal":Ljava/lang/String;
    .end local v4    # "thisKey":Ljava/lang/String;
    .end local v6    # "thisVal":Ljava/lang/String;
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    #@75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_7

    #@7b
    .line 845
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v8

    #@7f
    if-nez v8, :cond_5

    #@81
    .line 846
    const/4 v0, 0x1

    #@82
    .line 866
    :cond_7
    if-nez v0, :cond_1

    #@84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v8

    #@88
    if-eqz v8, :cond_1

    #@8a
    .line 867
    const/4 v0, -0x1

    #@8b
    goto :goto_0

    #@8c
    .line 858
    .restart local v1    # "otherKey":Ljava/lang/String;
    .restart local v3    # "otherVal":Ljava/lang/String;
    .restart local v4    # "thisKey":Ljava/lang/String;
    .restart local v6    # "thisVal":Ljava/lang/String;
    :cond_8
    const/4 v0, -0x1

    #@8d
    goto :goto_2

    #@8e
    .line 859
    :cond_9
    if-nez v3, :cond_a

    #@90
    .line 860
    const/4 v0, 0x1

    #@91
    goto :goto_2

    #@92
    .line 862
    :cond_a
    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@95
    move-result v0

    #@96
    goto :goto_2

    #@97
    .line 879
    .end local v1    # "otherKey":Ljava/lang/String;
    .end local v2    # "otherKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "otherVal":Ljava/lang/String;
    .end local v4    # "thisKey":Ljava/lang/String;
    .end local v5    # "thisKwdItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "thisVal":Ljava/lang/String;
    :cond_b
    if-lez v0, :cond_2

    #@99
    const/4 v7, 0x1

    #@9a
    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 815
    check-cast p1, Landroid/icu/util/ULocale;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 795
    if-ne p0, p1, :cond_0

    #@2
    .line 796
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 798
    :cond_0
    instance-of v0, p1, Landroid/icu/util/ULocale;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 799
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@a
    check-cast p1, Landroid/icu/util/ULocale;

    #@c
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 801
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1051
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCharacterOrientation()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1928
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    .line 1929
    const-string/jumbo v1, "layout"

    #@6
    const-string/jumbo v2, "characters"

    #@9
    .line 1928
    invoke-static {v0, p0, v1, v2}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 964
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1621
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayCountry(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1633
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1767
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1778
    invoke-static {p0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayLanguage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1417
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDisplayLanguage(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1427
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDisplayLanguageWithDialect()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1462
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDisplayLanguageWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1473
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1825
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1835
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayNameWithDialect()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1874
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayNameWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1885
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1516
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayScript(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1538
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayScriptInContext()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1528
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayScriptInContext(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1550
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1677
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayVariant(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1687
    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # C

    #@0
    .prologue
    .line 3095
    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidKey(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid extension key: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 3098
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@23
    move-result-object v0

    #@24
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
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
    .line 3111
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFallback()Landroid/icu/util/ULocale;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1014
    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    const/16 v2, 0x40

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 1015
    :cond_0
    return-object v0

    #@15
    .line 1017
    :cond_1
    new-instance v1, Landroid/icu/util/ULocale;

    #@17
    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@19
    invoke-static {v2}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    check-cast v0, Ljava/util/Locale;

    #@1f
    invoke-direct {v1, v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@22
    return-object v1
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1343
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1317
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keywordName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1172
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 920
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLineOrientation()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1940
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@3
    .line 1941
    const-string/jumbo v1, "layout"

    #@6
    const-string/jumbo v2, "lines"

    #@9
    .line 1940
    invoke-static {v0, p0, v1, v2}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1076
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 942
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
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
    .line 3123
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
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
    .line 3158
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3142
    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidUnicodeLocaleKey(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid Unicode locale key: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 3145
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 986
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRightToLeft()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1381
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 1382
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_2

    #@b
    .line 1385
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 1386
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_0

    #@15
    .line 1387
    return v7

    #@16
    .line 1389
    :cond_0
    const-string/jumbo v5, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    #@19
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1c
    move-result v1

    #@1d
    .line 1390
    .local v1, "langIndex":I
    if-ltz v1, :cond_1

    #@1f
    .line 1391
    const-string/jumbo v5, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@25
    move-result v6

    #@26
    add-int/2addr v6, v1

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v5

    #@2b
    packed-switch v5, :pswitch_data_0

    #@2e
    .line 1398
    :cond_1
    :pswitch_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@31
    move-result-object v2

    #@32
    .line 1399
    .local v2, "likely":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 1400
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@39
    move-result v5

    #@3a
    if-nez v5, :cond_2

    #@3c
    .line 1401
    return v7

    #@3d
    .line 1392
    .end local v2    # "likely":Landroid/icu/util/ULocale;
    :pswitch_1
    return v7

    #@3e
    .line 1393
    :pswitch_2
    const/4 v5, 0x1

    #@3f
    return v5

    #@40
    .line 1404
    .end local v0    # "lang":Ljava/lang/String;
    .end local v1    # "langIndex":I
    :cond_2
    invoke-static {v3}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    #@43
    move-result v4

    #@44
    .line 1405
    .local v4, "scriptCode":I
    invoke-static {v4}, Landroid/icu/lang/UScript;->isRightToLeft(I)Z

    #@47
    move-result v5

    #@48
    return v5

    #@49
    .line 1391
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1267
    new-instance v1, Landroid/icu/util/ULocale;

    #@2
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@4
    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v0, 0x0

    #@9
    check-cast v0, Ljava/util/Locale;

    #@b
    invoke-direct {v1, v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@e
    return-object v1
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    .line 3217
    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    .line 3218
    .local v0, "base":Landroid/icu/impl/locale/BaseLocale;
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    #@7
    move-result-object v3

    #@8
    .line 3220
    .local v3, "exts":Landroid/icu/impl/locale/LocaleExtensions;
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@b
    move-result-object v10

    #@c
    const-string/jumbo v11, "POSIX"

    #@f
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v10

    #@13
    if-eqz v10, :cond_0

    #@15
    .line 3222
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@20
    move-result-object v12

    #@21
    const-string/jumbo v13, ""

    #@24
    invoke-static {v10, v11, v12, v13}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    #@27
    move-result-object v0

    #@28
    .line 3223
    const-string/jumbo v10, "va"

    #@2b
    invoke-virtual {v3, v10}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v10

    #@2f
    if-nez v10, :cond_0

    #@31
    .line 3225
    new-instance v4, Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@33
    invoke-direct {v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    #@36
    .line 3227
    .local v4, "ilocbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_start_0
    sget-object v10, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    #@38
    invoke-virtual {v4, v10, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@3b
    .line 3228
    const-string/jumbo v10, "va"

    #@3e
    const-string/jumbo v11, "posix"

    #@41
    invoke-virtual {v4, v10, v11}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    #@44
    .line 3229
    invoke-virtual {v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    move-result-object v3

    #@48
    .line 3237
    .end local v4    # "ilocbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :cond_0
    invoke-static {v0, v3}, Landroid/icu/impl/locale/LanguageTag;->parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;

    #@4b
    move-result-object v9

    #@4c
    .line 3239
    .local v9, "tag":Landroid/icu/impl/locale/LanguageTag;
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    .line 3240
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    .line 3241
    .local v7, "subtag":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@58
    move-result v10

    #@59
    if-lez v10, :cond_1

    #@5b
    .line 3242
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 3245
    :cond_1
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 3246
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@69
    move-result v10

    #@6a
    if-lez v10, :cond_2

    #@6c
    .line 3247
    const-string/jumbo v10, "-"

    #@6f
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 3248
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 3251
    :cond_2
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    .line 3252
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@80
    move-result v10

    #@81
    if-lez v10, :cond_3

    #@83
    .line 3253
    const-string/jumbo v10, "-"

    #@86
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 3254
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 3257
    :cond_3
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    #@93
    move-result-object v8

    #@94
    .line 3258
    .local v8, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@97
    move-result-object v6

    #@98
    .local v6, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@9b
    move-result v10

    #@9c
    if-eqz v10, :cond_4

    #@9e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a1
    move-result-object v5

    #@a2
    check-cast v5, Ljava/lang/String;

    #@a4
    .line 3259
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v10, "-"

    #@a7
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 3260
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v10

    #@ae
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    goto :goto_0

    #@b2
    .line 3230
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "s$iterator":Ljava/util/Iterator;
    .end local v7    # "subtag":Ljava/lang/String;
    .end local v8    # "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "tag":Landroid/icu/impl/locale/LanguageTag;
    .restart local v4    # "ilocbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    :catch_0
    move-exception v2

    #@b3
    .line 3232
    .local v2, "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    new-instance v10, Ljava/lang/RuntimeException;

    #@b5
    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@b8
    throw v10

    #@b9
    .line 3263
    .end local v2    # "e":Landroid/icu/impl/locale/LocaleSyntaxException;
    .end local v4    # "ilocbld":Landroid/icu/impl/locale/InternalLocaleBuilder;
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v6    # "s$iterator":Ljava/util/Iterator;
    .restart local v7    # "subtag":Ljava/lang/String;
    .restart local v8    # "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "tag":Landroid/icu/impl/locale/LanguageTag;
    :cond_4
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    #@bc
    move-result-object v8

    #@bd
    .line 3264
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c0
    move-result-object v6

    #@c1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@c4
    move-result v10

    #@c5
    if-eqz v10, :cond_5

    #@c7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ca
    move-result-object v5

    #@cb
    check-cast v5, Ljava/lang/String;

    #@cd
    .line 3265
    .restart local v5    # "s":Ljava/lang/String;
    const-string/jumbo v10, "-"

    #@d0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 3266
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    #@d6
    move-result-object v10

    #@d7
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    goto :goto_1

    #@db
    .line 3269
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    #@de
    move-result-object v7

    #@df
    .line 3270
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@e2
    move-result v10

    #@e3
    if-lez v10, :cond_7

    #@e5
    .line 3271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@e8
    move-result v10

    #@e9
    if-lez v10, :cond_6

    #@eb
    .line 3272
    const-string/jumbo v10, "-"

    #@ee
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 3274
    :cond_6
    const-string/jumbo v10, "x"

    #@f4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v10

    #@f8
    const-string/jumbo v11, "-"

    #@fb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    .line 3275
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    #@101
    move-result-object v10

    #@102
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    .line 3278
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v10

    #@109
    return-object v10
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 551
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    #@a
    .line 553
    :cond_0
    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1140
    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    #@2
    return-object v0
.end method
