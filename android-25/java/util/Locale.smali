.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$Builder;,
        Ljava/util/Locale$Cache;,
        Ljava/util/Locale$Category;,
        Ljava/util/Locale$LocaleKey;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-Locale$CategorySwitchesValues:[I = null

.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field private static final DISPLAY_COUNTRY:I = 0x1

.field private static final DISPLAY_LANGUAGE:I = 0x0

.field private static final DISPLAY_SCRIPT:I = 0x3

.field private static final DISPLAY_VARIANT:I = 0x2

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field private static final LOCALECACHE:Ljava/util/Locale$Cache;

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

.field private static defaultDisplayLocale:Ljava/util/Locale; = null

.field private static defaultFormatLocale:Ljava/util/Locale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static volatile isoCountries:[Ljava/lang/String; = null

.field private static volatile isoLanguages:[Ljava/lang/String; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient baseLocale:Lsun/util/locale/BaseLocale;

.field private volatile transient hashCodeValue:I

.field private transient localeExtensions:Lsun/util/locale/LocaleExtensions;


# direct methods
.method static synthetic -get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@2
    return-object v0
.end method

.method private static synthetic -getjava-util-Locale$CategorySwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/util/Locale$Category;->values()[Ljava/util/Locale$Category;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@10
    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@19
    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    const-class v0, Ljava/util/Locale;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    sput-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    #@e
    .line 485
    new-instance v0, Ljava/util/Locale$Cache;

    #@10
    invoke-direct {v0, v6}, Ljava/util/Locale$Cache;-><init>(Ljava/util/Locale$Cache;)V

    #@13
    sput-object v0, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    #@15
    .line 489
    const-string/jumbo v0, "en"

    #@18
    const-string/jumbo v3, ""

    #@1b
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@1e
    move-result-object v0

    #@1f
    sput-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@21
    .line 493
    const-string/jumbo v0, "fr"

    #@24
    const-string/jumbo v3, ""

    #@27
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    #@2d
    .line 497
    const-string/jumbo v0, "de"

    #@30
    const-string/jumbo v3, ""

    #@33
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    #@39
    .line 501
    const-string/jumbo v0, "it"

    #@3c
    const-string/jumbo v3, ""

    #@3f
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@42
    move-result-object v0

    #@43
    sput-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    #@45
    .line 505
    const-string/jumbo v0, "ja"

    #@48
    const-string/jumbo v3, ""

    #@4b
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@4e
    move-result-object v0

    #@4f
    sput-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    #@51
    .line 509
    const-string/jumbo v0, "ko"

    #@54
    const-string/jumbo v3, ""

    #@57
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@5a
    move-result-object v0

    #@5b
    sput-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    #@5d
    .line 513
    const-string/jumbo v0, "zh"

    #@60
    const-string/jumbo v3, ""

    #@63
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@66
    move-result-object v0

    #@67
    sput-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    #@69
    .line 517
    const-string/jumbo v0, "zh"

    #@6c
    const-string/jumbo v3, "CN"

    #@6f
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@72
    move-result-object v0

    #@73
    sput-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    #@75
    .line 521
    const-string/jumbo v0, "zh"

    #@78
    const-string/jumbo v3, "TW"

    #@7b
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@7e
    move-result-object v0

    #@7f
    sput-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    #@81
    .line 525
    const-string/jumbo v0, "fr"

    #@84
    const-string/jumbo v3, "FR"

    #@87
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@8a
    move-result-object v0

    #@8b
    sput-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    #@8d
    .line 529
    const-string/jumbo v0, "de"

    #@90
    const-string/jumbo v3, "DE"

    #@93
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    #@99
    .line 533
    const-string/jumbo v0, "it"

    #@9c
    const-string/jumbo v3, "IT"

    #@9f
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@a2
    move-result-object v0

    #@a3
    sput-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    #@a5
    .line 537
    const-string/jumbo v0, "ja"

    #@a8
    const-string/jumbo v3, "JP"

    #@ab
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@ae
    move-result-object v0

    #@af
    sput-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    #@b1
    .line 541
    const-string/jumbo v0, "ko"

    #@b4
    const-string/jumbo v3, "KR"

    #@b7
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@ba
    move-result-object v0

    #@bb
    sput-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    #@bd
    .line 545
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    #@bf
    sput-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    #@c1
    .line 549
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    #@c3
    sput-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    #@c5
    .line 553
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    #@c7
    sput-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    #@c9
    .line 557
    const-string/jumbo v0, "en"

    #@cc
    const-string/jumbo v3, "GB"

    #@cf
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@d2
    move-result-object v0

    #@d3
    sput-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    #@d5
    .line 561
    const-string/jumbo v0, "en"

    #@d8
    const-string/jumbo v3, "US"

    #@db
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@de
    move-result-object v0

    #@df
    sput-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@e1
    .line 565
    const-string/jumbo v0, "en"

    #@e4
    const-string/jumbo v3, "CA"

    #@e7
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@ea
    move-result-object v0

    #@eb
    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    #@ed
    .line 569
    const-string/jumbo v0, "fr"

    #@f0
    const-string/jumbo v3, "CA"

    #@f3
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@f6
    move-result-object v0

    #@f7
    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    #@f9
    .line 584
    const-string/jumbo v0, ""

    #@fc
    const-string/jumbo v3, ""

    #@ff
    invoke-static {v0, v3}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@102
    move-result-object v0

    #@103
    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@105
    .line 2031
    sput-object v6, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    #@107
    .line 2032
    sput-object v6, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    #@109
    .line 2033
    sput-object v6, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    #@10b
    .line 2118
    const/4 v0, 0x6

    #@10c
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@10e
    .line 2119
    new-instance v3, Ljava/io/ObjectStreamField;

    #@110
    const-string/jumbo v4, "language"

    #@113
    const-class v5, Ljava/lang/String;

    #@115
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@118
    aput-object v3, v0, v1

    #@11a
    .line 2120
    new-instance v1, Ljava/io/ObjectStreamField;

    #@11c
    const-string/jumbo v3, "country"

    #@11f
    const-class v4, Ljava/lang/String;

    #@121
    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@124
    aput-object v1, v0, v2

    #@126
    .line 2121
    new-instance v1, Ljava/io/ObjectStreamField;

    #@128
    const-string/jumbo v2, "variant"

    #@12b
    const-class v3, Ljava/lang/String;

    #@12d
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@130
    const/4 v2, 0x2

    #@131
    aput-object v1, v0, v2

    #@133
    .line 2122
    new-instance v1, Ljava/io/ObjectStreamField;

    #@135
    const-string/jumbo v2, "hashcode"

    #@138
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@13d
    const/4 v2, 0x3

    #@13e
    aput-object v1, v0, v2

    #@140
    .line 2123
    new-instance v1, Ljava/io/ObjectStreamField;

    #@142
    const-string/jumbo v2, "script"

    #@145
    const-class v3, Ljava/lang/String;

    #@147
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@14a
    const/4 v2, 0x4

    #@14b
    aput-object v1, v0, v2

    #@14d
    .line 2124
    new-instance v1, Ljava/io/ObjectStreamField;

    #@14f
    const-string/jumbo v2, "extensions"

    #@152
    const-class v3, Ljava/lang/String;

    #@154
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@157
    const/4 v2, 0x5

    #@158
    aput-object v1, v0, v2

    #@15a
    .line 2118
    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@15c
    .line 2192
    sput-object v6, Ljava/util/Locale;->isoLanguages:[Ljava/lang/String;

    #@15e
    .line 2194
    sput-object v6, Ljava/util/Locale;->isoCountries:[Ljava/lang/String;

    #@160
    .line 483
    return-void

    #@161
    :cond_0
    move v0, v2

    #@162
    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 705
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 681
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 680
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2029
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    #@6
    .line 651
    if-eqz p1, :cond_0

    #@8
    if-nez p2, :cond_1

    #@a
    .line 652
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@f
    throw v0

    #@10
    .line 651
    :cond_1
    if-eqz p3, :cond_0

    #@12
    .line 654
    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ""

    #@19
    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@1f
    .line 655
    const-string/jumbo v0, ""

    #@22
    invoke-static {p1, v0, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@28
    .line 650
    return-void
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .locals 1
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2029
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    #@6
    .line 620
    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@8
    .line 621
    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@a
    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V
    .locals 0
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    #@3
    return-void
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2237
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2240
    .local v0, "adjusted":Ljava/lang/String;
    const-string/jumbo v1, "he"

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 2241
    const-string/jumbo v0, "iw"

    #@12
    .line 2248
    :cond_0
    :goto_0
    return-object v0

    #@13
    .line 2242
    :cond_1
    const-string/jumbo v1, "id"

    #@16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 2243
    const-string/jumbo v0, "in"

    #@1f
    goto :goto_0

    #@20
    .line 2244
    :cond_2
    const-string/jumbo v1, "yi"

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 2245
    const-string/jumbo v0, "ji"

    #@2c
    goto :goto_0
.end method

.method private static composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "format"    # Ljava/text/MessageFormat;
    .param p1, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 2084
    array-length v3, p1

    #@4
    const/4 v4, 0x3

    #@5
    if-gt v3, v4, :cond_0

    #@7
    return-object p1

    #@8
    .line 2087
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    #@a
    aget-object v3, p1, v5

    #@c
    aput-object v3, v0, v5

    #@e
    aget-object v3, p1, v6

    #@10
    aput-object v3, v0, v6

    #@12
    .line 2088
    .local v0, "listItems":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 2091
    .local v1, "newItem":Ljava/lang/String;
    array-length v3, p1

    #@17
    add-int/lit8 v3, v3, -0x1

    #@19
    new-array v2, v3, [Ljava/lang/String;

    #@1b
    .line 2092
    .local v2, "newList":[Ljava/lang/String;
    array-length v3, v2

    #@1c
    add-int/lit8 v3, v3, -0x1

    #@1e
    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 2093
    aput-object v1, v2, v5

    #@23
    .line 2096
    invoke-static {p0, v2}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method private static convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2199
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    .line 2200
    const-string/jumbo v0, "he"

    #@b
    if-ne p0, v0, :cond_0

    #@d
    .line 2201
    const-string/jumbo v0, "iw"

    #@10
    return-object v0

    #@11
    .line 2202
    :cond_0
    const-string/jumbo v0, "yi"

    #@14
    if-ne p0, v0, :cond_1

    #@16
    .line 2203
    const-string/jumbo v0, "ji"

    #@19
    return-object v0

    #@1a
    .line 2204
    :cond_1
    const-string/jumbo v0, "id"

    #@1d
    if-ne p0, v0, :cond_2

    #@1f
    .line 2205
    const-string/jumbo v0, "in"

    #@22
    return-object v0

    #@23
    .line 2207
    :cond_2
    return-object p0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 713
    invoke-static {p0, p1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    #@3
    move-result-object v0

    #@4
    .line 714
    .local v0, "base":Lsun/util/locale/BaseLocale;
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p0, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1518
    invoke-static {p0, v4}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    #@4
    move-result-object v3

    #@5
    .line 1519
    .local v3, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    #@7
    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    #@a
    .line 1520
    .local v1, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    #@d
    .line 1521
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    #@10
    move-result-object v0

    #@11
    .line 1522
    .local v0, "base":Lsun/util/locale/BaseLocale;
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    #@14
    move-result-object v2

    #@15
    .line 1523
    .local v2, "exts":Lsun/util/locale/LocaleExtensions;
    if-nez v2, :cond_0

    #@17
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1e
    move-result v4

    #@1f
    if-lez v4, :cond_0

    #@21
    .line 1524
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 1525
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    .line 1524
    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    #@34
    move-result-object v2

    #@35
    .line 1527
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@38
    move-result-object v4

    #@39
    return-object v4
.end method

.method private static formatList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stringList"    # [Ljava/lang/String;
    .param p1, "listPattern"    # Ljava/lang/String;
    .param p2, "listCompositionPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2049
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_3

    #@5
    .line 2050
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@a
    .line 2051
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v4, p0

    #@c
    if-ge v2, v4, :cond_2

    #@e
    .line 2052
    if-lez v2, :cond_1

    #@10
    const/16 v4, 0x2c

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 2053
    :cond_1
    aget-object v4, p0, v2

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 2051
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2055
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    return-object v4

    #@22
    .line 2059
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuffer;
    :cond_3
    array-length v4, p0

    #@23
    const/4 v5, 0x3

    #@24
    if-le v4, v5, :cond_4

    #@26
    .line 2060
    new-instance v1, Ljava/text/MessageFormat;

    #@28
    invoke-direct {v1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@2b
    .line 2061
    .local v1, "format":Ljava/text/MessageFormat;
    invoke-static {v1, p0}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    #@2e
    move-result-object p0

    #@2f
    .line 2065
    .end local v1    # "format":Ljava/text/MessageFormat;
    :cond_4
    array-length v4, p0

    #@30
    add-int/lit8 v4, v4, 0x1

    #@32
    new-array v0, v4, [Ljava/lang/Object;

    #@34
    .line 2066
    .local v0, "args":[Ljava/lang/Object;
    array-length v4, p0

    #@35
    const/4 v5, 0x1

    #@36
    invoke-static {p0, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@39
    .line 2067
    new-instance v4, Ljava/lang/Integer;

    #@3b
    array-length v5, p0

    #@3c
    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    #@3f
    aput-object v4, v0, v6

    #@41
    .line 2070
    new-instance v1, Ljava/text/MessageFormat;

    #@43
    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@46
    .line 2071
    .restart local v1    # "format":Ljava/text/MessageFormat;
    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    return-object v4
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1004
    invoke-static {}, Lsun/util/LocaleServiceProviderPool;->getAllAvailableLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2215
    const/4 v0, 0x0

    #@1
    .line 2217
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    const-string/jumbo v1, "ja"

    #@4
    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 2219
    const-string/jumbo v1, "jp"

    #@13
    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    .line 2217
    if-eqz v1, :cond_1

    #@19
    .line 2220
    const-string/jumbo v1, "JP"

    #@1c
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    .line 2217
    if-eqz v1, :cond_1

    #@22
    .line 2222
    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    #@24
    .line 2230
    .end local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_0
    :goto_0
    return-object v0

    #@25
    .line 2223
    .restart local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_1
    const-string/jumbo v1, "th"

    #@28
    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 2224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_0

    #@34
    .line 2225
    const-string/jumbo v1, "th"

    #@37
    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@3a
    move-result v1

    #@3b
    .line 2223
    if-eqz v1, :cond_0

    #@3d
    .line 2226
    const-string/jumbo v1, "TH"

    #@40
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    .line 2223
    if-eqz v1, :cond_0

    #@46
    .line 2228
    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    #@48
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    goto :goto_0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 820
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 821
    invoke-static {}, Ljava/util/Locale;->initDefault()Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    #@a
    .line 823
    :cond_0
    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    #@c
    return-object v0
.end method

.method public static getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 2
    .param p0, "category"    # Ljava/util/Locale$Category;

    #@0
    .prologue
    .line 845
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 857
    sget-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    #@f
    if-nez v0, :cond_2

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    const-string/jumbo v1, "Unknown Category"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v0

    #@1a
    .line 847
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 848
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    #@24
    .line 850
    :cond_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    #@26
    return-object v0

    #@27
    .line 852
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 853
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    #@31
    .line 855
    :cond_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    #@33
    return-object v0

    #@34
    .line 859
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@37
    move-result-object v0

    #@38
    return-object v0

    #@39
    .line 845
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1018
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
    .line 1037
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 732
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "extensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    .line 737
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 738
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 737
    :cond_1
    if-eqz p2, :cond_0

    #@c
    if-eqz p3, :cond_0

    #@e
    .line 741
    if-nez p4, :cond_2

    #@10
    .line 742
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    #@13
    move-result-object p4

    #@14
    .line 745
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    #@17
    move-result-object v0

    #@18
    .line 746
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method static getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2
    .param p0, "baseloc"    # Lsun/util/locale/BaseLocale;
    .param p1, "extensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    .line 750
    new-instance v0, Ljava/util/Locale$LocaleKey;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V

    #@6
    .line 751
    .local v0, "key":Ljava/util/Locale$LocaleKey;
    sget-object v1, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    #@8
    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/Locale;

    #@e
    return-object v1
.end method

.method public static initDefault()Ljava/util/Locale;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 867
    const-string/jumbo v7, "user.locale"

    #@5
    const-string/jumbo v8, ""

    #@8
    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 868
    .local v3, "languageTag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v7

    #@10
    if-nez v7, :cond_0

    #@12
    .line 869
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@15
    move-result-object v7

    #@16
    return-object v7

    #@17
    .line 874
    :cond_0
    const-string/jumbo v7, "user.language"

    #@1a
    const-string/jumbo v8, "en"

    #@1d
    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 876
    .local v2, "language":Ljava/lang/String;
    const-string/jumbo v7, "user.region"

    #@24
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 877
    .local v4, "region":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@2a
    .line 879
    const/16 v7, 0x5f

    #@2c
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    #@2f
    move-result v1

    #@30
    .line 880
    .local v1, "i":I
    if-ltz v1, :cond_1

    #@32
    .line 881
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 882
    .local v0, "country":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    #@38
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 887
    .local v6, "variant":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, ""

    #@3f
    .line 893
    .end local v1    # "i":I
    .local v5, "script":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v5, v0, v6, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@42
    move-result-object v7

    #@43
    return-object v7

    #@44
    .line 884
    .end local v0    # "country":Ljava/lang/String;
    .end local v5    # "script":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    move-object v0, v4

    #@45
    .line 885
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@48
    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_0

    #@49
    .line 889
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v6    # "variant":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "user.script"

    #@4c
    const-string/jumbo v8, ""

    #@4f
    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 890
    .restart local v5    # "script":Ljava/lang/String;
    const-string/jumbo v7, "user.country"

    #@56
    const-string/jumbo v8, ""

    #@59
    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .line 891
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v7, "user.variant"

    #@60
    const-string/jumbo v8, ""

    #@63
    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_1
.end method

.method private static initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 6
    .param p0, "category"    # Ljava/util/Locale$Category;

    #@0
    .prologue
    .line 898
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    .line 901
    .local v0, "defaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 902
    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    #@10
    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 903
    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    #@1a
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 904
    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    #@24
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 905
    const/4 v5, 0x0

    #@2d
    .line 900
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@30
    move-result-object v1

    #@31
    return-object v1
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1664
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
    .line 1665
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 1666
    .local v0, "character":C
    const/16 v2, 0x61

    #@d
    if-lt v0, v2, :cond_0

    #@f
    const/16 v2, 0x7a

    #@11
    if-le v0, v2, :cond_3

    #@13
    .line 1667
    :cond_0
    const/16 v2, 0x41

    #@15
    if-lt v0, v2, :cond_1

    #@17
    const/16 v2, 0x5a

    #@19
    if-le v0, v2, :cond_3

    #@1b
    .line 1668
    :cond_1
    const/16 v2, 0x30

    #@1d
    if-lt v0, v2, :cond_2

    #@1f
    const/16 v2, 0x39

    #@21
    if-le v0, v2, :cond_3

    #@23
    .line 1669
    :cond_2
    const/4 v2, 0x0

    #@24
    return v2

    #@25
    .line 1664
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1673
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
    .line 1788
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-eq v2, v4, :cond_0

    #@8
    .line 1789
    return v3

    #@9
    .line 1792
    :cond_0
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    #@c
    .line 1793
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 1794
    .local v0, "character":C
    const/16 v2, 0x30

    #@12
    if-lt v0, v2, :cond_1

    #@14
    const/16 v2, 0x39

    #@16
    if-le v0, v2, :cond_2

    #@18
    .line 1795
    :cond_1
    return v3

    #@19
    .line 1792
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1799
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
    .line 1768
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 1769
    .local v2, "length":I
    if-lt v2, p1, :cond_0

    #@7
    if-le v2, p2, :cond_1

    #@9
    .line 1770
    :cond_0
    return v4

    #@a
    .line 1773
    :cond_1
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@d
    .line 1774
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 1775
    .local v0, "character":C
    const/16 v3, 0x61

    #@13
    if-lt v0, v3, :cond_2

    #@15
    const/16 v3, 0x7a

    #@17
    if-le v0, v3, :cond_4

    #@19
    .line 1776
    :cond_2
    const/16 v3, 0x41

    #@1b
    if-lt v0, v3, :cond_3

    #@1d
    const/16 v3, 0x5a

    #@1f
    if-le v0, v3, :cond_4

    #@21
    .line 1777
    :cond_3
    return v4

    #@22
    .line 1773
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1781
    .end local v0    # "character":C
    :cond_5
    const/4 v3, 0x1

    #@26
    return v3
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "subTag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x5

    #@7
    if-lt v1, v2, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    const/16 v2, 0x8

    #@f
    if-gt v1, v2, :cond_0

    #@11
    .line 1869
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1870
    return v4

    #@18
    .line 1872
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x4

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    .line 1873
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v0

    #@23
    .line 1874
    .local v0, "firstChar":C
    const/16 v1, 0x30

    #@25
    if-lt v0, v1, :cond_1

    #@27
    const/16 v1, 0x39

    #@29
    if-gt v0, v1, :cond_1

    #@2b
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 1875
    return v4

    #@32
    .line 1879
    .end local v0    # "firstChar":C
    :cond_1
    return v3
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    .line 1644
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 1645
    :cond_0
    const-string/jumbo v1, ""

    #@b
    return-object v1

    #@c
    .line 1648
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1649
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    #@13
    const/4 v2, 0x3

    #@14
    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 1650
    if-eqz p1, :cond_2

    #@1c
    .line 1651
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Invalid language: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 1653
    :cond_2
    const-string/jumbo v1, "und"

    #@39
    return-object v1

    #@3a
    .line 1657
    :cond_3
    return-object v0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1750
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1751
    :cond_0
    const-string/jumbo v1, ""

    #@c
    return-object v1

    #@d
    .line 1754
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 1755
    .local v0, "uppercaseRegion":Ljava/lang/String;
    invoke-static {v0, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    .line 1756
    invoke-static {v0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 1764
    :cond_2
    return-object v0

    #@20
    .line 1757
    :cond_3
    if-eqz p1, :cond_4

    #@22
    .line 1758
    new-instance v1, Ljava/util/IllformedLocaleException;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Invalid region: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 1760
    :cond_4
    const-string/jumbo v1, ""

    #@3f
    return-object v1
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1846
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 1847
    :cond_0
    const-string/jumbo v3, ""

    #@b
    return-object v3

    #@c
    .line 1852
    :cond_1
    const/16 v3, 0x2d

    #@e
    const/16 v4, 0x5f

    #@10
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1853
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string/jumbo v3, "_"

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1855
    .local v2, "subTags":[Ljava/lang/String;
    const/4 v3, 0x0

    #@1c
    array-length v4, v2

    #@1d
    :goto_0
    if-ge v3, v4, :cond_3

    #@1f
    aget-object v1, v2, v3

    #@21
    .line 1856
    .local v1, "subTag":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    #@24
    move-result v5

    #@25
    if-nez v5, :cond_2

    #@27
    .line 1857
    new-instance v3, Ljava/util/IllformedLocaleException;

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Invalid variant: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3

    #@41
    .line 1855
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1861
    .end local v1    # "subTag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2153
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v4

    #@5
    .line 2154
    .local v4, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v8, "language"

    #@8
    const-string/jumbo v9, ""

    #@b
    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Ljava/lang/String;

    #@11
    .line 2155
    .local v5, "language":Ljava/lang/String;
    const-string/jumbo v8, "script"

    #@14
    const-string/jumbo v9, ""

    #@17
    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Ljava/lang/String;

    #@1d
    .line 2156
    .local v6, "script":Ljava/lang/String;
    const-string/jumbo v8, "country"

    #@20
    const-string/jumbo v9, ""

    #@23
    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljava/lang/String;

    #@29
    .line 2157
    .local v1, "country":Ljava/lang/String;
    const-string/jumbo v8, "variant"

    #@2c
    const-string/jumbo v9, ""

    #@2f
    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Ljava/lang/String;

    #@35
    .line 2158
    .local v7, "variant":Ljava/lang/String;
    const-string/jumbo v8, "extensions"

    #@38
    const-string/jumbo v9, ""

    #@3b
    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Ljava/lang/String;

    #@41
    .line 2159
    .local v3, "extStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-static {v8, v6, v1, v7}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    #@48
    move-result-object v8

    #@49
    iput-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@4b
    .line 2160
    if-eqz v3, :cond_0

    #@4d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@50
    move-result v8

    #@51
    if-lez v8, :cond_0

    #@53
    .line 2162
    :try_start_0
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    #@55
    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    #@58
    .line 2163
    .local v0, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    #@5b
    .line 2164
    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    #@5e
    move-result-object v8

    #@5f
    iput-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 2152
    .end local v0    # "bldr":Lsun/util/locale/InternalLocaleBuilder;
    :goto_0
    return-void

    #@62
    .line 2165
    :catch_0
    move-exception v2

    #@63
    .line 2166
    .local v2, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v8, Ljava/util/IllformedLocaleException;

    #@65
    invoke-virtual {v2}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    invoke-direct {v8, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v8

    #@6d
    .line 2169
    .end local v2    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_0
    iput-object v10, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@6f
    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 2188
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@8
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 2189
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@e
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@14
    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@1a
    .line 2188
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .locals 5
    .param p0, "category"    # Ljava/util/Locale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    const-class v2, Ljava/util/Locale;

    #@2
    monitor-enter v2

    #@3
    .line 973
    if-nez p0, :cond_0

    #@5
    .line 974
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "Category cannot be NULL"

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
    .line 975
    :cond_0
    if-nez p1, :cond_1

    #@13
    .line 976
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v3, "Can\'t set default locale to NULL"

    #@18
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 978
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1f
    move-result-object v0

    #@20
    .line 979
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2

    #@22
    new-instance v1, Ljava/util/PropertyPermission;

    #@24
    .line 980
    const-string/jumbo v3, "user.language"

    #@27
    const-string/jumbo v4, "write"

    #@2a
    .line 979
    invoke-direct {v1, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@30
    .line 981
    :cond_2
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    #@37
    move-result v3

    #@38
    aget v1, v1, v3

    #@3a
    packed-switch v1, :pswitch_data_0

    #@3d
    .line 989
    sget-boolean v1, Ljava/util/Locale;->-assertionsDisabled:Z

    #@3f
    if-nez v1, :cond_3

    #@41
    new-instance v1, Ljava/lang/AssertionError;

    #@43
    const-string/jumbo v3, "Unknown Category"

    #@46
    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@49
    throw v1

    #@4a
    .line 983
    :pswitch_0
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    :cond_3
    :goto_0
    monitor-exit v2

    #@4d
    .line 972
    return-void

    #@4e
    .line 986
    :pswitch_1
    :try_start_2
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 981
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 2
    .param p0, "newLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    const-class v1, Ljava/util/Locale;

    #@2
    monitor-enter v1

    #@3
    .line 937
    :try_start_0
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@5
    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    #@8
    .line 938
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@a
    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    #@d
    .line 939
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    #@f
    .line 940
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 936
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2134
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 2135
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "language"

    #@7
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@9
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 2136
    const-string/jumbo v1, "script"

    #@13
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@15
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 2137
    const-string/jumbo v1, "country"

    #@1f
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@21
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@28
    .line 2138
    const-string/jumbo v1, "variant"

    #@2b
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2d
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    .line 2139
    const-string/jumbo v2, "extensions"

    #@37
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@39
    if-nez v1, :cond_0

    #@3b
    const-string/jumbo v1, ""

    #@3e
    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@41
    .line 2140
    const-string/jumbo v1, "hashcode"

    #@44
    const/4 v2, -0x1

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@48
    .line 2141
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@4b
    .line 2133
    return-void

    #@4c
    .line 2139
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@4e
    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 1971
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1972
    .local v1, "that":Ljava/util/Locale;
    return-object v1

    #@7
    .line 1973
    .end local v1    # "that":Ljava/util/Locale;
    :catch_0
    move-exception v0

    #@8
    .line 1974
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@a
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@d
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2007
    if-ne p0, p1, :cond_0

    #@4
    .line 2008
    return v2

    #@5
    .line 2009
    :cond_0
    instance-of v1, p1, Ljava/util/Locale;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 2010
    return v3

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 2011
    check-cast v1, Ljava/util/Locale;

    #@d
    iget-object v0, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@f
    .line 2012
    .local v0, "otherBase":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@11
    invoke-virtual {v1, v0}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_2

    #@17
    .line 2013
    return v3

    #@18
    .line 2015
    :cond_2
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@1a
    if-nez v1, :cond_4

    #@1c
    .line 2016
    check-cast p1, Ljava/util/Locale;

    #@1e
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@20
    if-nez v1, :cond_3

    #@22
    move v1, v2

    #@23
    :goto_0
    return v1

    #@24
    :cond_3
    move v1, v3

    #@25
    goto :goto_0

    #@26
    .line 2018
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@28
    check-cast p1, Ljava/util/Locale;

    #@2a
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@2c
    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method getBaseLocale()Lsun/util/locale/BaseLocale;
    .locals 1

    #@0
    .prologue
    .line 1194
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1086
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1723
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1731
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1732
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1733
    const-string/jumbo v3, ""

    #@f
    return-object v3

    #@10
    .line 1737
    :cond_0
    const/4 v3, 0x0

    #@11
    .line 1736
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1738
    .local v1, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 1739
    return-object v0

    #@1c
    .line 1742
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 1743
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2

    #@22
    .line 1744
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@25
    move-result-object v3

    #@26
    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 1746
    :cond_2
    return-object v2
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1608
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1616
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1617
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1618
    const-string/jumbo v3, ""

    #@f
    return-object v3

    #@10
    .line 1629
    :cond_0
    const/4 v3, 0x0

    #@11
    .line 1628
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1630
    .local v1, "normalizedLanguage":Ljava/lang/String;
    const-string/jumbo v3, "und"

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 1631
    return-object v0

    #@1f
    .line 1636
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1637
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2

    #@25
    .line 1638
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@28
    move-result-object v3

    #@29
    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 1640
    :cond_2
    return-object v2
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1900
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 13
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    .line 1920
    const/4 v1, 0x0

    #@3
    .line 1921
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 1922
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@a
    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    .line 1923
    .local v7, "languageCode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@11
    move-result v10

    #@12
    if-nez v10, :cond_0

    #@14
    .line 1924
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 1925
    .local v4, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@1b
    move-result v10

    #@1c
    if-eqz v10, :cond_8

    #@1e
    .end local v7    # "languageCode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1926
    const/4 v1, 0x1

    #@22
    .line 1928
    .end local v4    # "displayLanguage":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@24
    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    .line 1929
    .local v8, "scriptCode":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    #@2b
    move-result v10

    #@2c
    if-nez v10, :cond_2

    #@2e
    .line 1930
    if-ne v1, v11, :cond_1

    #@30
    .line 1931
    const-string/jumbo v10, " ("

    #@33
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1933
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 1934
    .local v5, "displayScript":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_9

    #@40
    .end local v8    # "scriptCode":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 1935
    add-int/lit8 v1, v1, 0x1

    #@45
    .line 1937
    .end local v5    # "displayScript":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@47
    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    .line 1938
    .local v2, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@4e
    move-result v10

    #@4f
    if-nez v10, :cond_4

    #@51
    .line 1939
    if-ne v1, v11, :cond_a

    #@53
    .line 1940
    const-string/jumbo v10, " ("

    #@56
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 1944
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 1945
    .local v3, "displayCountry":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@60
    move-result v10

    #@61
    if-eqz v10, :cond_b

    #@63
    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 1946
    add-int/lit8 v1, v1, 0x1

    #@68
    .line 1948
    .end local v3    # "displayCountry":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@6a
    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    .line 1949
    .local v9, "variantCode":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@71
    move-result v10

    #@72
    if-nez v10, :cond_6

    #@74
    .line 1950
    if-ne v1, v11, :cond_c

    #@76
    .line 1951
    const-string/jumbo v10, " ("

    #@79
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 1955
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    .line 1956
    .local v6, "displayVariant":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@83
    move-result v10

    #@84
    if-eqz v10, :cond_e

    #@86
    .end local v9    # "variantCode":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 1957
    add-int/lit8 v1, v1, 0x1

    #@8b
    .line 1959
    .end local v6    # "displayVariant":Ljava/lang/String;
    :cond_6
    if-le v1, v11, :cond_7

    #@8d
    .line 1960
    const-string/jumbo v10, ")"

    #@90
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 1962
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    return-object v10

    #@98
    .restart local v4    # "displayLanguage":Ljava/lang/String;
    .restart local v7    # "languageCode":Ljava/lang/String;
    :cond_8
    move-object v7, v4

    #@99
    .line 1925
    goto :goto_0

    #@9a
    .end local v4    # "displayLanguage":Ljava/lang/String;
    .end local v7    # "languageCode":Ljava/lang/String;
    .restart local v5    # "displayScript":Ljava/lang/String;
    .restart local v8    # "scriptCode":Ljava/lang/String;
    :cond_9
    move-object v8, v5

    #@9b
    .line 1934
    goto :goto_1

    #@9c
    .line 1941
    .end local v5    # "displayScript":Ljava/lang/String;
    .end local v8    # "scriptCode":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    :cond_a
    if-ne v1, v12, :cond_3

    #@9e
    .line 1942
    const-string/jumbo v10, ","

    #@a1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    goto :goto_2

    #@a5
    .restart local v3    # "displayCountry":Ljava/lang/String;
    :cond_b
    move-object v2, v3

    #@a6
    .line 1945
    goto :goto_3

    #@a7
    .line 1952
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "displayCountry":Ljava/lang/String;
    .restart local v9    # "variantCode":Ljava/lang/String;
    :cond_c
    if-eq v1, v12, :cond_d

    #@a9
    const/4 v10, 0x3

    #@aa
    if-ne v1, v10, :cond_5

    #@ac
    .line 1953
    :cond_d
    const-string/jumbo v10, ","

    #@af
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_4

    #@b3
    .restart local v6    # "displayVariant":Ljava/lang/String;
    :cond_e
    move-object v9, v6

    #@b4
    .line 1956
    goto :goto_5
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1685
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
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1696
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1697
    .local v1, "scriptCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1698
    const-string/jumbo v2, ""

    #@f
    return-object v2

    #@10
    .line 1701
    :cond_0
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1702
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    .line 1703
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 1706
    :cond_1
    return-object v0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1808
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1819
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1820
    .local v2, "variantCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1821
    const-string/jumbo v3, ""

    #@f
    return-object v3

    #@10
    .line 1825
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1830
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1831
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    #@19
    .line 1832
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 1839
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 1840
    return-object v2

    #@28
    .line 1826
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@29
    .line 1827
    .local v0, "ilfe":Ljava/util/IllformedLocaleException;
    return-object v2

    #@2a
    .line 1842
    .end local v0    # "ilfe":Ljava/util/IllformedLocaleException;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1115
    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Ill-formed extension key: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1118
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@23
    if-nez v1, :cond_1

    #@25
    :goto_0
    return-object v0

    #@26
    :cond_1
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@28
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    goto :goto_0
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
    .line 1131
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1132
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1134
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@b
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 1578
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1580
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x3

    #@b
    if-ne v2, v3, :cond_0

    #@d
    .line 1581
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@f
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 1582
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1583
    const-string/jumbo v2, ""

    #@1d
    return-object v2

    #@1e
    .line 1587
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "en-"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 1588
    .local v0, "country3":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_2

    #@3c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_2

    #@42
    .line 1589
    new-instance v2, Ljava/util/MissingResourceException;

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Couldn\'t find 3-letter country code for "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 1590
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@52
    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    .line 1589
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 1590
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "FormatData_"

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    const-string/jumbo v5, "ShortCountry"

    #@79
    .line 1589
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    throw v2

    #@7d
    .line 1592
    :cond_2
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 1547
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1548
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x3

    #@b
    if-ne v2, v3, :cond_0

    #@d
    .line 1549
    return-object v0

    #@e
    .line 1550
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1551
    const-string/jumbo v2, ""

    #@17
    return-object v2

    #@18
    .line 1554
    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1555
    .local v1, "language3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1556
    new-instance v2, Ljava/util/MissingResourceException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Couldn\'t find 3-letter language code for "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 1557
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "FormatData_"

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    const-string/jumbo v5, "ShortLanguage"

    #@59
    .line 1556
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 1560
    :cond_2
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1060
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .locals 1

    #@0
    .prologue
    .line 1204
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
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
    .line 1146
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1147
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1149
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@b
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
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
    .line 1182
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1185
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@b
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1167
    invoke-static {p1}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Ill-formed Unicode locale key: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1170
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@23
    if-nez v1, :cond_1

    #@25
    :goto_0
    return-object v0

    #@26
    :cond_1
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@28
    invoke-virtual {v0, p1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    goto :goto_0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1985
    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    #@2
    .line 1986
    .local v0, "hc":I
    if-nez v0, :cond_1

    #@4
    .line 1987
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@6
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 1988
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1989
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@10
    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    #@13
    move-result v1

    #@14
    xor-int/2addr v0, v1

    #@15
    .line 1991
    :cond_0
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    #@17
    .line 1993
    :cond_1
    return v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 1351
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2
    iget-object v7, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@4
    invoke-static {v6, v7}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    #@7
    move-result-object v5

    #@8
    .line 1352
    .local v5, "tag":Lsun/util/locale/LanguageTag;
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 1354
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 1355
    .local v3, "subtag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@14
    move-result v6

    #@15
    if-lez v6, :cond_0

    #@17
    .line 1356
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1359
    :cond_0
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1360
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@25
    move-result v6

    #@26
    if-lez v6, :cond_1

    #@28
    .line 1361
    const-string/jumbo v6, "-"

    #@2b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 1362
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 1365
    :cond_1
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 1366
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3c
    move-result v6

    #@3d
    if-lez v6, :cond_2

    #@3f
    .line 1367
    const-string/jumbo v6, "-"

    #@42
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1368
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 1371
    :cond_2
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    #@4f
    move-result-object v4

    #@50
    .line 1372
    .local v4, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v2

    #@54
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_3

    #@5a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Ljava/lang/String;

    #@60
    .line 1373
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v6, "-"

    #@63
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    goto :goto_0

    #@6a
    .line 1378
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    #@6d
    move-result-object v4

    #@6e
    .line 1379
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v2

    #@72
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v6

    #@76
    if-eqz v6, :cond_4

    #@78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v1

    #@7c
    check-cast v1, Ljava/lang/String;

    #@7e
    .line 1380
    .restart local v1    # "s":Ljava/lang/String;
    const-string/jumbo v6, "-"

    #@81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 1381
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_1

    #@8c
    .line 1384
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 1385
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@93
    move-result v6

    #@94
    if-lez v6, :cond_6

    #@96
    .line 1386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@99
    move-result v6

    #@9a
    if-lez v6, :cond_5

    #@9c
    .line 1387
    const-string/jumbo v6, "-"

    #@9f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 1389
    :cond_5
    const-string/jumbo v6, "x"

    #@a5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v6

    #@a9
    const-string/jumbo v7, "-"

    #@ac
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 1391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    .line 1394
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x5f

    #@2
    .line 1251
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@4
    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_9

    #@e
    const/4 v1, 0x1

    #@f
    .line 1252
    .local v1, "l":Z
    :goto_0
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@11
    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_a

    #@1b
    const/4 v4, 0x1

    #@1c
    .line 1253
    .local v4, "s":Z
    :goto_1
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@1e
    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_b

    #@28
    const/4 v2, 0x1

    #@29
    .line 1254
    .local v2, "r":Z
    :goto_2
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@2b
    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_c

    #@35
    const/4 v5, 0x1

    #@36
    .line 1255
    .local v5, "v":Z
    :goto_3
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@38
    if-eqz v6, :cond_d

    #@3a
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@3c
    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_d

    #@46
    const/4 v0, 0x1

    #@47
    .line 1257
    .local v0, "e":Z
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@4b
    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@52
    .line 1258
    .local v3, "result":Ljava/lang/StringBuilder;
    if-nez v2, :cond_0

    #@54
    if-eqz v1, :cond_1

    #@56
    if-nez v5, :cond_0

    #@58
    if-nez v4, :cond_0

    #@5a
    if-eqz v0, :cond_1

    #@5c
    .line 1259
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    .line 1260
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@62
    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 1259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 1262
    :cond_1
    if-eqz v5, :cond_3

    #@6b
    if-nez v1, :cond_2

    #@6d
    if-eqz v2, :cond_3

    #@6f
    .line 1263
    :cond_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    .line 1264
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@75
    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 1263
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 1267
    :cond_3
    if-eqz v4, :cond_5

    #@7e
    if-nez v1, :cond_4

    #@80
    if-eqz v2, :cond_5

    #@82
    .line 1268
    :cond_4
    const-string/jumbo v6, "_#"

    #@85
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 1269
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    #@8b
    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    .line 1268
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 1272
    :cond_5
    if-eqz v0, :cond_8

    #@94
    if-nez v1, :cond_6

    #@96
    if-eqz v2, :cond_8

    #@98
    .line 1273
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9b
    .line 1274
    if-nez v4, :cond_7

    #@9d
    .line 1275
    const/16 v6, 0x23

    #@9f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a2
    .line 1277
    :cond_7
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    #@a4
    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    .line 1280
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v6

    #@af
    return-object v6

    #@b0
    .line 1251
    .end local v0    # "e":Z
    .end local v1    # "l":Z
    .end local v2    # "r":Z
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "s":Z
    .end local v5    # "v":Z
    :cond_9
    const/4 v1, 0x0

    #@b1
    .restart local v1    # "l":Z
    goto/16 :goto_0

    #@b3
    .line 1252
    :cond_a
    const/4 v4, 0x0

    #@b4
    .restart local v4    # "s":Z
    goto/16 :goto_1

    #@b6
    .line 1253
    :cond_b
    const/4 v2, 0x0

    #@b7
    .restart local v2    # "r":Z
    goto/16 :goto_2

    #@b9
    .line 1254
    :cond_c
    const/4 v5, 0x0

    #@ba
    .restart local v5    # "v":Z
    goto/16 :goto_3

    #@bc
    .line 1255
    :cond_d
    const/4 v0, 0x0

    #@bd
    .restart local v0    # "e":Z
    goto :goto_4
.end method
