.class public Lsun/util/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field private static final GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final SEP:Ljava/lang/String; = "-"

.field public static final UNDETERMINED:Ljava/lang/String; = "und"


# instance fields
.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private privateuse:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 65
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    sput-object v2, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    #@a
    .line 99
    const/16 v2, 0x1a

    #@c
    new-array v1, v2, [[Ljava/lang/String;

    #@e
    .line 101
    new-array v2, v6, [Ljava/lang/String;

    #@10
    const-string/jumbo v4, "art-lojban"

    #@13
    aput-object v4, v2, v3

    #@15
    const-string/jumbo v4, "jbo"

    #@18
    aput-object v4, v2, v5

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 102
    new-array v2, v6, [Ljava/lang/String;

    #@1e
    const-string/jumbo v4, "cel-gaulish"

    #@21
    aput-object v4, v2, v3

    #@23
    const-string/jumbo v4, "xtg-x-cel-gaulish"

    #@26
    aput-object v4, v2, v5

    #@28
    aput-object v2, v1, v5

    #@2a
    .line 103
    new-array v2, v6, [Ljava/lang/String;

    #@2c
    const-string/jumbo v4, "en-GB-oed"

    #@2f
    aput-object v4, v2, v3

    #@31
    const-string/jumbo v4, "en-GB-x-oed"

    #@34
    aput-object v4, v2, v5

    #@36
    aput-object v2, v1, v6

    #@38
    .line 104
    new-array v2, v6, [Ljava/lang/String;

    #@3a
    const-string/jumbo v4, "i-ami"

    #@3d
    aput-object v4, v2, v3

    #@3f
    const-string/jumbo v4, "ami"

    #@42
    aput-object v4, v2, v5

    #@44
    const/4 v4, 0x3

    #@45
    aput-object v2, v1, v4

    #@47
    .line 105
    new-array v2, v6, [Ljava/lang/String;

    #@49
    const-string/jumbo v4, "i-bnn"

    #@4c
    aput-object v4, v2, v3

    #@4e
    const-string/jumbo v4, "bnn"

    #@51
    aput-object v4, v2, v5

    #@53
    const/4 v4, 0x4

    #@54
    aput-object v2, v1, v4

    #@56
    .line 106
    new-array v2, v6, [Ljava/lang/String;

    #@58
    const-string/jumbo v4, "i-default"

    #@5b
    aput-object v4, v2, v3

    #@5d
    const-string/jumbo v4, "en-x-i-default"

    #@60
    aput-object v4, v2, v5

    #@62
    const/4 v4, 0x5

    #@63
    aput-object v2, v1, v4

    #@65
    .line 107
    new-array v2, v6, [Ljava/lang/String;

    #@67
    const-string/jumbo v4, "i-enochian"

    #@6a
    aput-object v4, v2, v3

    #@6c
    const-string/jumbo v4, "und-x-i-enochian"

    #@6f
    aput-object v4, v2, v5

    #@71
    const/4 v4, 0x6

    #@72
    aput-object v2, v1, v4

    #@74
    .line 108
    new-array v2, v6, [Ljava/lang/String;

    #@76
    const-string/jumbo v4, "i-hak"

    #@79
    aput-object v4, v2, v3

    #@7b
    const-string/jumbo v4, "hak"

    #@7e
    aput-object v4, v2, v5

    #@80
    const/4 v4, 0x7

    #@81
    aput-object v2, v1, v4

    #@83
    .line 109
    new-array v2, v6, [Ljava/lang/String;

    #@85
    const-string/jumbo v4, "i-klingon"

    #@88
    aput-object v4, v2, v3

    #@8a
    const-string/jumbo v4, "tlh"

    #@8d
    aput-object v4, v2, v5

    #@8f
    const/16 v4, 0x8

    #@91
    aput-object v2, v1, v4

    #@93
    .line 110
    new-array v2, v6, [Ljava/lang/String;

    #@95
    const-string/jumbo v4, "i-lux"

    #@98
    aput-object v4, v2, v3

    #@9a
    const-string/jumbo v4, "lb"

    #@9d
    aput-object v4, v2, v5

    #@9f
    const/16 v4, 0x9

    #@a1
    aput-object v2, v1, v4

    #@a3
    .line 111
    new-array v2, v6, [Ljava/lang/String;

    #@a5
    const-string/jumbo v4, "i-mingo"

    #@a8
    aput-object v4, v2, v3

    #@aa
    const-string/jumbo v4, "see-x-i-mingo"

    #@ad
    aput-object v4, v2, v5

    #@af
    const/16 v4, 0xa

    #@b1
    aput-object v2, v1, v4

    #@b3
    .line 112
    new-array v2, v6, [Ljava/lang/String;

    #@b5
    const-string/jumbo v4, "i-navajo"

    #@b8
    aput-object v4, v2, v3

    #@ba
    const-string/jumbo v4, "nv"

    #@bd
    aput-object v4, v2, v5

    #@bf
    const/16 v4, 0xb

    #@c1
    aput-object v2, v1, v4

    #@c3
    .line 113
    new-array v2, v6, [Ljava/lang/String;

    #@c5
    const-string/jumbo v4, "i-pwn"

    #@c8
    aput-object v4, v2, v3

    #@ca
    const-string/jumbo v4, "pwn"

    #@cd
    aput-object v4, v2, v5

    #@cf
    const/16 v4, 0xc

    #@d1
    aput-object v2, v1, v4

    #@d3
    .line 114
    new-array v2, v6, [Ljava/lang/String;

    #@d5
    const-string/jumbo v4, "i-tao"

    #@d8
    aput-object v4, v2, v3

    #@da
    const-string/jumbo v4, "tao"

    #@dd
    aput-object v4, v2, v5

    #@df
    const/16 v4, 0xd

    #@e1
    aput-object v2, v1, v4

    #@e3
    .line 115
    new-array v2, v6, [Ljava/lang/String;

    #@e5
    const-string/jumbo v4, "i-tay"

    #@e8
    aput-object v4, v2, v3

    #@ea
    const-string/jumbo v4, "tay"

    #@ed
    aput-object v4, v2, v5

    #@ef
    const/16 v4, 0xe

    #@f1
    aput-object v2, v1, v4

    #@f3
    .line 116
    new-array v2, v6, [Ljava/lang/String;

    #@f5
    const-string/jumbo v4, "i-tsu"

    #@f8
    aput-object v4, v2, v3

    #@fa
    const-string/jumbo v4, "tsu"

    #@fd
    aput-object v4, v2, v5

    #@ff
    const/16 v4, 0xf

    #@101
    aput-object v2, v1, v4

    #@103
    .line 117
    new-array v2, v6, [Ljava/lang/String;

    #@105
    const-string/jumbo v4, "no-bok"

    #@108
    aput-object v4, v2, v3

    #@10a
    const-string/jumbo v4, "nb"

    #@10d
    aput-object v4, v2, v5

    #@10f
    const/16 v4, 0x10

    #@111
    aput-object v2, v1, v4

    #@113
    .line 118
    new-array v2, v6, [Ljava/lang/String;

    #@115
    const-string/jumbo v4, "no-nyn"

    #@118
    aput-object v4, v2, v3

    #@11a
    const-string/jumbo v4, "nn"

    #@11d
    aput-object v4, v2, v5

    #@11f
    const/16 v4, 0x11

    #@121
    aput-object v2, v1, v4

    #@123
    .line 119
    new-array v2, v6, [Ljava/lang/String;

    #@125
    const-string/jumbo v4, "sgn-BE-FR"

    #@128
    aput-object v4, v2, v3

    #@12a
    const-string/jumbo v4, "sfb"

    #@12d
    aput-object v4, v2, v5

    #@12f
    const/16 v4, 0x12

    #@131
    aput-object v2, v1, v4

    #@133
    .line 120
    new-array v2, v6, [Ljava/lang/String;

    #@135
    const-string/jumbo v4, "sgn-BE-NL"

    #@138
    aput-object v4, v2, v3

    #@13a
    const-string/jumbo v4, "vgt"

    #@13d
    aput-object v4, v2, v5

    #@13f
    const/16 v4, 0x13

    #@141
    aput-object v2, v1, v4

    #@143
    .line 121
    new-array v2, v6, [Ljava/lang/String;

    #@145
    const-string/jumbo v4, "sgn-CH-DE"

    #@148
    aput-object v4, v2, v3

    #@14a
    const-string/jumbo v4, "sgg"

    #@14d
    aput-object v4, v2, v5

    #@14f
    const/16 v4, 0x14

    #@151
    aput-object v2, v1, v4

    #@153
    .line 122
    new-array v2, v6, [Ljava/lang/String;

    #@155
    const-string/jumbo v4, "zh-guoyu"

    #@158
    aput-object v4, v2, v3

    #@15a
    const-string/jumbo v4, "cmn"

    #@15d
    aput-object v4, v2, v5

    #@15f
    const/16 v4, 0x15

    #@161
    aput-object v2, v1, v4

    #@163
    .line 123
    new-array v2, v6, [Ljava/lang/String;

    #@165
    const-string/jumbo v4, "zh-hakka"

    #@168
    aput-object v4, v2, v3

    #@16a
    const-string/jumbo v4, "hak"

    #@16d
    aput-object v4, v2, v5

    #@16f
    const/16 v4, 0x16

    #@171
    aput-object v2, v1, v4

    #@173
    .line 124
    new-array v2, v6, [Ljava/lang/String;

    #@175
    const-string/jumbo v4, "zh-min"

    #@178
    aput-object v4, v2, v3

    #@17a
    const-string/jumbo v4, "nan-x-zh-min"

    #@17d
    aput-object v4, v2, v5

    #@17f
    const/16 v4, 0x17

    #@181
    aput-object v2, v1, v4

    #@183
    .line 125
    new-array v2, v6, [Ljava/lang/String;

    #@185
    const-string/jumbo v4, "zh-min-nan"

    #@188
    aput-object v4, v2, v3

    #@18a
    const-string/jumbo v4, "nan"

    #@18d
    aput-object v4, v2, v5

    #@18f
    const/16 v4, 0x18

    #@191
    aput-object v2, v1, v4

    #@193
    .line 126
    new-array v2, v6, [Ljava/lang/String;

    #@195
    const-string/jumbo v4, "zh-xiang"

    #@198
    aput-object v4, v2, v3

    #@19a
    const-string/jumbo v4, "hsn"

    #@19d
    aput-object v4, v2, v5

    #@19f
    const/16 v4, 0x19

    #@1a1
    aput-object v2, v1, v4

    #@1a3
    .line 128
    .local v1, "entries":[[Ljava/lang/String;
    array-length v4, v1

    #@1a4
    move v2, v3

    #@1a5
    :goto_0
    if-ge v2, v4, :cond_0

    #@1a7
    aget-object v0, v1, v2

    #@1a9
    .line 129
    .local v0, "e":[Ljava/lang/String;
    sget-object v5, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    #@1ab
    aget-object v6, v0, v3

    #@1ad
    invoke-static {v6}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@1b0
    move-result-object v6

    #@1b1
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b4
    .line 128
    add-int/lit8 v2, v2, 0x1

    #@1b6
    goto :goto_0

    #@1b7
    .line 41
    .end local v0    # "e":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@8
    .line 54
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    #@d
    .line 55
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@12
    .line 56
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    #@17
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@1d
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@23
    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@29
    .line 133
    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 694
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 698
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 702
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 678
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 674
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 706
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 710
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 686
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 682
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 690
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ne v2, v1, :cond_0

    #@8
    .line 639
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    #@b
    move-result v2

    #@c
    .line 638
    if-eqz v2, :cond_0

    #@e
    .line 640
    const-string/jumbo v2, "x"

    #@11
    invoke-static {v2, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 638
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    move v0, v1

    #@19
    .line 640
    goto :goto_0
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 644
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 649
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 650
    .local v0, "len":I
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/16 v1, 0x8

    #@9
    if-gt v0, v1, :cond_0

    #@b
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 594
    .local v0, "len":I
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/16 v1, 0x8

    #@9
    if-gt v0, v1, :cond_0

    #@b
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 656
    const-string/jumbo v0, "x"

    #@a
    invoke-static {v0, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 655
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static isPrivateusePrefixChar(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    .line 660
    const-string/jumbo v0, "x"

    #@3
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static isPrivateuseSubtag(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 665
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 666
    .local v0, "len":I
    const/4 v1, 0x1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/16 v1, 0x8

    #@9
    if-gt v0, v1, :cond_0

    #@b
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 612
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x3

    #@12
    if-ne v0, v1, :cond_2

    #@14
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumericString(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    .line 611
    :goto_0
    return v0

    #@19
    :cond_1
    const/4 v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 612
    :cond_2
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method public static isScript(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static isVariant(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 619
    .local v0, "len":I
    const/4 v2, 0x5

    #@6
    if-lt v0, v2, :cond_0

    #@8
    const/16 v2, 0x8

    #@a
    if-gt v0, v2, :cond_0

    #@c
    .line 620
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 622
    :cond_0
    const/4 v2, 0x4

    #@12
    if-ne v0, v2, :cond_2

    #@14
    .line 623
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 624
    const/4 v2, 0x1

    #@1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v2

    #@23
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    #@26
    move-result v2

    #@27
    .line 623
    if-eqz v2, :cond_1

    #@29
    .line 625
    const/4 v2, 0x2

    #@2a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v2

    #@2e
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    #@31
    move-result v2

    #@32
    .line 623
    if-eqz v2, :cond_1

    #@34
    .line 626
    const/4 v1, 0x3

    #@35
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v1

    #@39
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    #@3c
    move-result v1

    #@3d
    .line 623
    :cond_1
    return v1

    #@3e
    .line 628
    :cond_2
    return v1
.end method

.method public static parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;
    .locals 6
    .param p0, "languageTag"    # Ljava/lang/String;
    .param p1, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 182
    if-nez p1, :cond_2

    #@2
    .line 183
    new-instance p1, Lsun/util/locale/ParseStatus;

    #@4
    .end local p1    # "sts":Lsun/util/locale/ParseStatus;
    invoke-direct {p1}, Lsun/util/locale/ParseStatus;-><init>()V

    #@7
    .line 191
    .restart local p1    # "sts":Lsun/util/locale/ParseStatus;
    :goto_0
    sget-object v4, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    #@9
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Ljava/lang/String;

    #@13
    .line 192
    .local v0, "gfmap":[Ljava/lang/String;
    if-eqz v0, :cond_3

    #@15
    .line 194
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    #@17
    const/4 v4, 0x1

    #@18
    aget-object v4, v0, v4

    #@1a
    const-string/jumbo v5, "-"

    #@1d
    invoke-direct {v1, v4, v5}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 199
    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    :goto_1
    new-instance v3, Lsun/util/locale/LanguageTag;

    #@22
    invoke-direct {v3}, Lsun/util/locale/LanguageTag;-><init>()V

    #@25
    .line 202
    .local v3, "tag":Lsun/util/locale/LanguageTag;
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 203
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@2e
    .line 204
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@31
    .line 205
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@34
    .line 206
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@37
    .line 207
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@3a
    .line 209
    :cond_0
    invoke-direct {v3, v1, p1}, Lsun/util/locale/LanguageTag;->parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    #@3d
    .line 211
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_1

    #@43
    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->isError()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_4

    #@49
    .line 221
    :cond_1
    :goto_2
    return-object v3

    #@4a
    .line 185
    .end local v0    # "gfmap":[Ljava/lang/String;
    .end local v1    # "itr":Lsun/util/locale/StringTokenIterator;
    .end local v3    # "tag":Lsun/util/locale/LanguageTag;
    :cond_2
    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->reset()V

    #@4d
    goto :goto_0

    #@4e
    .line 196
    .restart local v0    # "gfmap":[Ljava/lang/String;
    :cond_3
    new-instance v1, Lsun/util/locale/StringTokenIterator;

    #@50
    const-string/jumbo v4, "-"

    #@53
    invoke-direct {v1, p0, v4}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .restart local v1    # "itr":Lsun/util/locale/StringTokenIterator;
    goto :goto_1

    #@57
    .line 212
    .restart local v3    # "tag":Lsun/util/locale/LanguageTag;
    :cond_4
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .line 213
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@5e
    move-result v4

    #@5f
    iput v4, p1, Lsun/util/locale/ParseStatus;->errorIndex:I

    #@61
    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@64
    move-result v4

    #@65
    if-nez v4, :cond_5

    #@67
    .line 215
    const-string/jumbo v4, "Empty subtag"

    #@6a
    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    #@6c
    goto :goto_2

    #@6d
    .line 217
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "Invalid subtag: "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    #@83
    goto :goto_2
.end method

.method private parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 7
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 336
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 337
    :cond_0
    const/4 v5, 0x0

    #@d
    return v5

    #@e
    .line 340
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 342
    .local v0, "found":Z
    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_3

    #@15
    .line 343
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 344
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_3

    #@1f
    .line 345
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@22
    move-result v4

    #@23
    .line 346
    .local v4, "start":I
    move-object v3, v1

    #@24
    .line 347
    .local v3, "singleton":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    .line 349
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@2c
    .line 350
    :goto_1
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_2

    #@32
    .line 351
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 352
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 353
    const-string/jumbo v5, "-"

    #@3f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 354
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@49
    move-result v5

    #@4a
    iput v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@4c
    .line 358
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@4f
    goto :goto_1

    #@50
    .line 361
    :cond_2
    iget v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@52
    if-gt v5, v4, :cond_4

    #@54
    .line 362
    iput v4, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    #@56
    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Incomplete extension \'"

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    const-string/jumbo v6, "\'"

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    iput-object v5, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    #@73
    .line 376
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "singleton":Ljava/lang/String;
    .end local v4    # "start":I
    :cond_3
    return v0

    #@74
    .line 367
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "singleton":Ljava/lang/String;
    .restart local v4    # "start":I
    :cond_4
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@76
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_5

    #@7c
    .line 368
    new-instance v5, Ljava/util/ArrayList;

    #@7e
    const/4 v6, 0x4

    #@7f
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@82
    iput-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@84
    .line 370
    :cond_5
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8d
    .line 371
    const/4 v0, 0x1

    #@8e
    goto :goto_0
.end method

.method private parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 4
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 247
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 248
    :cond_0
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 251
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 253
    .local v0, "found":Z
    :cond_2
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_3

    #@16
    .line 254
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 255
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_4

    #@20
    .line 272
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0

    #@21
    .line 258
    .restart local v1    # "s":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    #@22
    .line 259
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_5

    #@2a
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    iput-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@31
    .line 262
    :cond_5
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@33
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 263
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@39
    move-result v2

    #@3a
    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@3c
    .line 264
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@3f
    .line 266
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@41
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@44
    move-result v2

    #@45
    if-ne v2, v3, :cond_2

    #@47
    goto :goto_0
.end method

.method private parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 3
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 229
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 230
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 233
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 235
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 236
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 237
    const/4 v0, 0x1

    #@1a
    .line 238
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@1c
    .line 239
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@1f
    move-result v2

    #@20
    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@22
    .line 240
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 243
    :cond_2
    return v0
.end method

.method public static parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;
    .locals 24
    .param p0, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p1, "localeExtensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    .line 417
    new-instance v16, Lsun/util/locale/LanguageTag;

    #@2
    invoke-direct/range {v16 .. v16}, Lsun/util/locale/LanguageTag;-><init>()V

    #@5
    .line 419
    .local v16, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 420
    .local v7, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@c
    move-result-object v15

    #@d
    .line 421
    .local v15, "script":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@10
    move-result-object v14

    #@11
    .line 422
    .local v14, "region":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@14
    move-result-object v18

    #@15
    .line 424
    .local v18, "variant":Ljava/lang/String;
    const/4 v6, 0x0

    #@16
    .line 426
    .local v6, "hasSubtag":Z
    const/4 v12, 0x0

    #@17
    .line 428
    .local v12, "privuseVar":Ljava/lang/String;
    invoke-static {v7}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@1a
    move-result v21

    #@1b
    if-eqz v21, :cond_1

    #@1d
    .line 430
    const-string/jumbo v21, "iw"

    #@20
    move-object/from16 v0, v21

    #@22
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v21

    #@26
    if-eqz v21, :cond_9

    #@28
    .line 431
    const-string/jumbo v7, "he"

    #@2b
    .line 437
    :cond_0
    :goto_0
    move-object/from16 v0, v16

    #@2d
    iput-object v7, v0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@2f
    .line 440
    :cond_1
    invoke-static {v15}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@32
    move-result v21

    #@33
    if-eqz v21, :cond_2

    #@35
    .line 441
    invoke-static {v15}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v21

    #@39
    move-object/from16 v0, v21

    #@3b
    move-object/from16 v1, v16

    #@3d
    iput-object v0, v1, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    #@3f
    .line 442
    const/4 v6, 0x1

    #@40
    .line 445
    :cond_2
    invoke-static {v14}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@43
    move-result v21

    #@44
    if-eqz v21, :cond_3

    #@46
    .line 446
    invoke-static {v14}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v21

    #@4a
    move-object/from16 v0, v21

    #@4c
    move-object/from16 v1, v16

    #@4e
    iput-object v0, v1, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@50
    .line 447
    const/4 v6, 0x1

    #@51
    .line 451
    :cond_3
    move-object/from16 v0, v16

    #@53
    iget-object v0, v0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@55
    move-object/from16 v21, v0

    #@57
    const-string/jumbo v22, "no"

    #@5a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v21

    #@5e
    if-eqz v21, :cond_4

    #@60
    move-object/from16 v0, v16

    #@62
    iget-object v0, v0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@64
    move-object/from16 v21, v0

    #@66
    const-string/jumbo v22, "NO"

    #@69
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v21

    #@6d
    if-eqz v21, :cond_4

    #@6f
    const-string/jumbo v21, "NY"

    #@72
    move-object/from16 v0, v18

    #@74
    move-object/from16 v1, v21

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v21

    #@7a
    if-eqz v21, :cond_4

    #@7c
    .line 452
    const-string/jumbo v21, "nn"

    #@7f
    move-object/from16 v0, v21

    #@81
    move-object/from16 v1, v16

    #@83
    iput-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@85
    .line 453
    const-string/jumbo v18, ""

    #@88
    .line 456
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@8b
    move-result v21

    #@8c
    if-lez v21, :cond_8

    #@8e
    .line 457
    const/16 v19, 0x0

    #@90
    .line 458
    .local v19, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Lsun/util/locale/StringTokenIterator;

    #@92
    const-string/jumbo v21, "_"

    #@95
    move-object/from16 v0, v20

    #@97
    move-object/from16 v1, v18

    #@99
    move-object/from16 v2, v21

    #@9b
    invoke-direct {v0, v1, v2}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9e
    .line 459
    .end local v19    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "varitr":Lsun/util/locale/StringTokenIterator;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@a1
    move-result v21

    #@a2
    if-nez v21, :cond_5

    #@a4
    .line 460
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@a7
    move-result-object v17

    #@a8
    .line 461
    .local v17, "var":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    #@ab
    move-result v21

    #@ac
    if-nez v21, :cond_b

    #@ae
    .line 470
    .end local v17    # "var":Ljava/lang/String;
    :cond_5
    if-eqz v19, :cond_6

    #@b0
    .line 471
    move-object/from16 v0, v19

    #@b2
    move-object/from16 v1, v16

    #@b4
    iput-object v0, v1, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@b6
    .line 472
    const/4 v6, 0x1

    #@b7
    .line 474
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@ba
    move-result v21

    #@bb
    if-nez v21, :cond_8

    #@bd
    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    .line 477
    .local v3, "buf":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@c5
    move-result v21

    #@c6
    if-nez v21, :cond_7

    #@c8
    .line 478
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@cb
    move-result-object v13

    #@cc
    .line 479
    .local v13, "prvv":Ljava/lang/String;
    invoke-static {v13}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@cf
    move-result v21

    #@d0
    if-nez v21, :cond_d

    #@d2
    .line 489
    .end local v13    # "prvv":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@d5
    move-result v21

    #@d6
    if-lez v21, :cond_8

    #@d8
    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v12

    #@dc
    .line 495
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v12    # "privuseVar":Ljava/lang/String;
    .end local v20    # "varitr":Lsun/util/locale/StringTokenIterator;
    :cond_8
    const/4 v5, 0x0

    #@dd
    .line 496
    .local v5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@de
    .line 498
    .local v11, "privateuse":Ljava/lang/String;
    if-eqz p1, :cond_11

    #@e0
    .line 499
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@e3
    move-result-object v10

    #@e4
    .line 500
    .local v10, "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e7
    move-result-object v9

    #@e8
    .end local v5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "privateuse":Ljava/lang/String;
    .local v9, "locextKey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@eb
    move-result v21

    #@ec
    if-eqz v21, :cond_11

    #@ee
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f1
    move-result-object v8

    #@f2
    check-cast v8, Ljava/lang/Character;

    #@f4
    .line 501
    .local v8, "locextKey":Ljava/lang/Character;
    move-object/from16 v0, p1

    #@f6
    invoke-virtual {v0, v8}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    #@f9
    move-result-object v4

    #@fa
    .line 502
    .local v4, "ext":Lsun/util/locale/Extension;
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    #@fd
    move-result v21

    #@fe
    invoke-static/range {v21 .. v21}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@101
    move-result v21

    #@102
    if-eqz v21, :cond_f

    #@104
    .line 503
    invoke-virtual {v4}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    #@107
    move-result-object v11

    #@108
    .local v11, "privateuse":Ljava/lang/String;
    goto :goto_3

    #@109
    .line 432
    .end local v4    # "ext":Lsun/util/locale/Extension;
    .end local v8    # "locextKey":Ljava/lang/Character;
    .end local v9    # "locextKey$iterator":Ljava/util/Iterator;
    .end local v10    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v11    # "privateuse":Ljava/lang/String;
    .restart local v12    # "privuseVar":Ljava/lang/String;
    :cond_9
    const-string/jumbo v21, "ji"

    #@10c
    move-object/from16 v0, v21

    #@10e
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v21

    #@112
    if-eqz v21, :cond_a

    #@114
    .line 433
    const-string/jumbo v7, "yi"

    #@117
    goto/16 :goto_0

    #@119
    .line 434
    :cond_a
    const-string/jumbo v21, "in"

    #@11c
    move-object/from16 v0, v21

    #@11e
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@121
    move-result v21

    #@122
    if-eqz v21, :cond_0

    #@124
    .line 435
    const-string/jumbo v7, "id"

    #@127
    goto/16 :goto_0

    #@129
    .line 464
    .restart local v17    # "var":Ljava/lang/String;
    .restart local v20    # "varitr":Lsun/util/locale/StringTokenIterator;
    :cond_b
    if-nez v19, :cond_c

    #@12b
    .line 465
    new-instance v19, Ljava/util/ArrayList;

    #@12d
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@130
    .line 467
    :cond_c
    move-object/from16 v0, v19

    #@132
    move-object/from16 v1, v17

    #@134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@137
    .line 468
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@13a
    goto/16 :goto_1

    #@13c
    .line 483
    .end local v17    # "var":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    .restart local v13    # "prvv":Ljava/lang/String;
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@13f
    move-result v21

    #@140
    if-lez v21, :cond_e

    #@142
    .line 484
    const-string/jumbo v21, "-"

    #@145
    move-object/from16 v0, v21

    #@147
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    .line 486
    :cond_e
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    .line 487
    invoke-virtual/range {v20 .. v20}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@150
    goto/16 :goto_2

    #@152
    .line 505
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v12    # "privuseVar":Ljava/lang/String;
    .end local v13    # "prvv":Ljava/lang/String;
    .end local v20    # "varitr":Lsun/util/locale/StringTokenIterator;
    .restart local v4    # "ext":Lsun/util/locale/Extension;
    .restart local v8    # "locextKey":Ljava/lang/Character;
    .restart local v9    # "locextKey$iterator":Ljava/util/Iterator;
    .restart local v10    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :cond_f
    if-nez v5, :cond_10

    #@154
    .line 506
    new-instance v5, Ljava/util/ArrayList;

    #@156
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@159
    .line 508
    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    invoke-virtual {v8}, Ljava/lang/Character;->toString()Ljava/lang/String;

    #@161
    move-result-object v22

    #@162
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v21

    #@166
    const-string/jumbo v22, "-"

    #@169
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v21

    #@16d
    invoke-virtual {v4}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    #@170
    move-result-object v22

    #@171
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v21

    #@175
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v21

    #@179
    move-object/from16 v0, v21

    #@17b
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17e
    goto/16 :goto_3

    #@180
    .line 513
    .end local v4    # "ext":Lsun/util/locale/Extension;
    .end local v8    # "locextKey":Ljava/lang/Character;
    .end local v9    # "locextKey$iterator":Ljava/util/Iterator;
    .end local v10    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :cond_11
    if-eqz v5, :cond_12

    #@182
    .line 514
    move-object/from16 v0, v16

    #@184
    iput-object v5, v0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@186
    .line 515
    const/4 v6, 0x1

    #@187
    .line 519
    :cond_12
    if-eqz v12, :cond_13

    #@189
    .line 520
    if-nez v11, :cond_17

    #@18b
    .line 521
    new-instance v21, Ljava/lang/StringBuilder;

    #@18d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@190
    const-string/jumbo v22, "lvariant-"

    #@193
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v21

    #@197
    move-object/from16 v0, v21

    #@199
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v21

    #@19d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v11

    #@1a1
    .line 528
    :cond_13
    :goto_4
    if-eqz v11, :cond_14

    #@1a3
    .line 529
    move-object/from16 v0, v16

    #@1a5
    iput-object v11, v0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    #@1a7
    .line 532
    :cond_14
    move-object/from16 v0, v16

    #@1a9
    iget-object v0, v0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@1ab
    move-object/from16 v21, v0

    #@1ad
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@1b0
    move-result v21

    #@1b1
    if-nez v21, :cond_16

    #@1b3
    if-nez v6, :cond_15

    #@1b5
    if-nez v11, :cond_16

    #@1b7
    .line 536
    :cond_15
    const-string/jumbo v21, "und"

    #@1ba
    move-object/from16 v0, v21

    #@1bc
    move-object/from16 v1, v16

    #@1be
    iput-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@1c0
    .line 539
    :cond_16
    return-object v16

    #@1c1
    .line 523
    :cond_17
    new-instance v21, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    move-object/from16 v0, v21

    #@1c8
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v21

    #@1cc
    const-string/jumbo v22, "-"

    #@1cf
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v21

    #@1d3
    const-string/jumbo v22, "lvariant"

    #@1d6
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v21

    #@1da
    .line 524
    const-string/jumbo v22, "-"

    #@1dd
    .line 523
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v21

    #@1e1
    .line 524
    const-string/jumbo v22, "_"

    #@1e4
    const-string/jumbo v23, "-"

    #@1e7
    move-object/from16 v0, v22

    #@1e9
    move-object/from16 v1, v23

    #@1eb
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1ee
    move-result-object v22

    #@1ef
    .line 523
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v21

    #@1f3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v11

    #@1f7
    .restart local v11    # "privateuse":Ljava/lang/String;
    goto :goto_4
.end method

.method private parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 5
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 380
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 381
    :cond_0
    const/4 v4, 0x0

    #@d
    return v4

    #@e
    .line 384
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 386
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 387
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 388
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    #@1c
    move-result v3

    #@1d
    .line 389
    .local v3, "start":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    .line 391
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 392
    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 393
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 394
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_4

    #@35
    .line 403
    :cond_2
    iget v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@37
    if-gt v4, v3, :cond_5

    #@39
    .line 405
    iput v3, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    #@3b
    .line 406
    const-string/jumbo v4, "Incomplete privateuse"

    #@3e
    iput-object v4, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    #@40
    .line 413
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "start":I
    :cond_3
    :goto_1
    return v0

    #@41
    .line 397
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "start":I
    :cond_4
    const-string/jumbo v4, "-"

    #@44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 398
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@4e
    move-result v4

    #@4f
    iput v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@51
    .line 400
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@54
    goto :goto_0

    #@55
    .line 408
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    iput-object v4, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    #@5b
    .line 409
    const/4 v0, 0x1

    #@5c
    goto :goto_1
.end method

.method private parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 3
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 294
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 295
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 298
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 300
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 301
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 302
    const/4 v0, 0x1

    #@1a
    .line 303
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@1c
    .line 304
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@1f
    move-result v2

    #@20
    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@22
    .line 305
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 308
    :cond_2
    return v0
.end method

.method private parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 3
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 276
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 277
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 280
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 282
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 283
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 284
    const/4 v0, 0x1

    #@1a
    .line 285
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    #@1c
    .line 286
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@1f
    move-result v2

    #@20
    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@22
    .line 287
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 290
    :cond_2
    return v0
.end method

.method private parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .locals 4
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    #@0
    .prologue
    .line 312
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 313
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 316
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 318
    .local v0, "found":Z
    :goto_0
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 319
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 320
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 332
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return v0

    #@20
    .line 323
    .restart local v1    # "s":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    #@21
    .line 324
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_4

    #@29
    .line 325
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    const/4 v3, 0x3

    #@2c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    iput-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@31
    .line 327
    :cond_4
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@33
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 328
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    #@39
    move-result v2

    #@3a
    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    #@3c
    .line 329
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@3f
    goto :goto_0
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 576
    :cond_0
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getExtlangs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 554
    :cond_0
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 569
    :cond_0
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 717
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@a
    move-result v7

    #@b
    if-lez v7, :cond_4

    #@d
    .line 718
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    #@f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 720
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    #@14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    .local v3, "extlang$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_0

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/String;

    #@24
    .line 721
    .local v2, "extlang":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@27
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_0

    #@2f
    .line 724
    .end local v2    # "extlang":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    #@31
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@34
    move-result v7

    #@35
    if-lez v7, :cond_1

    #@37
    .line 725
    const-string/jumbo v7, "-"

    #@3a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    iget-object v8, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    #@40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 728
    :cond_1
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@45
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@48
    move-result v7

    #@49
    if-lez v7, :cond_2

    #@4b
    .line 729
    const-string/jumbo v7, "-"

    #@4e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    iget-object v8, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 732
    :cond_2
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    #@59
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v6

    #@5d
    .local v6, "variant$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_3

    #@63
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v5

    #@67
    check-cast v5, Ljava/lang/String;

    #@69
    .line 733
    .local v5, "variant":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@6c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    goto :goto_1

    #@74
    .line 736
    .end local v5    # "variant":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    #@76
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v1

    #@7a
    .local v1, "extension$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_4

    #@80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Ljava/lang/String;

    #@86
    .line 737
    .local v0, "extension":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@89
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    goto :goto_2

    #@91
    .line 740
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "extension$iterator":Ljava/util/Iterator;
    .end local v3    # "extlang$iterator":Ljava/util/Iterator;
    .end local v6    # "variant$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    #@93
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@96
    move-result v7

    #@97
    if-lez v7, :cond_6

    #@99
    .line 741
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@9c
    move-result v7

    #@9d
    if-lez v7, :cond_5

    #@9f
    .line 742
    const-string/jumbo v7, "-"

    #@a2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 744
    :cond_5
    iget-object v7, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    #@a7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 747
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    return-object v7
.end method
