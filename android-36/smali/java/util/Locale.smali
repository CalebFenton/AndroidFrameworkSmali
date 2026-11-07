.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$Cache;,
        Ljava/util/Locale$LocaleKey;,
        Ljava/util/Locale$NoImagePreloadHolder;,
        Ljava/util/Locale$Category;,
        Ljava/util/Locale$IsoCountryCode;,
        Ljava/util/Locale$FilteringMode;,
        Ljava/util/Locale$LanguageRange;,
        Ljava/util/Locale$Builder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api CANADA:Ljava/util/Locale;

.field public static final whitelist test-api CANADA_FRENCH:Ljava/util/Locale;

.field public static final whitelist test-api CHINA:Ljava/util/Locale;

.field public static final whitelist test-api CHINESE:Ljava/util/Locale;

.field private static final blacklist CONSTANT_LOCALES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/util/locale/BaseLocale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DISPLAY_COUNTRY:I = 0x1

.field private static final greylist-max-o DISPLAY_LANGUAGE:I = 0x0

.field private static final greylist-max-o DISPLAY_SCRIPT:I = 0x3

.field private static final blacklist DISPLAY_UEXT_KEY:I = 0x4

.field private static final blacklist DISPLAY_UEXT_TYPE:I = 0x5

.field private static final greylist-max-o DISPLAY_VARIANT:I = 0x2

.field public static final whitelist test-api ENGLISH:Ljava/util/Locale;

.field public static final whitelist test-api FRANCE:Ljava/util/Locale;

.field public static final whitelist test-api FRENCH:Ljava/util/Locale;

.field public static final whitelist test-api GERMAN:Ljava/util/Locale;

.field public static final whitelist test-api GERMANY:Ljava/util/Locale;

.field public static final whitelist test-api ITALIAN:Ljava/util/Locale;

.field public static final whitelist test-api ITALY:Ljava/util/Locale;

.field public static final whitelist test-api JAPAN:Ljava/util/Locale;

.field public static final whitelist test-api JAPANESE:Ljava/util/Locale;

.field public static final whitelist test-api KOREA:Ljava/util/Locale;

.field public static final whitelist test-api KOREAN:Ljava/util/Locale;

.field public static final whitelist test-api PRC:Ljava/util/Locale;

.field public static final whitelist test-api PRIVATE_USE_EXTENSION:C = 'x'

.field public static final whitelist test-api ROOT:Ljava/util/Locale;

.field public static final whitelist test-api SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final whitelist test-api TAIWAN:Ljava/util/Locale;

.field public static final whitelist test-api TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final whitelist test-api UK:Ljava/util/Locale;

.field private static final greylist-max-o UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final whitelist test-api UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final whitelist test-api US:Ljava/util/Locale;

.field private static volatile greylist-max-o defaultDisplayLocale:Ljava/util/Locale; = null

.field private static volatile greylist-max-o defaultFormatLocale:Ljava/util/Locale; = null

.field private static volatile greylist-max-o isoCountries:[Ljava/lang/String; = null

.field private static volatile greylist-max-o isoLanguages:[Ljava/lang/String; = null

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient greylist-max-o baseLocale:Lsun/util/locale/BaseLocale;

.field private transient greylist-max-o hashCodeValue:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private volatile transient greylist-max-o languageTag:Ljava/lang/String;

.field private transient greylist-max-o localeExtensions:Lsun/util/locale/LocaleExtensions;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseLocale(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;
    .registers 1

    iget-object p0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlocaleExtensions(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;
    .registers 1

    iget-object p0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 565
    nop

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/Locale;->CONSTANT_LOCALES:Ljava/util/Map;

    .line 652
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 653
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 654
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v3

    sput-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 655
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 656
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v5

    sput-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 657
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v6

    sput-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 658
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 659
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 660
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 661
    const/16 v7, 0x9

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 662
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 663
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 664
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 665
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 666
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 667
    const/16 v7, 0xf

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 668
    const/16 v7, 0x10

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 669
    const/16 v7, 0x11

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 670
    const/16 v7, 0x12

    invoke-static {v7}, Ljava/util/Locale;->createConstant(B)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 675
    sget-object v7, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 679
    sget-object v7, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v7, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 683
    sget-object v7, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v7, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 2949
    new-array v6, v6, [Ljava/io/ObjectStreamField;

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "language"

    const-class v9, Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v6, v0

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v7, "country"

    const-class v8, Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v6, v1

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "variant"

    const-class v7, Ljava/lang/String;

    invoke-direct {v0, v1, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v6, v2

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "hashcode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v6, v3

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "script"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v6, v4

    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "extensions"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v6, v5

    sput-object v6, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        since = "19"
    .end annotation

    .line 889
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        since = "19"
    .end annotation

    .line 863
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
        since = "19"
    .end annotation

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    if-eqz p3, :cond_1c

    .line 834
    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 835
    invoke-static {p1, v1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 836
    return-void

    .line 832
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .registers 3
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 799
    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 800
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method public static whitelist test-api availableLocales()Ljava/util/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1374
    invoke-static {}, Llibcore/icu/ICU;->streamAvailableLocales()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist cleanCache()V
    .registers 1

    .line 1023
    invoke-static {}, Ljava/util/Locale$Cache;->-$$Nest$sfgetLOCALECACHE()Ljava/util/Locale$Cache;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Cache;->cleanStaleEntries()V

    .line 1024
    return-void
.end method

.method private static greylist-max-o convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .line 3037
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/locale/BaseLocale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createConstant(B)Ljava/util/Locale;
    .registers 4
    .param p0, "baseType"    # B

    .line 693
    sget-object v0, Lsun/util/locale/BaseLocale;->constantBaseLocales:[Lsun/util/locale/BaseLocale;

    aget-object v0, v0, p0

    .line 694
    .local v0, "base":Lsun/util/locale/BaseLocale;
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    .line 695
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Ljava/util/Locale;->CONSTANT_LOCALES:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-object v1
.end method

.method public static whitelist test-api filter(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 4046
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 4
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 4021
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api filterTags(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4115
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 4
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4082
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .registers 9
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 2031
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v0

    .line 2032
    .local v0, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 2033
    .local v1, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v0}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2034
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v2

    .line 2035
    .local v2, "base":Lsun/util/locale/BaseLocale;
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v3

    .line 2036
    .local v3, "exts":Lsun/util/locale/LocaleExtensions;
    if-nez v3, :cond_35

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_35

    .line 2037
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 2038
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 2037
    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v3

    .line 2040
    :cond_35
    invoke-static {v2, v3}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist formatList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "stringList"    # [Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 2899
    if-nez p1, :cond_9

    .line 2900
    const-string v0, ","

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2903
    :cond_9
    array-length v0, p0

    const-string v1, ""

    packed-switch v0, :pswitch_data_26

    .line 2906
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Ljava/util/Locale$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Ljava/util/Locale$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_25

    .line 2905
    :pswitch_20
    const/4 v0, 0x0

    aget-object v1, p0, v0

    goto :goto_25

    .line 2904
    :pswitch_24
    nop

    .line 2903
    :goto_25
    return-object v1

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 1356
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .registers 7
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 3044
    const/4 v0, 0x0

    .line 3046
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    const-string v1, "ja"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3047
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3048
    const-string v1, "jp"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3049
    const-string v1, "JP"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3051
    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    goto :goto_40

    .line 3052
    :cond_22
    const-string v1, "th"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3053
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3054
    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3055
    const-string v1, "TH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3057
    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    .line 3059
    :cond_40
    :goto_40
    return-object v0
.end method

.method public static whitelist test-api getDefault()Ljava/util/Locale;
    .registers 1

    .line 1101
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static whitelist test-api getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .registers 2
    .param p0, "category"    # Ljava/util/Locale$Category;

    .line 1122
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    if-ne p0, v0, :cond_10

    .line 1124
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 1125
    .local v0, "loc":Ljava/util/Locale;
    if-nez v0, :cond_f

    .line 1126
    invoke-static {}, Ljava/util/Locale;->getDisplayLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1128
    :cond_f
    return-object v0

    .line 1130
    .end local v0    # "loc":Ljava/util/Locale;
    :cond_10
    nop

    .line 1131
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 1132
    .restart local v0    # "loc":Ljava/util/Locale;
    if-nez v0, :cond_19

    .line 1133
    invoke-static {}, Ljava/util/Locale;->getFormatLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1135
    :cond_19
    return-object v0
.end method

.method private static blacklist getDefaultExtensions(Ljava/lang/String;)Ljava/util/Optional;
    .registers 3
    .param p0, "extensionsProp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lsun/util/locale/LocaleExtensions;",
            ">;"
        }
    .end annotation

    .line 1239
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1240
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 1243
    :cond_b
    const/4 v0, 0x0

    .line 1245
    .local v0, "exts":Lsun/util/locale/LocaleExtensions;
    :try_start_c
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 1246
    invoke-virtual {v1, p0}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    move-result-object v1

    .line 1247
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v1
    :try_end_19
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_c .. :try_end_19} :catch_1b

    move-object v0, v1

    .line 1250
    goto :goto_1c

    .line 1248
    :catch_1b
    move-exception v1

    .line 1252
    :goto_1c
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized blacklist getDisplayLocale()Ljava/util/Locale;
    .registers 3

    const-class v0, Ljava/util/Locale;

    monitor-enter v0

    .line 1140
    :try_start_3
    sget-object v1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 1141
    .local v1, "loc":Ljava/util/Locale;
    if-nez v1, :cond_10

    .line 1142
    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-object v1, v2

    .line 1144
    :cond_10
    monitor-exit v0

    return-object v1

    .line 1139
    .end local v1    # "loc":Ljava/util/Locale;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static declared-synchronized blacklist getFormatLocale()Ljava/util/Locale;
    .registers 3

    const-class v0, Ljava/util/Locale;

    monitor-enter v0

    .line 1149
    :try_start_3
    sget-object v1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 1150
    .local v1, "loc":Ljava/util/Locale;
    if-nez v1, :cond_10

    .line 1151
    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-object v1, v2

    .line 1153
    :cond_10
    monitor-exit v0

    return-object v1

    .line 1148
    .end local v1    # "loc":Ljava/util/Locale;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static whitelist test-api getISOCountries(Ljava/util/Locale$IsoCountryCode;)Ljava/util/Set;
    .registers 2
    .param p0, "type"    # Ljava/util/Locale$IsoCountryCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale$IsoCountryCode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1416
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    invoke-static {p0}, Ljava/util/Locale$IsoCountryCode;->retrieveISOCountryCodes(Ljava/util/Locale$IsoCountryCode;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getISOCountries()[Ljava/lang/String;
    .registers 1

    .line 1404
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getISOLanguages()[Ljava/lang/String;
    .registers 1

    .line 1448
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 984
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .registers 7
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 989
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_1b

    .line 993
    if-nez p4, :cond_e

    .line 994
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p4

    .line 997
    :cond_e
    invoke-static {p0}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 998
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 990
    .end local v0    # "baseloc":Lsun/util/locale/BaseLocale;
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .registers 4
    .param p0, "baseloc"    # Lsun/util/locale/BaseLocale;
    .param p1, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 1002
    if-nez p1, :cond_18

    .line 1003
    sget-object v0, Ljava/util/Locale;->CONSTANT_LOCALES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1004
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_d

    .line 1005
    return-object v0

    .line 1007
    :cond_d
    invoke-static {}, Ljava/util/Locale$Cache;->-$$Nest$sfgetLOCALECACHE()Ljava/util/Locale$Cache;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1

    .line 1009
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_18
    new-instance v0, Ljava/util/Locale$LocaleKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale-IA;)V

    .line 1010
    .local v0, "key":Ljava/util/Locale$LocaleKey;
    invoke-static {}, Ljava/util/Locale$Cache;->-$$Nest$sfgetLOCALECACHE()Ljava/util/Locale$Cache;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static greylist-max-o initDefault()Ljava/util/Locale;
    .registers 8

    .line 1164
    const-string v0, "user.locale"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "languageTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1166
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 1178
    :cond_13
    const-string v2, "user.language"

    const-string v3, "en"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1180
    .local v2, "language":Ljava/lang/String;
    const-string v3, "user.region"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "region":Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 1183
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1184
    .local v4, "i":I
    if-ltz v4, :cond_37

    .line 1185
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1186
    .local v5, "country":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "variant":Ljava/lang/String;
    goto :goto_3a

    .line 1188
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    :cond_37
    move-object v5, v3

    .line 1189
    .restart local v5    # "country":Ljava/lang/String;
    const-string v6, ""

    .line 1191
    .restart local v6    # "variant":Ljava/lang/String;
    :goto_3a
    const-string v4, ""

    .line 1192
    .local v4, "script":Ljava/lang/String;
    goto :goto_4f

    .line 1196
    .end local v4    # "script":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    :cond_3d
    const-string v4, "user.script"

    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1197
    .restart local v4    # "script":Ljava/lang/String;
    const-string v5, "user.country"

    invoke-static {v5, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1198
    .restart local v5    # "country":Ljava/lang/String;
    const-string v6, "user.variant"

    invoke-static {v6, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1203
    .restart local v6    # "variant":Ljava/lang/String;
    :goto_4f
    const-string v7, "user.extensions"

    invoke-static {v7, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->getDefaultExtensions(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    .line 1204
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/LocaleExtensions;

    .line 1205
    .local v1, "extension":Lsun/util/locale/LocaleExtensions;
    invoke-static {v2, v4, v5, v6, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v7

    return-object v7
.end method

.method private static greylist-max-o initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .registers 7
    .param p0, "category"    # Ljava/util/Locale$Category;

    .line 1211
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 1229
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    .line 1230
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    .line 1231
    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    .line 1232
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    .line 1233
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1229
    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o isAsciiAlphaNum(Ljava/lang/String;)Z
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 2239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 2240
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2241
    .local v1, "character":C
    const/16 v2, 0x61

    if-lt v1, v2, :cond_13

    const/16 v2, 0x7a

    if-le v1, v2, :cond_24

    :cond_13
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v1, v2, :cond_24

    :cond_1b
    const/16 v2, 0x30

    if-lt v1, v2, :cond_27

    const/16 v2, 0x39

    if-le v1, v2, :cond_24

    goto :goto_27

    .line 2239
    .end local v1    # "character":C
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2244
    .restart local v1    # "character":C
    :cond_27
    :goto_27
    const/4 v2, 0x0

    return v2

    .line 2248
    .end local v0    # "i":I
    .end local v1    # "character":C
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isUnM49AreaCode(Ljava/lang/String;)Z
    .registers 6
    .param p0, "code"    # Ljava/lang/String;

    .line 2421
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 2422
    return v1

    .line 2425
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_1d

    .line 2426
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2427
    .local v3, "character":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x39

    if-le v3, v4, :cond_19

    goto :goto_1c

    .line 2425
    .end local v3    # "character":C
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2428
    .restart local v3    # "character":C
    :cond_1c
    :goto_1c
    return v1

    .line 2432
    .end local v0    # "i":I
    .end local v3    # "character":C
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isUnicodeExtensionKey(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 2923
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static greylist-max-o isValidBcp47Alpha(Ljava/lang/String;II)Z
    .registers 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .line 2401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2402
    .local v0, "length":I
    const/4 v1, 0x0

    if-lt v0, p1, :cond_28

    if-le v0, p2, :cond_a

    goto :goto_28

    .line 2406
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_26

    .line 2407
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2408
    .local v3, "character":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_19

    const/16 v4, 0x7a

    if-le v3, v4, :cond_22

    :cond_19
    const/16 v4, 0x41

    if-lt v3, v4, :cond_25

    const/16 v4, 0x5a

    if-le v3, v4, :cond_22

    goto :goto_25

    .line 2406
    .end local v3    # "character":C
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2410
    .restart local v3    # "character":C
    :cond_25
    :goto_25
    return v1

    .line 2414
    .end local v2    # "i":I
    .end local v3    # "character":C
    :cond_26
    const/4 v1, 0x1

    return v1

    .line 2403
    :cond_28
    :goto_28
    return v1
.end method

.method private static greylist-max-o isValidVariantSubtag(Ljava/lang/String;)Z
    .registers 5
    .param p0, "subTag"    # Ljava/lang/String;

    .line 2525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_18

    .line 2526
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2527
    return v2

    .line 2529
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 2530
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2531
    .local v0, "firstChar":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_32

    const/16 v1, 0x39

    if-gt v0, v1, :cond_32

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2532
    return v2

    .line 2536
    .end local v0    # "firstChar":C
    :cond_32
    return v3
.end method

.method static synthetic blacklist lambda$formatList$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 2908
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2909
    return-object p2

    .line 2911
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2912
    return-object p1

    .line 2914
    :cond_e
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 4134
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4156
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 2219
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_36

    .line 2223
    :cond_9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2224
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2225
    if-nez p1, :cond_1c

    .line 2228
    const-string v1, "und"

    return-object v1

    .line 2226
    :cond_1c
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2232
    :cond_35
    return-object v0

    .line 2220
    .end local v0    # "lowercaseLanguage":Ljava/lang/String;
    :cond_36
    :goto_36
    const-string v0, ""

    return-object v0
.end method

.method private static greylist-max-o normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 2383
    const-string v0, ""

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3b

    .line 2387
    :cond_b
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2388
    .local v1, "uppercaseRegion":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v1, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2389
    invoke-static {v1}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2390
    if-nez p1, :cond_21

    .line 2393
    return-object v0

    .line 2391
    :cond_21
    new-instance v0, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2397
    :cond_3a
    return-object v1

    .line 2384
    .end local v1    # "uppercaseRegion":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method private static greylist-max-o normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "variant"    # Ljava/lang/String;

    .line 2503
    if-eqz p0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_40

    .line 2509
    :cond_9
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2510
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2512
    .local v1, "subTags":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_3f

    aget-object v4, v1, v3

    .line 2513
    .local v4, "subTag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2512
    .end local v4    # "subTag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2514
    .restart local v4    # "subTag":Ljava/lang/String;
    :cond_26
    new-instance v2, Ljava/util/IllformedLocaleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid variant: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2518
    .end local v4    # "subTag":Ljava/lang/String;
    :cond_3f
    return-object v0

    .line 2504
    .end local v0    # "normalizedVariant":Ljava/lang/String;
    .end local v1    # "subTags":[Ljava/lang/String;
    :cond_40
    :goto_40
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .param p0, "language"    # Ljava/lang/String;

    .line 966
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v0, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .line 944
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 919
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2986
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 2987
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2988
    .local v1, "language":Ljava/lang/String;
    const-string v3, "script"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2989
    .local v3, "script":Ljava/lang/String;
    const-string v4, "country"

    invoke-virtual {v0, v4, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2990
    .local v4, "country":Ljava/lang/String;
    const-string v5, "variant"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2991
    .local v5, "variant":Ljava/lang/String;
    const-string v6, "extensions"

    invoke-virtual {v0, v6, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2993
    .local v2, "extStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v6

    iput-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2996
    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 2998
    :try_start_40
    new-instance v6, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v6}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 2999
    .local v6, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v6, v2}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 3000
    invoke-virtual {v6}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_4e
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_40 .. :try_end_4e} :catch_4f

    .line 3003
    .end local v6    # "bldr":Lsun/util/locale/InternalLocaleBuilder;
    goto :goto_5d

    .line 3001
    :catch_4f
    move-exception v6

    .line 3002
    .local v6, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v7, Ljava/util/IllformedLocaleException;

    invoke-virtual {v6}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3005
    .end local v6    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_5a
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 3007
    :goto_5d
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 3025
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 3026
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 3025
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .registers 7
    .param p0, "category"    # Ljava/util/Locale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    const-class v0, Ljava/util/Locale;

    monitor-enter v0

    .line 1322
    if-eqz p0, :cond_31

    .line 1324
    if-eqz p1, :cond_29

    .line 1328
    :try_start_7
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1329
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_19

    new-instance v2, Ljava/util/PropertyPermission;

    const-string v3, "user.language"

    const-string v4, "write"

    invoke-direct {v2, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1331
    :cond_19
    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    .line 1339
    goto :goto_27

    .line 1336
    :pswitch_21
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 1337
    goto :goto_27

    .line 1333
    :pswitch_24
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_39

    .line 1334
    nop

    .line 1341
    :goto_27
    monitor-exit v0

    return-void

    .line 1325
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_29
    :try_start_29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can\'t set default locale to NULL"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1323
    :cond_31
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Category cannot be NULL"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1321
    .end local p0    # "category":Ljava/util/Locale$Category;
    .end local p1    # "newLocale":Ljava/util/Locale;
    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_39

    throw p0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljava/util/Locale;)V
    .registers 3
    .param p0, "newLocale"    # Ljava/util/Locale;

    const-class v0, Ljava/util/Locale;

    monitor-enter v0

    .line 1284
    :try_start_3
    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v1, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1285
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1288
    sput-object p0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 1290
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 1291
    monitor-exit v0

    return-void

    .line 1283
    .end local p0    # "newLocale":Ljava/util/Locale;
    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2966
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 2967
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2968
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2969
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2970
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    const-string v2, "variant"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2971
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_37

    const-string v1, ""

    goto :goto_3d

    :cond_37
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v1

    :goto_3d
    const-string v2, "extensions"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2972
    const-string v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 2973
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 2974
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 2757
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 2758
    .local v0, "that":Ljava/util/Locale;
    return-object v0

    .line 2759
    .end local v0    # "that":Ljava/util/Locale;
    :catch_7
    move-exception v0

    .line 2760
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2793
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2794
    return v0

    .line 2795
    :cond_4
    instance-of v1, p1, Ljava/util/Locale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2796
    return v2

    .line 2797
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Locale;

    iget-object v1, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2798
    .local v1, "otherBase":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3, v1}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2799
    return v2

    .line 2801
    :cond_18
    iget-object v3, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_26

    .line 2802
    move-object v3, p1

    check-cast v3, Ljava/util/Locale;

    iget-object v3, v3, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0

    .line 2804
    :cond_26
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    move-object v2, p1

    check-cast v2, Ljava/util/Locale;

    iget-object v2, v2, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getBaseLocale()Lsun/util/locale/BaseLocale;
    .registers 2

    .line 1633
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method public whitelist test-api getCountry()Ljava/lang/String;
    .registers 2

    .line 1501
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDisplayCountry()Ljava/lang/String;
    .registers 2

    .line 2314
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2364
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 2365
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2366
    const-string v1, ""

    return-object v1

    .line 2369
    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2371
    .local v1, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2372
    return-object v0

    .line 2375
    :cond_1b
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2376
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_29

    .line 2377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/icu/util/LocaleNative;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2379
    :cond_29
    return-object v2
.end method

.method public final whitelist test-api getDisplayLanguage()Ljava/lang/String;
    .registers 2

    .line 2159
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2191
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2192
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2193
    const-string v1, ""

    return-object v1

    .line 2203
    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2205
    .local v1, "normalizedLanguage":Ljava/lang/String;
    const-string v2, "und"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2206
    return-object v0

    .line 2211
    :cond_1d
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2212
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2b

    .line 2213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/icu/util/LocaleNative;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2215
    :cond_2b
    return-object v2
.end method

.method public final whitelist test-api getDisplayName()Ljava/lang/String;
    .registers 2

    .line 2562
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 13
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2704
    const/4 v0, 0x0

    .line 2705
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2706
    .local v1, "buffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 2707
    .local v2, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 2708
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2709
    .local v3, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v4, v2

    goto :goto_1f

    :cond_1e
    move-object v4, v3

    :goto_1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    add-int/lit8 v0, v0, 0x1

    .line 2712
    .end local v3    # "displayLanguage":Ljava/lang/String;
    :cond_24
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 2713
    .local v3, "scriptCode":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, " ("

    const/4 v6, 0x1

    if-nez v4, :cond_4a

    .line 2714
    if-ne v0, v6, :cond_38

    .line 2715
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    :cond_38
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2718
    .local v4, "displayScript":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_44

    move-object v7, v3

    goto :goto_45

    :cond_44
    move-object v7, v4

    :goto_45
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    add-int/lit8 v0, v0, 0x1

    .line 2721
    .end local v4    # "displayScript":Ljava/lang/String;
    :cond_4a
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 2722
    .local v4, "countryCode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, ","

    const/4 v9, 0x2

    if-nez v7, :cond_76

    .line 2723
    if-ne v0, v6, :cond_5f

    .line 2724
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 2725
    :cond_5f
    if-ne v0, v9, :cond_64

    .line 2726
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    :cond_64
    :goto_64
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2729
    .local v7, "displayCountry":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_70

    move-object v10, v4

    goto :goto_71

    :cond_70
    move-object v10, v7

    :goto_71
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2730
    add-int/lit8 v0, v0, 0x1

    .line 2732
    .end local v7    # "displayCountry":Ljava/lang/String;
    :cond_76
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 2733
    .local v7, "variantCode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a2

    .line 2734
    if-ne v0, v6, :cond_88

    .line 2735
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 2736
    :cond_88
    if-eq v0, v9, :cond_8d

    const/4 v5, 0x3

    if-ne v0, v5, :cond_90

    .line 2737
    :cond_8d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    :cond_90
    :goto_90
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2740
    .local v5, "displayVariant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9c

    move-object v8, v7

    goto :goto_9d

    :cond_9c
    move-object v8, v5

    :goto_9d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    add-int/lit8 v0, v0, 0x1

    .line 2743
    .end local v5    # "displayVariant":Ljava/lang/String;
    :cond_a2
    if-le v0, v6, :cond_a9

    .line 2744
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    :cond_a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api getDisplayScript()Ljava/lang/String;
    .registers 2

    .line 2263
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "inLocale"    # Ljava/util/Locale;

    .line 2281
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 2282
    .local v0, "scriptCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2283
    const-string v1, ""

    return-object v1

    .line 2286
    :cond_f
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2287
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 2288
    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/icu/util/LocaleNative;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2291
    :cond_1f
    return-object v1
.end method

.method public final whitelist test-api getDisplayVariant()Ljava/lang/String;
    .registers 2

    .line 2445
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "inLocale"    # Ljava/util/Locale;

    .line 2476
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 2477
    .local v0, "variantCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2478
    const-string v1, ""

    return-object v1

    .line 2482
    :cond_f
    :try_start_f
    invoke-static {v0}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/util/IllformedLocaleException; {:try_start_f .. :try_end_12} :catch_29

    .line 2485
    nop

    .line 2487
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2488
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_21

    .line 2489
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/icu/util/LocaleNative;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2496
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2497
    return-object v0

    .line 2499
    :cond_28
    return-object v1

    .line 2483
    .end local v1    # "result":Ljava/lang/String;
    :catch_29
    move-exception v1

    .line 2484
    .local v1, "ilfe":Ljava/util/IllformedLocaleException;
    return-object v0
.end method

.method public whitelist test-api getExtension(C)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # C

    .line 1554
    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1557
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0

    .line 1555
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed extension key: "

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

    .line 1570
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1571
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1573
    :cond_b
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getISO3Country()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 2097
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 2099
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2100
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2101
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2102
    const-string v1, ""

    return-object v1

    .line 2106
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "en-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2107
    .local v1, "country3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_79

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_79

    .line 2109
    :cond_41
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find 3-letter country code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2110
    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortCountry"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 2112
    :cond_79
    :goto_79
    return-object v1
.end method

.method public whitelist test-api getISO3Language()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2059
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 2060
    return-object v0

    .line 2063
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2064
    const-string v1, ""

    return-object v1

    .line 2071
    :cond_17
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2072
    .local v1, "language3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_5a

    .line 2074
    :cond_28
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find 3-letter language code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2075
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortLanguage"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 2077
    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public whitelist test-api getLanguage()Ljava/lang/String;
    .registers 2

    .line 1475
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .registers 2

    .line 1643
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method public whitelist test-api getScript()Ljava/lang/String;
    .registers 2

    .line 1489
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

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

    .line 1585
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1586
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1588
    :cond_b
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

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

    .line 1621
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_9

    .line 1622
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1624
    :cond_9
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1606
    invoke-static {p1}, Ljava/util/Locale;->isUnicodeExtensionKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1609
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, p1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    .line 1607
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale key: "

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

    .line 1511
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hasExtensions()Z
    .registers 2

    .line 1522
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2771
    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2772
    .local v0, "hc":I
    if-nez v0, :cond_17

    .line 2773
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 2774
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_15

    .line 2775
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 2777
    :cond_15
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2779
    :cond_17
    return v0
.end method

.method public whitelist test-api stripExtensions()Ljava/util/Locale;
    .registers 3

    .line 1535
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api toLanguageTag()Ljava/lang/String;
    .registers 9

    .line 1790
    iget-object v0, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    .line 1791
    .local v0, "lTag":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1792
    return-object v0

    .line 1795
    :cond_5
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v1, v2}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    move-result-object v1

    .line 1796
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1798
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1799
    .local v3, "subtag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1800
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    :cond_23
    invoke-virtual {v1}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 1804
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1805
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    :cond_39
    invoke-virtual {v1}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 1810
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 1811
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    :cond_4f
    invoke-virtual {v1}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v4

    .line 1816
    .local v4, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1817
    .local v6, "s":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_57

    .line 1822
    :cond_6c
    invoke-virtual {v1}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v4

    .line 1823
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1824
    .restart local v6    # "s":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-static {v6}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_74

    .line 1828
    :cond_8d
    invoke-virtual {v1}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v3

    .line 1829
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b0

    .line 1830
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a2

    .line 1831
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :cond_a2
    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    :cond_b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1839
    .local v5, "langTag":Ljava/lang/String;
    monitor-enter p0

    .line 1840
    :try_start_b5
    iget-object v6, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-nez v6, :cond_bb

    .line 1841
    iput-object v5, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    .line 1843
    :cond_bb
    monitor-exit p0

    .line 1844
    return-object v5

    .line 1843
    :catchall_bd
    move-exception v6

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_bd

    throw v6
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1690
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1691
    .local v0, "l":Z
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 1692
    .local v2, "s":Z
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 1693
    .local v3, "r":Z
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 1694
    .local v4, "v":Z
    iget-object v5, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v5, :cond_3e

    iget-object v5, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v5}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 1696
    .local v1, "e":Z
    :goto_3f
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1697
    .local v5, "result":Ljava/lang/StringBuilder;
    const/16 v6, 0x5f

    if-nez v3, :cond_56

    if-eqz v0, :cond_63

    if-nez v4, :cond_56

    if-nez v2, :cond_56

    if-eqz v1, :cond_63

    .line 1698
    :cond_56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1699
    invoke-virtual {v8}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    :cond_63
    if-eqz v4, :cond_76

    if-nez v0, :cond_69

    if-eqz v3, :cond_76

    .line 1702
    :cond_69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1703
    invoke-virtual {v8}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    :cond_76
    if-eqz v2, :cond_8b

    if-nez v0, :cond_7c

    if-eqz v3, :cond_8b

    .line 1707
    :cond_7c
    const-string v7, "_#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1708
    invoke-virtual {v8}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    :cond_8b
    if-eqz v1, :cond_a4

    if-nez v0, :cond_91

    if-eqz v3, :cond_a4

    .line 1712
    :cond_91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1713
    if-nez v2, :cond_9b

    .line 1714
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1716
    :cond_9b
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    :cond_a4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
