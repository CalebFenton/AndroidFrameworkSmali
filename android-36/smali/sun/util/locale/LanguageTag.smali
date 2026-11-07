.class public Lsun/util/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field private static final blacklist LEGACY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final blacklist PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final blacklist SEP:Ljava/lang/String; = "-"

.field public static final blacklist UNDETERMINED:Ljava/lang/String; = "und"


# instance fields
.field private greylist-max-o extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o language:Ljava/lang/String;

.field private greylist-max-o privateuse:Ljava/lang/String;

.field private greylist-max-o region:Ljava/lang/String;

.field private greylist-max-o script:Ljava/lang/String;

.field private greylist-max-o variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    .line 100
    const/16 v0, 0x1a

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "art-lojban"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "jbo"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "cel-gaulish"

    aput-object v3, v2, v4

    const-string v3, "xtg-x-cel-gaulish"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "en-GB-oed"

    aput-object v3, v2, v4

    const-string v3, "en-GB-x-oed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "i-ami"

    aput-object v3, v2, v4

    const-string v3, "ami"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "i-bnn"

    aput-object v3, v2, v4

    const-string v3, "bnn"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "i-default"

    aput-object v3, v2, v4

    const-string v3, "en-x-i-default"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "i-enochian"

    aput-object v3, v2, v4

    const-string v3, "und-x-i-enochian"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "i-hak"

    aput-object v3, v2, v4

    const-string v3, "hak"

    aput-object v3, v2, v5

    const/4 v6, 0x7

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-klingon"

    aput-object v6, v2, v4

    const-string v6, "tlh"

    aput-object v6, v2, v5

    const/16 v6, 0x8

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-lux"

    aput-object v6, v2, v4

    const-string v6, "lb"

    aput-object v6, v2, v5

    const/16 v6, 0x9

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-mingo"

    aput-object v6, v2, v4

    const-string v6, "see-x-i-mingo"

    aput-object v6, v2, v5

    const/16 v6, 0xa

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-navajo"

    aput-object v6, v2, v4

    const-string v6, "nv"

    aput-object v6, v2, v5

    const/16 v6, 0xb

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-pwn"

    aput-object v6, v2, v4

    const-string v6, "pwn"

    aput-object v6, v2, v5

    const/16 v6, 0xc

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-tao"

    aput-object v6, v2, v4

    const-string v6, "tao"

    aput-object v6, v2, v5

    const/16 v6, 0xd

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-tay"

    aput-object v6, v2, v4

    const-string v6, "tay"

    aput-object v6, v2, v5

    const/16 v6, 0xe

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "i-tsu"

    aput-object v6, v2, v4

    const-string v6, "tsu"

    aput-object v6, v2, v5

    const/16 v6, 0xf

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "no-bok"

    aput-object v6, v2, v4

    const-string v6, "nb"

    aput-object v6, v2, v5

    const/16 v6, 0x10

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "no-nyn"

    aput-object v6, v2, v4

    const-string v6, "nn"

    aput-object v6, v2, v5

    const/16 v6, 0x11

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "sgn-BE-FR"

    aput-object v6, v2, v4

    const-string v6, "sfb"

    aput-object v6, v2, v5

    const/16 v6, 0x12

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "sgn-BE-NL"

    aput-object v6, v2, v4

    const-string v6, "vgt"

    aput-object v6, v2, v5

    const/16 v6, 0x13

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "sgn-CH-DE"

    aput-object v6, v2, v4

    const-string v6, "sgg"

    aput-object v6, v2, v5

    const/16 v6, 0x14

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "zh-guoyu"

    aput-object v6, v2, v4

    const-string v6, "cmn"

    aput-object v6, v2, v5

    const/16 v6, 0x15

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "zh-hakka"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh-min"

    aput-object v3, v2, v4

    const-string v3, "nan-x-zh-min"

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh-min-nan"

    aput-object v3, v2, v4

    const-string v3, "nan"

    aput-object v3, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "zh-xiang"

    aput-object v2, v1, v4

    const-string v2, "hsn"

    aput-object v2, v1, v5

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 129
    .local v0, "entries":[[Ljava/lang/String;
    array-length v1, v0

    move v2, v4

    :goto_16f
    if-ge v2, v1, :cond_181

    aget-object v3, v0, v2

    .line 130
    .local v3, "e":[Ljava/lang/String;
    sget-object v5, Lsun/util/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    aget-object v6, v3, v4

    invoke-static {v6}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v3    # "e":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_16f

    .line 132
    .end local v0    # "entries":[[Ljava/lang/String;
    :cond_181
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    .line 135
    return-void
.end method

.method public static blacklist canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 692
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 696
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 700
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 676
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 672
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 704
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 708
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 684
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 680
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 688
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isExtensionSingleton(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 637
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 638
    const-string v0, "x"

    invoke-static {v0, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 636
    :goto_17
    return v1
.end method

.method public static blacklist isExtensionSingletonChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 642
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExtensionSubtag(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 647
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 648
    .local v0, "len":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isExtlang(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isLanguage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 592
    .local v0, "len":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isPrivateusePrefix(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 654
    const-string v0, "x"

    invoke-static {v0, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 653
    :goto_11
    return v1
.end method

.method public static blacklist isPrivateusePrefixChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 658
    const-string v0, "x"

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPrivateuseSubtag(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 663
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 664
    .local v0, "len":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/16 v2, 0x8

    if-gt v0, v2, :cond_12

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static blacklist isRegion(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 610
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 609
    :goto_1d
    return v0
.end method

.method public static blacklist isScript(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 603
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isVariant(Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 617
    .local v0, "len":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_10

    const/16 v1, 0x8

    if-gt v0, v1, :cond_10

    .line 618
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 620
    :cond_10
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_43

    .line 621
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 622
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 623
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 624
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v3

    if-eqz v3, :cond_41

    move v2, v1

    goto :goto_42

    :cond_41
    nop

    .line 621
    :goto_42
    return v2

    .line 626
    :cond_43
    return v2
.end method

.method public static blacklist parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;
    .registers 8
    .param p0, "languageTag"    # Ljava/lang/String;
    .param p1, "sts"    # Lsun/util/locale/ParseStatus;

    .line 183
    if-nez p1, :cond_9

    .line 184
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    move-object p1, v0

    goto :goto_c

    .line 186
    :cond_9
    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->reset()V

    .line 192
    :goto_c
    sget-object v0, Lsun/util/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 193
    .local v0, "gfmap":[Ljava/lang/String;
    const-string v1, "-"

    if-eqz v0, :cond_25

    .line 195
    new-instance v2, Lsun/util/locale/StringTokenIterator;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v3, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "itr":Lsun/util/locale/StringTokenIterator;
    goto :goto_2a

    .line 197
    .end local v2    # "itr":Lsun/util/locale/StringTokenIterator;
    :cond_25
    new-instance v2, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v2, p0, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .restart local v2    # "itr":Lsun/util/locale/StringTokenIterator;
    :goto_2a
    new-instance v1, Lsun/util/locale/LanguageTag;

    invoke-direct {v1}, Lsun/util/locale/LanguageTag;-><init>()V

    .line 203
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 204
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 205
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 206
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 207
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 208
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 210
    :cond_44
    invoke-direct {v1, v2, p1}, Lsun/util/locale/LanguageTag;->parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 212
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 213
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v4

    iput v4, p1, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 215
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 216
    const-string v4, "Empty subtag"

    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    goto :goto_7d

    .line 218
    :cond_68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid subtag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    .line 222
    .end local v3    # "s":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-object v1
.end method

.method private greylist-max-o parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 10
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 337
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8d

    .line 341
    :cond_e
    const/4 v0, 0x0

    .line 343
    .local v0, "found":Z
    :goto_f
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 344
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 346
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 347
    .local v2, "start":I
    move-object v3, v1

    .line 348
    .local v3, "singleton":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 351
    :goto_2c
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 352
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 354
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v5

    iput v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 359
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2c

    .line 362
    :cond_4f
    iget v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    if-gt v5, v2, :cond_71

    .line 363
    iput v2, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    .line 365
    goto :goto_8c

    .line 368
    :cond_71
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 369
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    .line 371
    :cond_81
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const/4 v0, 0x1

    .line 376
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "start":I
    .end local v3    # "singleton":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto :goto_f

    .line 377
    :cond_8c
    :goto_8c
    return v0

    .line 338
    .end local v0    # "found":Z
    :cond_8d
    :goto_8d
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 7
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 248
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_49

    .line 252
    :cond_d
    const/4 v0, 0x0

    .line 254
    .local v0, "found":Z
    :goto_e
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_48

    .line 255
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 257
    goto :goto_48

    .line 259
    :cond_1f
    const/4 v0, 0x1

    .line 260
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_30

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    .line 263
    :cond_30
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 265
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_47

    .line 269
    goto :goto_48

    .line 271
    .end local v1    # "s":Ljava/lang/String;
    :cond_47
    goto :goto_e

    .line 273
    :cond_48
    :goto_48
    return v0

    .line 249
    .end local v0    # "found":Z
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 230
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 234
    :cond_d
    const/4 v0, 0x0

    .line 236
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 238
    const/4 v0, 0x1

    .line 239
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 241
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 244
    :cond_24
    return v0

    .line 231
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;
    .registers 19
    .param p0, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p1, "localeExtensions"    # Lsun/util/locale/LocaleExtensions;

    .line 418
    move-object/from16 v0, p1

    new-instance v1, Lsun/util/locale/LanguageTag;

    invoke-direct {v1}, Lsun/util/locale/LanguageTag;-><init>()V

    .line 420
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "script":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "region":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "variant":Ljava/lang/String;
    const/4 v6, 0x0

    .line 427
    .local v6, "hasSubtag":Z
    const/4 v7, 0x0

    .line 429
    .local v7, "privuseVar":Ljava/lang/String;
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 431
    const-string v8, "iw"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 432
    const-string v2, "he"

    goto :goto_3f

    .line 433
    :cond_2a
    const-string v8, "ji"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 434
    const-string v2, "yi"

    goto :goto_3f

    .line 435
    :cond_35
    const-string v8, "in"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 436
    const-string v2, "id"

    .line 438
    :cond_3f
    :goto_3f
    iput-object v2, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 441
    :cond_41
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 442
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    .line 443
    const/4 v6, 0x1

    .line 446
    :cond_4e
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 447
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    .line 448
    const/4 v6, 0x1

    .line 452
    :cond_5b
    iget-object v8, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    const-string v9, "no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    iget-object v8, v1, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    const-string v9, "NO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    const-string v8, "NY"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 453
    const-string v8, "nn"

    iput-object v8, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 454
    const-string v5, ""

    .line 457
    :cond_7d
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-string v9, "_"

    const-string v10, "-"

    if-nez v8, :cond_df

    .line 458
    const/4 v8, 0x0

    .line 459
    .local v8, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v11, v5, v9}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .local v11, "varitr":Lsun/util/locale/StringTokenIterator;
    :goto_8d
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v12

    if-nez v12, :cond_ad

    .line 461
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v12

    .line 462
    .local v12, "var":Ljava/lang/String;
    invoke-static {v12}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9e

    .line 463
    goto :goto_ad

    .line 465
    :cond_9e
    if-nez v8, :cond_a6

    .line 466
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v13

    .line 468
    :cond_a6
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 470
    .end local v12    # "var":Ljava/lang/String;
    goto :goto_8d

    .line 471
    :cond_ad
    :goto_ad
    if-eqz v8, :cond_b2

    .line 472
    iput-object v8, v1, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    .line 473
    const/4 v6, 0x1

    .line 475
    :cond_b2
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v12

    if-nez v12, :cond_df

    .line 477
    new-instance v12, Ljava/util/StringJoiner;

    invoke-direct {v12, v10}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 478
    .local v12, "sj":Ljava/util/StringJoiner;
    :goto_bd
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v13

    if-nez v13, :cond_d5

    .line 479
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v13

    .line 480
    .local v13, "prvv":Ljava/lang/String;
    invoke-static {v13}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_ce

    .line 482
    goto :goto_d5

    .line 484
    :cond_ce
    invoke-virtual {v12, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 485
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 486
    .end local v13    # "prvv":Ljava/lang/String;
    goto :goto_bd

    .line 487
    :cond_d5
    :goto_d5
    invoke-virtual {v12}, Ljava/util/StringJoiner;->length()I

    move-result v13

    if-lez v13, :cond_df

    .line 488
    invoke-virtual {v12}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v7

    .line 493
    .end local v8    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "varitr":Lsun/util/locale/StringTokenIterator;
    .end local v12    # "sj":Ljava/util/StringJoiner;
    :cond_df
    const/4 v8, 0x0

    .line 494
    .local v8, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 496
    .local v11, "privateuse":Ljava/lang/String;
    if-eqz v0, :cond_13f

    .line 497
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v12

    .line 498
    .local v12, "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_eb
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Character;

    .line 499
    .local v14, "locextKey":Ljava/lang/Character;
    invoke-virtual {v0, v14}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    move-result-object v15

    .line 500
    .local v15, "ext":Lsun/util/locale/Extension;
    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v16

    invoke-static/range {v16 .. v16}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v16

    if-eqz v16, :cond_10c

    .line 501
    invoke-virtual {v15}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v2

    goto :goto_137

    .line 503
    :cond_10c
    if-nez v8, :cond_115

    .line 504
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v16

    .line 506
    :cond_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "language":Ljava/lang/String;
    .local v16, "language":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v14    # "locextKey":Ljava/lang/Character;
    .end local v15    # "ext":Lsun/util/locale/Extension;
    :goto_137
    move-object/from16 v0, p1

    move-object/from16 v2, v16

    goto :goto_eb

    .line 498
    .end local v16    # "language":Ljava/lang/String;
    .restart local v2    # "language":Ljava/lang/String;
    :cond_13c
    move-object/from16 v16, v2

    .end local v2    # "language":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    goto :goto_141

    .line 496
    .end local v12    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v16    # "language":Ljava/lang/String;
    .restart local v2    # "language":Ljava/lang/String;
    :cond_13f
    move-object/from16 v16, v2

    .line 511
    .end local v2    # "language":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    :goto_141
    if-eqz v8, :cond_146

    .line 512
    iput-object v8, v1, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    .line 513
    const/4 v6, 0x1

    .line 517
    :cond_146
    if-eqz v7, :cond_181

    .line 518
    if-nez v11, :cond_15e

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvariant-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_181

    .line 521
    :cond_15e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lvariant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 522
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 526
    :cond_181
    :goto_181
    if-eqz v11, :cond_185

    .line 527
    iput-object v11, v1, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    .line 530
    :cond_185
    iget-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_195

    if-nez v6, :cond_191

    if-nez v11, :cond_195

    .line 534
    :cond_191
    const-string v0, "und"

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 537
    :cond_195
    return-object v1
.end method

.method private greylist-max-o parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 8
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 381
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5b

    .line 385
    :cond_d
    const/4 v0, 0x0

    .line 387
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 389
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 390
    .local v2, "start":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 393
    :goto_24
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_48

    .line 394
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 396
    goto :goto_48

    .line 398
    :cond_35
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 401
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_24

    .line 404
    :cond_48
    :goto_48
    iget v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    if-gt v4, v2, :cond_53

    .line 406
    iput v2, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 407
    const-string v4, "Incomplete privateuse"

    iput-object v4, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    goto :goto_5a

    .line 409
    :cond_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    .line 410
    const/4 v0, 0x1

    .line 414
    .end local v2    # "start":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_5a
    :goto_5a
    return v0

    .line 382
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 295
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 299
    :cond_d
    const/4 v0, 0x0

    .line 301
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 303
    const/4 v0, 0x1

    .line 304
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 306
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 309
    :cond_24
    return v0

    .line 296
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 277
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 281
    :cond_d
    const/4 v0, 0x0

    .line 283
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 285
    const/4 v0, 0x1

    .line 286
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 288
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 291
    :cond_24
    return v0

    .line 278
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 7
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 313
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_40

    .line 317
    :cond_d
    const/4 v0, 0x0

    .line 319
    .local v0, "found":Z
    :goto_e
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 320
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 322
    goto :goto_3f

    .line 324
    :cond_1f
    const/4 v0, 0x1

    .line 325
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    .line 328
    :cond_30
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 330
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 331
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_e

    .line 333
    :cond_3f
    :goto_3f
    return v0

    .line 314
    .end local v0    # "found":Z
    :cond_40
    :goto_40
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 574
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtlangs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 552
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 545
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPrivateuse()Ljava/lang/String;
    .registers 2

    .line 578
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegion()Ljava/lang/String;
    .registers 2

    .line 560
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 556
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVariants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 567
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "-"

    if-nez v1, :cond_84

    .line 716
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 719
    .local v3, "extlang":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .end local v3    # "extlang":Ljava/lang/String;
    goto :goto_1a

    .line 722
    :cond_2e
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 723
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_3f
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_50
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 731
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .end local v3    # "variant":Ljava/lang/String;
    goto :goto_56

    .line 734
    :cond_6a
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 735
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .end local v3    # "extension":Ljava/lang/String;
    goto :goto_70

    .line 738
    :cond_84
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 739
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_95

    .line 740
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_95
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
