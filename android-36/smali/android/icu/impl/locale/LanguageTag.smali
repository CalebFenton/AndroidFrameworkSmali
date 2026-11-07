.class public Landroid/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o JDKIMPL:Z = false

.field private static final blacklist LEGACY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final blacklist PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final blacklist SEP:Ljava/lang/String; = "-"

.field public static blacklist UNDETERMINED:Ljava/lang/String;


# instance fields
.field private greylist-max-o _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o _extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o _language:Ljava/lang/String;

.field private greylist-max-o _privateuse:Ljava/lang/String;

.field private greylist-max-o _region:Ljava/lang/String;

.field private greylist-max-o _script:Ljava/lang/String;

.field private greylist-max-o _variants:Ljava/util/List;
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
    .registers 28

    .line 22
    nop

    .line 30
    const-string v0, "und"

    sput-object v0, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    .line 82
    const-string v0, "art-lojban"

    const-string v1, "jbo"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "cel-gaulish"

    const-string v1, "xtg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "en-GB-oed"

    const-string v1, "en-GB-x-oed"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "i-ami"

    const-string v1, "ami"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "i-bnn"

    const-string v1, "bnn"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "i-default"

    const-string v1, "en-x-i-default"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "i-enochian"

    const-string v1, "und-x-i-enochian"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "i-hak"

    const-string v1, "hak"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "i-klingon"

    const-string v10, "tlh"

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "i-lux"

    const-string v11, "lb"

    filled-new-array {v0, v11}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "i-mingo"

    const-string v12, "see-x-i-mingo"

    filled-new-array {v0, v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v0, "i-navajo"

    const-string v13, "nv"

    filled-new-array {v0, v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v0, "i-pwn"

    const-string v14, "pwn"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v0, "i-tao"

    const-string v15, "tao"

    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v15

    const-string v0, "i-tay"

    move-object/from16 v16, v2

    const-string v2, "tay"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "i-tsu"

    move-object/from16 v17, v0

    const-string v0, "tsu"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "no-bok"

    move-object/from16 v18, v0

    const-string v0, "nb"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "no-nyn"

    move-object/from16 v19, v0

    const-string v0, "nn"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "sgn-BE-FR"

    move-object/from16 v20, v0

    const-string v0, "sfb"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "sgn-BE-NL"

    move-object/from16 v21, v0

    const-string v0, "vgt"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "sgn-CH-DE"

    move-object/from16 v22, v0

    const-string v0, "sgg"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh-guoyu"

    move-object/from16 v23, v0

    const-string v0, "cmn"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh-hakka"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v24

    const-string v1, "zh-min"

    const-string v2, "nan-x-zh-min"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v25

    const-string v1, "zh-min-nan"

    const-string v2, "nan"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v26

    const-string v1, "zh-xiang"

    const-string v2, "hsn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v27

    move-object/from16 v2, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v0

    filled-new-array/range {v2 .. v27}, [[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "entries":[[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_103
    if-ge v3, v1, :cond_116

    aget-object v4, v0, v3

    .line 112
    .local v4, "e":[Ljava/lang/String;
    sget-object v5, Landroid/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    new-instance v6, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    aget-object v7, v4, v2

    invoke-direct {v6, v7}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v4    # "e":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_103

    .line 114
    .end local v0    # "entries":[[Ljava/lang/String;
    :cond_116
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 117
    return-void
.end method

.method public static blacklist canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 669
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    const-string v0, "u-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 672
    :goto_c
    const-string v0, "-true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 675
    :cond_20
    :goto_20
    const-string v0, "-true-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .local v2, "found":I
    if-lez v0, :cond_45

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v2, 0x5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 678
    :cond_45
    :goto_45
    const-string v0, "-yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 679
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 681
    :cond_58
    :goto_58
    const-string v0, "-yes-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    if-lez v0, :cond_7d

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_58

    .line 685
    .end local v2    # "found":I
    :cond_7d
    return-object p0
.end method

.method public static blacklist canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 689
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 693
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 653
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 649
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 697
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 701
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 661
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 657
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 665
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isExtensionSingleton(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 616
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 617
    const-string v0, "x"

    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 615
    :goto_17
    return v1
.end method

.method public static blacklist isExtensionSingletonChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 621
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExtensionSubtag(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 626
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static blacklist isExtlang(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

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

    .line 565
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static blacklist isPrivateusePrefix(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 632
    const-string v0, "x"

    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 631
    :goto_11
    return v1
.end method

.method public static blacklist isPrivateusePrefixChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 636
    const-string v0, "x"

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPrivateuseSubtag(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 641
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_16

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isRegion(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 583
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 582
    :goto_1d
    return v0
.end method

.method public static blacklist isScript(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 576
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isTKey(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v2, v0

    goto :goto_20

    :cond_1f
    nop

    .line 604
    :goto_20
    return v2
.end method

.method public static blacklist isVariant(Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 589
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 590
    .local v0, "len":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_10

    const/16 v1, 0x8

    if-gt v0, v1, :cond_10

    .line 591
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 593
    :cond_10
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_43

    .line 594
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 595
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 596
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 597
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v3

    if-eqz v3, :cond_41

    move v2, v1

    goto :goto_42

    :cond_41
    nop

    .line 594
    :goto_42
    return v2

    .line 599
    :cond_43
    return v2
.end method

.method public static blacklist parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;
    .registers 10
    .param p0, "languageTag"    # Ljava/lang/String;
    .param p1, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 125
    if-nez p1, :cond_9

    .line 126
    new-instance v0, Landroid/icu/impl/locale/ParseStatus;

    invoke-direct {v0}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    move-object p1, v0

    goto :goto_c

    .line 128
    :cond_9
    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->reset()V

    .line 132
    :goto_c
    const/4 v0, 0x0

    .line 134
    .local v0, "isLegacy":Z
    sget-object v1, Landroid/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    new-instance v2, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-direct {v2, p0}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 136
    .local v1, "gfmap":[Ljava/lang/String;
    const/4 v2, 0x2

    .line 137
    .local v2, "dash":I
    :goto_1b
    const/4 v3, 0x0

    if-nez v1, :cond_3d

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2d

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3d

    .line 138
    sget-object v4, Landroid/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    new-instance v5, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    goto :goto_1b

    .line 141
    :cond_3d
    const-string v4, "-"

    if-eqz v1, :cond_74

    .line 142
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v3, v5, :cond_56

    .line 144
    new-instance v3, Landroid/icu/impl/locale/StringTokenIterator;

    aget-object v5, v1, v6

    invoke-direct {v3, v5, v4}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    goto :goto_72

    .line 147
    .end local v3    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :cond_56
    new-instance v3, Landroid/icu/impl/locale/StringTokenIterator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v3    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_72
    const/4 v0, 0x1

    goto :goto_79

    .line 151
    .end local v3    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :cond_74
    new-instance v3, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v3, p0, v4}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v3    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_79
    new-instance v4, Landroid/icu/impl/locale/LanguageTag;

    invoke-direct {v4}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    .line 157
    .local v4, "tag":Landroid/icu/impl/locale/LanguageTag;
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 159
    iget-object v5, v4, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_90

    .line 160
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 161
    :cond_90
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 162
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 163
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 164
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 166
    :cond_9c
    invoke-direct {v4, v3, p1}, Landroid/icu/impl/locale/LanguageTag;->parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    .line 168
    if-eqz v0, :cond_aa

    .line 171
    nop

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p1, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    goto :goto_e0

    .line 174
    :cond_aa
    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_e0

    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v5

    if-nez v5, :cond_e0

    .line 175
    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    iput v6, p1, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 177
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_cb

    .line 178
    const-string v6, "Empty subtag"

    iput-object v6, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_e0

    .line 180
    :cond_cb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid subtag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    .line 184
    .end local v5    # "s":Ljava/lang/String;
    :cond_e0
    :goto_e0
    return-object v4
.end method

.method private greylist-max-o parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 14
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 303
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b6

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_b6

    .line 307
    :cond_f
    const/4 v0, 0x0

    .line 309
    .local v0, "found":Z
    :goto_10
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_b5

    .line 310
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 312
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v3

    .line 313
    .local v3, "start":I
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "singleton":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 317
    :goto_30
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v6

    if-nez v6, :cond_53

    .line 318
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 320
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v6

    iput v6, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 325
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_30

    .line 328
    :cond_53
    iget v6, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v6, v3, :cond_75

    .line 329
    iput v3, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete extension \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    .line 331
    goto :goto_b5

    .line 334
    :cond_75
    iget-object v6, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_85

    .line 335
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 338
    :cond_85
    const/4 v6, 0x0

    .line 339
    .local v6, "alreadyHas":Z
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 340
    .local v8, "extension":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_a4

    const/4 v9, 0x1

    goto :goto_a5

    :cond_a4
    move v9, v1

    :goto_a5
    or-int/2addr v6, v9

    .line 341
    .end local v8    # "extension":Ljava/lang/String;
    goto :goto_8c

    .line 342
    :cond_a7
    if-nez v6, :cond_b2

    .line 343
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_b2
    const/4 v0, 0x1

    .line 349
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v4    # "singleton":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "alreadyHas":Z
    goto/16 :goto_10

    .line 350
    :cond_b5
    :goto_b5
    return v0

    .line 304
    .end local v0    # "found":Z
    :cond_b6
    :goto_b6
    return v1
.end method

.method private greylist-max-o parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 7
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 210
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_49

    .line 214
    :cond_d
    const/4 v0, 0x0

    .line 216
    .local v0, "found":Z
    :goto_e
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_48

    .line 217
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 219
    goto :goto_48

    .line 221
    :cond_1f
    const/4 v0, 0x1

    .line 222
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_30

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 225
    :cond_30
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 227
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 229
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_47

    .line 231
    goto :goto_48

    .line 233
    .end local v1    # "s":Ljava/lang/String;
    :cond_47
    goto :goto_e

    .line 235
    :cond_48
    :goto_48
    return v0

    .line 211
    .end local v0    # "found":Z
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 192
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 196
    :cond_d
    const/4 v0, 0x0

    .line 198
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 200
    const/4 v0, 0x1

    .line 201
    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 203
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 206
    :cond_24
    return v0

    .line 193
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;
    .registers 20
    .param p0, "baseLocale"    # Landroid/icu/impl/locale/BaseLocale;
    .param p1, "localeExtensions"    # Landroid/icu/impl/locale/LocaleExtensions;

    .line 391
    new-instance v0, Landroid/icu/impl/locale/LanguageTag;

    invoke-direct {v0}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    .line 393
    .local v0, "tag":Landroid/icu/impl/locale/LanguageTag;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "script":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "region":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "variant":Ljava/lang/String;
    const/4 v5, 0x0

    .line 400
    .local v5, "hasSubtag":Z
    const/4 v6, 0x0

    .line 402
    .local v6, "privuseVar":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_45

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 405
    const-string v7, "iw"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 406
    const-string v1, "he"

    goto :goto_43

    .line 407
    :cond_2e
    const-string v7, "ji"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 408
    const-string v1, "yi"

    goto :goto_43

    .line 409
    :cond_39
    const-string v7, "in"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 410
    const-string v1, "id"

    .line 412
    :cond_43
    :goto_43
    iput-object v1, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 415
    :cond_45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_58

    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 416
    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 417
    const/4 v5, 0x1

    .line 420
    :cond_58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6b

    invoke-static {v3}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 421
    invoke-static {v3}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 422
    const/4 v5, 0x1

    .line 433
    :cond_6b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "_"

    const-string v9, "-"

    if-lez v7, :cond_de

    .line 434
    const/4 v7, 0x0

    .line 435
    .local v7, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v10, v4, v8}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v10, "varitr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_7b
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v11

    if-nez v11, :cond_9f

    .line 437
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v11

    .line 438
    .local v11, "var":Ljava/lang/String;
    invoke-static {v11}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8c

    .line 439
    goto :goto_9f

    .line 441
    :cond_8c
    if-nez v7, :cond_94

    .line 442
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v12

    .line 447
    :cond_94
    invoke-static {v11}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 450
    .end local v11    # "var":Ljava/lang/String;
    goto :goto_7b

    .line 451
    :cond_9f
    :goto_9f
    if-eqz v7, :cond_a4

    .line 452
    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 453
    const/4 v5, 0x1

    .line 455
    :cond_a4
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v11

    if-nez v11, :cond_de

    .line 457
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v11, "buf":Ljava/lang/StringBuilder;
    :goto_af
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v12

    if-nez v12, :cond_d4

    .line 459
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, "prvv":Ljava/lang/String;
    invoke-static {v12}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c0

    .line 462
    goto :goto_d4

    .line 464
    :cond_c0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_c9

    .line 465
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_c9
    invoke-static {v12}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 470
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v10}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 472
    .end local v12    # "prvv":Ljava/lang/String;
    goto :goto_af

    .line 473
    :cond_d4
    :goto_d4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_de

    .line 474
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    .end local v7    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "varitr":Landroid/icu/impl/locale/StringTokenIterator;
    .end local v11    # "buf":Ljava/lang/StringBuilder;
    :cond_de
    const/4 v7, 0x0

    .line 480
    .local v7, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 482
    .local v10, "privateuse":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v11

    .line 483
    .local v11, "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Character;

    .line 484
    .local v13, "locextKey":Ljava/lang/Character;
    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v15

    .line 485
    .local v15, "ext":Landroid/icu/impl/locale/Extension;
    invoke-virtual {v13}, Ljava/lang/Character;->charValue()C

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v16

    if-eqz v16, :cond_10d

    .line 486
    invoke-virtual {v15}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_13a

    .line 488
    :cond_10d
    if-nez v7, :cond_116

    .line 489
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v16

    .line 491
    :cond_116
    move-object/from16 v16, v1

    .end local v1    # "language":Ljava/lang/String;
    .local v16, "language":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "script":Ljava/lang/String;
    .local v17, "script":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v13    # "locextKey":Ljava/lang/Character;
    .end local v15    # "ext":Landroid/icu/impl/locale/Extension;
    :goto_13a
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_e8

    .line 495
    .end local v16    # "language":Ljava/lang/String;
    .end local v17    # "script":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v2    # "script":Ljava/lang/String;
    :cond_13f
    move-object/from16 v14, p1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "script":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    .restart local v17    # "script":Ljava/lang/String;
    if-eqz v7, :cond_14a

    .line 496
    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 497
    const/4 v5, 0x1

    .line 501
    :cond_14a
    if-eqz v6, :cond_185

    .line 502
    if-nez v10, :cond_162

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvariant-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_185

    .line 505
    :cond_162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lvariant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 509
    :cond_185
    :goto_185
    if-eqz v10, :cond_189

    .line 510
    iput-object v10, v0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 513
    :cond_189
    iget-object v1, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_199

    if-nez v5, :cond_195

    if-nez v10, :cond_199

    .line 517
    :cond_195
    sget-object v1, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 520
    :cond_199
    return-object v0
.end method

.method private greylist-max-o parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 8
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 354
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5b

    .line 358
    :cond_d
    const/4 v0, 0x0

    .line 360
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 362
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 363
    .local v2, "start":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 366
    :goto_24
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_48

    .line 367
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 369
    goto :goto_48

    .line 371
    :cond_35
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 374
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_24

    .line 377
    :cond_48
    :goto_48
    iget v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v4, v2, :cond_53

    .line 379
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 380
    const-string v4, "Incomplete privateuse"

    iput-object v4, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_5a

    .line 382
    :cond_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 383
    const/4 v0, 0x1

    .line 387
    .end local v2    # "start":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_5a
    :goto_5a
    return v0

    .line 355
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 257
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 261
    :cond_d
    const/4 v0, 0x0

    .line 263
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 265
    const/4 v0, 0x1

    .line 266
    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 268
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 271
    :cond_24
    return v0

    .line 258
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 239
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 243
    :cond_d
    const/4 v0, 0x0

    .line 245
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 247
    const/4 v0, 0x1

    .line 248
    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 250
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 253
    :cond_24
    return v0

    .line 240
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .registers 7
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    .line 275
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4c

    .line 279
    :cond_d
    const/4 v0, 0x0

    .line 281
    .local v0, "found":Z
    :goto_e
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 282
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 284
    goto :goto_4b

    .line 286
    :cond_1f
    const/4 v0, 0x1

    .line 287
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 291
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 293
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_41
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 296
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 297
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_e

    .line 299
    :cond_4b
    :goto_4b
    return v0

    .line 276
    .end local v0    # "found":Z
    :cond_4c
    :goto_4c
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

    .line 548
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

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

    .line 532
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 528
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPrivateuse()Ljava/lang/String;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegion()Ljava/lang/String;
    .registers 2

    .line 540
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

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

    .line 544
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-"

    if-lez v1, :cond_84

    .line 709
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 712
    .local v3, "extlang":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .end local v3    # "extlang":Ljava/lang/String;
    goto :goto_1a

    .line 715
    :cond_2e
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3f

    .line 716
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_3f
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    .line 720
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_50
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .end local v3    # "variant":Ljava/lang/String;
    goto :goto_56

    .line 727
    :cond_6a
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 728
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .end local v3    # "extension":Ljava/lang/String;
    goto :goto_70

    .line 731
    :cond_84
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9a

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_95

    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :cond_95
    iget-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
