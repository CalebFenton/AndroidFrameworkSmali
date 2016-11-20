.class public Landroid/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JDKIMPL:Z = false

.field public static final PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final SEP:Ljava/lang/String; = "-"

.field public static UNDETERMINED:Ljava/lang/String;


# instance fields
.field private _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _privateuse:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variants:Ljava/util/List;
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
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const-class v2, Landroid/icu/impl/locale/LanguageTag;

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    move v2, v3

    #@c
    :goto_0
    sput-boolean v2, Landroid/icu/impl/locale/LanguageTag;->-assertionsDisabled:Z

    #@e
    .line 28
    const-string/jumbo v2, "und"

    #@11
    sput-object v2, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    #@13
    .line 46
    new-instance v2, Ljava/util/HashMap;

    #@15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@18
    .line 45
    sput-object v2, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    #@1a
    .line 80
    const/16 v2, 0x1a

    #@1c
    new-array v1, v2, [[Ljava/lang/String;

    #@1e
    .line 82
    new-array v2, v6, [Ljava/lang/String;

    #@20
    const-string/jumbo v5, "art-lojban"

    #@23
    aput-object v5, v2, v3

    #@25
    const-string/jumbo v5, "jbo"

    #@28
    aput-object v5, v2, v4

    #@2a
    aput-object v2, v1, v3

    #@2c
    .line 83
    new-array v2, v6, [Ljava/lang/String;

    #@2e
    const-string/jumbo v5, "cel-gaulish"

    #@31
    aput-object v5, v2, v3

    #@33
    const-string/jumbo v5, "xtg-x-cel-gaulish"

    #@36
    aput-object v5, v2, v4

    #@38
    aput-object v2, v1, v4

    #@3a
    .line 84
    new-array v2, v6, [Ljava/lang/String;

    #@3c
    const-string/jumbo v5, "en-GB-oed"

    #@3f
    aput-object v5, v2, v3

    #@41
    const-string/jumbo v5, "en-GB-x-oed"

    #@44
    aput-object v5, v2, v4

    #@46
    aput-object v2, v1, v6

    #@48
    .line 85
    new-array v2, v6, [Ljava/lang/String;

    #@4a
    const-string/jumbo v5, "i-ami"

    #@4d
    aput-object v5, v2, v3

    #@4f
    const-string/jumbo v5, "ami"

    #@52
    aput-object v5, v2, v4

    #@54
    const/4 v5, 0x3

    #@55
    aput-object v2, v1, v5

    #@57
    .line 86
    new-array v2, v6, [Ljava/lang/String;

    #@59
    const-string/jumbo v5, "i-bnn"

    #@5c
    aput-object v5, v2, v3

    #@5e
    const-string/jumbo v5, "bnn"

    #@61
    aput-object v5, v2, v4

    #@63
    const/4 v5, 0x4

    #@64
    aput-object v2, v1, v5

    #@66
    .line 87
    new-array v2, v6, [Ljava/lang/String;

    #@68
    const-string/jumbo v5, "i-default"

    #@6b
    aput-object v5, v2, v3

    #@6d
    const-string/jumbo v5, "en-x-i-default"

    #@70
    aput-object v5, v2, v4

    #@72
    const/4 v5, 0x5

    #@73
    aput-object v2, v1, v5

    #@75
    .line 88
    new-array v2, v6, [Ljava/lang/String;

    #@77
    const-string/jumbo v5, "i-enochian"

    #@7a
    aput-object v5, v2, v3

    #@7c
    const-string/jumbo v5, "und-x-i-enochian"

    #@7f
    aput-object v5, v2, v4

    #@81
    const/4 v5, 0x6

    #@82
    aput-object v2, v1, v5

    #@84
    .line 89
    new-array v2, v6, [Ljava/lang/String;

    #@86
    const-string/jumbo v5, "i-hak"

    #@89
    aput-object v5, v2, v3

    #@8b
    const-string/jumbo v5, "hak"

    #@8e
    aput-object v5, v2, v4

    #@90
    const/4 v5, 0x7

    #@91
    aput-object v2, v1, v5

    #@93
    .line 90
    new-array v2, v6, [Ljava/lang/String;

    #@95
    const-string/jumbo v5, "i-klingon"

    #@98
    aput-object v5, v2, v3

    #@9a
    const-string/jumbo v5, "tlh"

    #@9d
    aput-object v5, v2, v4

    #@9f
    const/16 v5, 0x8

    #@a1
    aput-object v2, v1, v5

    #@a3
    .line 91
    new-array v2, v6, [Ljava/lang/String;

    #@a5
    const-string/jumbo v5, "i-lux"

    #@a8
    aput-object v5, v2, v3

    #@aa
    const-string/jumbo v5, "lb"

    #@ad
    aput-object v5, v2, v4

    #@af
    const/16 v5, 0x9

    #@b1
    aput-object v2, v1, v5

    #@b3
    .line 92
    new-array v2, v6, [Ljava/lang/String;

    #@b5
    const-string/jumbo v5, "i-mingo"

    #@b8
    aput-object v5, v2, v3

    #@ba
    const-string/jumbo v5, "see-x-i-mingo"

    #@bd
    aput-object v5, v2, v4

    #@bf
    const/16 v5, 0xa

    #@c1
    aput-object v2, v1, v5

    #@c3
    .line 93
    new-array v2, v6, [Ljava/lang/String;

    #@c5
    const-string/jumbo v5, "i-navajo"

    #@c8
    aput-object v5, v2, v3

    #@ca
    const-string/jumbo v5, "nv"

    #@cd
    aput-object v5, v2, v4

    #@cf
    const/16 v5, 0xb

    #@d1
    aput-object v2, v1, v5

    #@d3
    .line 94
    new-array v2, v6, [Ljava/lang/String;

    #@d5
    const-string/jumbo v5, "i-pwn"

    #@d8
    aput-object v5, v2, v3

    #@da
    const-string/jumbo v5, "pwn"

    #@dd
    aput-object v5, v2, v4

    #@df
    const/16 v5, 0xc

    #@e1
    aput-object v2, v1, v5

    #@e3
    .line 95
    new-array v2, v6, [Ljava/lang/String;

    #@e5
    const-string/jumbo v5, "i-tao"

    #@e8
    aput-object v5, v2, v3

    #@ea
    const-string/jumbo v5, "tao"

    #@ed
    aput-object v5, v2, v4

    #@ef
    const/16 v5, 0xd

    #@f1
    aput-object v2, v1, v5

    #@f3
    .line 96
    new-array v2, v6, [Ljava/lang/String;

    #@f5
    const-string/jumbo v5, "i-tay"

    #@f8
    aput-object v5, v2, v3

    #@fa
    const-string/jumbo v5, "tay"

    #@fd
    aput-object v5, v2, v4

    #@ff
    const/16 v5, 0xe

    #@101
    aput-object v2, v1, v5

    #@103
    .line 97
    new-array v2, v6, [Ljava/lang/String;

    #@105
    const-string/jumbo v5, "i-tsu"

    #@108
    aput-object v5, v2, v3

    #@10a
    const-string/jumbo v5, "tsu"

    #@10d
    aput-object v5, v2, v4

    #@10f
    const/16 v5, 0xf

    #@111
    aput-object v2, v1, v5

    #@113
    .line 98
    new-array v2, v6, [Ljava/lang/String;

    #@115
    const-string/jumbo v5, "no-bok"

    #@118
    aput-object v5, v2, v3

    #@11a
    const-string/jumbo v5, "nb"

    #@11d
    aput-object v5, v2, v4

    #@11f
    const/16 v5, 0x10

    #@121
    aput-object v2, v1, v5

    #@123
    .line 99
    new-array v2, v6, [Ljava/lang/String;

    #@125
    const-string/jumbo v5, "no-nyn"

    #@128
    aput-object v5, v2, v3

    #@12a
    const-string/jumbo v5, "nn"

    #@12d
    aput-object v5, v2, v4

    #@12f
    const/16 v5, 0x11

    #@131
    aput-object v2, v1, v5

    #@133
    .line 100
    new-array v2, v6, [Ljava/lang/String;

    #@135
    const-string/jumbo v5, "sgn-BE-FR"

    #@138
    aput-object v5, v2, v3

    #@13a
    const-string/jumbo v5, "sfb"

    #@13d
    aput-object v5, v2, v4

    #@13f
    const/16 v5, 0x12

    #@141
    aput-object v2, v1, v5

    #@143
    .line 101
    new-array v2, v6, [Ljava/lang/String;

    #@145
    const-string/jumbo v5, "sgn-BE-NL"

    #@148
    aput-object v5, v2, v3

    #@14a
    const-string/jumbo v5, "vgt"

    #@14d
    aput-object v5, v2, v4

    #@14f
    const/16 v5, 0x13

    #@151
    aput-object v2, v1, v5

    #@153
    .line 102
    new-array v2, v6, [Ljava/lang/String;

    #@155
    const-string/jumbo v5, "sgn-CH-DE"

    #@158
    aput-object v5, v2, v3

    #@15a
    const-string/jumbo v5, "sgg"

    #@15d
    aput-object v5, v2, v4

    #@15f
    const/16 v5, 0x14

    #@161
    aput-object v2, v1, v5

    #@163
    .line 103
    new-array v2, v6, [Ljava/lang/String;

    #@165
    const-string/jumbo v5, "zh-guoyu"

    #@168
    aput-object v5, v2, v3

    #@16a
    const-string/jumbo v5, "cmn"

    #@16d
    aput-object v5, v2, v4

    #@16f
    const/16 v5, 0x15

    #@171
    aput-object v2, v1, v5

    #@173
    .line 104
    new-array v2, v6, [Ljava/lang/String;

    #@175
    const-string/jumbo v5, "zh-hakka"

    #@178
    aput-object v5, v2, v3

    #@17a
    const-string/jumbo v5, "hak"

    #@17d
    aput-object v5, v2, v4

    #@17f
    const/16 v5, 0x16

    #@181
    aput-object v2, v1, v5

    #@183
    .line 105
    new-array v2, v6, [Ljava/lang/String;

    #@185
    const-string/jumbo v5, "zh-min"

    #@188
    aput-object v5, v2, v3

    #@18a
    const-string/jumbo v5, "nan-x-zh-min"

    #@18d
    aput-object v5, v2, v4

    #@18f
    const/16 v5, 0x17

    #@191
    aput-object v2, v1, v5

    #@193
    .line 106
    new-array v2, v6, [Ljava/lang/String;

    #@195
    const-string/jumbo v5, "zh-min-nan"

    #@198
    aput-object v5, v2, v3

    #@19a
    const-string/jumbo v5, "nan"

    #@19d
    aput-object v5, v2, v4

    #@19f
    const/16 v5, 0x18

    #@1a1
    aput-object v2, v1, v5

    #@1a3
    .line 107
    new-array v2, v6, [Ljava/lang/String;

    #@1a5
    const-string/jumbo v5, "zh-xiang"

    #@1a8
    aput-object v5, v2, v3

    #@1aa
    const-string/jumbo v5, "hsn"

    #@1ad
    aput-object v5, v2, v4

    #@1af
    const/16 v4, 0x19

    #@1b1
    aput-object v2, v1, v4

    #@1b3
    .line 109
    .local v1, "entries":[[Ljava/lang/String;
    array-length v4, v1

    #@1b4
    move v2, v3

    #@1b5
    :goto_1
    if-ge v2, v4, :cond_1

    #@1b7
    aget-object v0, v1, v2

    #@1b9
    .line 110
    .local v0, "e":[Ljava/lang/String;
    sget-object v5, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    #@1bb
    new-instance v6, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    #@1bd
    aget-object v7, v0, v3

    #@1bf
    invoke-direct {v6, v7}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    #@1c2
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c5
    .line 109
    add-int/lit8 v2, v2, 0x1

    #@1c7
    goto :goto_1

    #@1c8
    .end local v0    # "e":[Ljava/lang/String;
    .end local v1    # "entries":[[Ljava/lang/String;
    :cond_0
    move v2, v4

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 20
    .restart local v1    # "entries":[[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@8
    .line 35
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    #@d
    .line 36
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    #@12
    .line 37
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    #@17
    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    #@1d
    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    #@23
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    #@29
    .line 114
    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 678
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 682
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 686
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 662
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 658
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 690
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 694
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 670
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 666
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 674
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 624
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ne v2, v1, :cond_0

    #@8
    .line 625
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    #@b
    move-result v2

    #@c
    .line 624
    if-eqz v2, :cond_0

    #@e
    .line 626
    const-string/jumbo v2, "x"

    #@11
    invoke-static {v2, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 624
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    move v0, v1

    #@19
    .line 626
    goto :goto_0
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 630
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

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
    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x8

    #@d
    if-gt v0, v1, :cond_0

    #@f
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

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
    .line 580
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x8

    #@d
    if-gt v0, v1, :cond_0

    #@f
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 640
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 641
    const-string/jumbo v0, "x"

    #@a
    invoke-static {v0, p0}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 640
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
    .line 645
    const-string/jumbo v0, "x"

    #@3
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 650
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x8

    #@d
    if-gt v0, v1, :cond_0

    #@f
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 598
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x3

    #@12
    if-ne v0, v1, :cond_2

    #@14
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    .line 597
    :goto_0
    return v0

    #@19
    :cond_1
    const/4 v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 598
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
    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

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
    .line 604
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 605
    .local v0, "len":I
    const/4 v2, 0x5

    #@6
    if-lt v0, v2, :cond_0

    #@8
    const/16 v2, 0x8

    #@a
    if-gt v0, v2, :cond_0

    #@c
    .line 606
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 608
    :cond_0
    const/4 v2, 0x4

    #@12
    if-ne v0, v2, :cond_2

    #@14
    .line 609
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 610
    const/4 v2, 0x1

    #@1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v2

    #@23
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    #@26
    move-result v2

    #@27
    .line 609
    if-eqz v2, :cond_1

    #@29
    .line 611
    const/4 v2, 0x2

    #@2a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v2

    #@2e
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    #@31
    move-result v2

    #@32
    .line 609
    if-eqz v2, :cond_1

    #@34
    .line 612
    const/4 v1, 0x3

    #@35
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v1

    #@39
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    #@3c
    move-result v1

    #@3d
    .line 609
    :cond_1
    return v1

    #@3e
    .line 614
    :cond_2
    return v1
.end method

.method public static parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;
    .locals 9
    .param p0, "languageTag"    # Ljava/lang/String;
    .param p1, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 163
    if-nez p1, :cond_1

    #@4
    .line 164
    new-instance p1, Landroid/icu/impl/locale/ParseStatus;

    #@6
    .end local p1    # "sts":Landroid/icu/impl/locale/ParseStatus;
    invoke-direct {p1}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    #@9
    .line 170
    .restart local p1    # "sts":Landroid/icu/impl/locale/ParseStatus;
    :goto_0
    const/4 v1, 0x0

    #@a
    .line 173
    .local v1, "isGrandfathered":Z
    sget-object v7, Landroid/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    #@c
    new-instance v8, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    #@e
    invoke-direct {v8, p0}, Landroid/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    #@11
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Ljava/lang/String;

    #@17
    .line 174
    .local v0, "gfmap":[Ljava/lang/String;
    if-eqz v0, :cond_2

    #@19
    .line 176
    new-instance v2, Landroid/icu/impl/locale/StringTokenIterator;

    #@1b
    aget-object v7, v0, v6

    #@1d
    const-string/jumbo v8, "-"

    #@20
    invoke-direct {v2, v7, v8}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 177
    .local v2, "itr":Landroid/icu/impl/locale/StringTokenIterator;
    const/4 v1, 0x1

    #@24
    .line 182
    :goto_1
    new-instance v4, Landroid/icu/impl/locale/LanguageTag;

    #@26
    invoke-direct {v4}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    #@29
    .line 185
    .local v4, "tag":Landroid/icu/impl/locale/LanguageTag;
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_0

    #@2f
    .line 186
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@32
    .line 187
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@35
    .line 188
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@38
    .line 189
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@3b
    .line 190
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@3e
    .line 192
    :cond_0
    invoke-direct {v4, v2, p1}, Landroid/icu/impl/locale/LanguageTag;->parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z

    #@41
    .line 194
    if-eqz v1, :cond_7

    #@43
    .line 197
    sget-boolean v7, Landroid/icu/impl/locale/LanguageTag;->-assertionsDisabled:Z

    #@45
    if-nez v7, :cond_3

    #@47
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@4a
    move-result v7

    #@4b
    if-nez v7, :cond_3

    #@4d
    new-instance v5, Ljava/lang/AssertionError;

    #@4f
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@52
    throw v5

    #@53
    .line 166
    .end local v0    # "gfmap":[Ljava/lang/String;
    .end local v1    # "isGrandfathered":Z
    .end local v2    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    .end local v4    # "tag":Landroid/icu/impl/locale/LanguageTag;
    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->reset()V

    #@56
    goto :goto_0

    #@57
    .line 179
    .restart local v0    # "gfmap":[Ljava/lang/String;
    .restart local v1    # "isGrandfathered":Z
    :cond_2
    new-instance v2, Landroid/icu/impl/locale/StringTokenIterator;

    #@59
    const-string/jumbo v7, "-"

    #@5c
    invoke-direct {v2, p0, v7}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5f
    .restart local v2    # "itr":Landroid/icu/impl/locale/StringTokenIterator;
    goto :goto_1

    #@60
    .line 198
    .restart local v4    # "tag":Landroid/icu/impl/locale/LanguageTag;
    :cond_3
    sget-boolean v7, Landroid/icu/impl/locale/LanguageTag;->-assertionsDisabled:Z

    #@62
    if-nez v7, :cond_5

    #@64
    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_4

    #@6a
    :goto_2
    if-nez v5, :cond_5

    #@6c
    new-instance v5, Ljava/lang/AssertionError;

    #@6e
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@71
    throw v5

    #@72
    :cond_4
    move v5, v6

    #@73
    goto :goto_2

    #@74
    .line 199
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@77
    move-result v5

    #@78
    iput v5, p1, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@7a
    .line 210
    :cond_6
    :goto_3
    return-object v4

    #@7b
    .line 200
    :cond_7
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@7e
    move-result v5

    #@7f
    if-nez v5, :cond_6

    #@81
    invoke-virtual {p1}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@84
    move-result v5

    #@85
    if-nez v5, :cond_6

    #@87
    .line 201
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    .line 202
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@8e
    move-result v5

    #@8f
    iput v5, p1, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@91
    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@94
    move-result v5

    #@95
    if-nez v5, :cond_8

    #@97
    .line 204
    const-string/jumbo v5, "Empty subtag"

    #@9a
    iput-object v5, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@9c
    goto :goto_3

    #@9d
    .line 206
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v6, "Invalid subtag: "

    #@a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    iput-object v5, p1, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@b3
    goto :goto_3
.end method

.method private parseExtensions(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 7
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 325
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 326
    :cond_0
    return v6

    #@e
    .line 329
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 331
    .local v0, "found":Z
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_3

    #@15
    .line 332
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 333
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_3

    #@1f
    .line 334
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@22
    move-result v4

    #@23
    .line 335
    .local v4, "start":I
    move-object v3, v1

    #@24
    .line 336
    .local v3, "singleton":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    .line 338
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@2c
    .line 339
    :goto_1
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_2

    #@32
    .line 340
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 341
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 342
    const-string/jumbo v5, "-"

    #@3f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 343
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@49
    move-result v5

    #@4a
    iput v5, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@4c
    .line 347
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@4f
    goto :goto_1

    #@50
    .line 350
    :cond_2
    iget v5, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@52
    if-gt v5, v4, :cond_4

    #@54
    .line 351
    iput v4, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@56
    .line 352
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
    iput-object v5, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@73
    .line 365
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "singleton":Ljava/lang/String;
    .end local v4    # "start":I
    :cond_3
    return v0

    #@74
    .line 356
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "singleton":Ljava/lang/String;
    .restart local v4    # "start":I
    :cond_4
    iget-object v5, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    #@76
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@79
    move-result v5

    #@7a
    if-nez v5, :cond_5

    #@7c
    .line 357
    new-instance v5, Ljava/util/ArrayList;

    #@7e
    const/4 v6, 0x4

    #@7f
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@82
    iput-object v5, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    #@84
    .line 359
    :cond_5
    iget-object v5, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8d
    .line 360
    const/4 v0, 0x1

    #@8e
    goto :goto_0
.end method

.method private parseExtlangs(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 4
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 236
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 237
    :cond_0
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 240
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 242
    .local v0, "found":Z
    :cond_2
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_3

    #@16
    .line 243
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 244
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_4

    #@20
    .line 261
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0

    #@21
    .line 247
    .restart local v1    # "s":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    #@22
    .line 248
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    #@24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_5

    #@2a
    .line 249
    new-instance v2, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    #@31
    .line 251
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    #@33
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 252
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@39
    move-result v2

    #@3a
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@3c
    .line 253
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@3f
    .line 255
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    #@41
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@44
    move-result v2

    #@45
    if-ne v2, v3, :cond_2

    #@47
    goto :goto_0
.end method

.method private parseLanguage(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 219
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 222
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 224
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 225
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 226
    const/4 v0, 0x1

    #@1a
    .line 227
    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@1c
    .line 228
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@1f
    move-result v2

    #@20
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@22
    .line 229
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 232
    :cond_2
    return v0
.end method

.method public static parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;
    .locals 24
    .param p0, "baseLocale"    # Landroid/icu/impl/locale/BaseLocale;
    .param p1, "localeExtensions"    # Landroid/icu/impl/locale/LocaleExtensions;

    #@0
    .prologue
    .line 406
    new-instance v16, Landroid/icu/impl/locale/LanguageTag;

    #@2
    invoke-direct/range {v16 .. v16}, Landroid/icu/impl/locale/LanguageTag;-><init>()V

    #@5
    .line 408
    .local v16, "tag":Landroid/icu/impl/locale/LanguageTag;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 409
    .local v7, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@c
    move-result-object v15

    #@d
    .line 410
    .local v15, "script":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@10
    move-result-object v14

    #@11
    .line 411
    .local v14, "region":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@14
    move-result-object v18

    #@15
    .line 413
    .local v18, "variant":Ljava/lang/String;
    const/4 v6, 0x0

    #@16
    .line 415
    .local v6, "hasSubtag":Z
    const/4 v12, 0x0

    #@17
    .line 417
    .local v12, "privuseVar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@1a
    move-result v21

    #@1b
    if-lez v21, :cond_1

    #@1d
    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    #@20
    move-result v21

    #@21
    if-eqz v21, :cond_1

    #@23
    .line 420
    const-string/jumbo v21, "iw"

    #@26
    move-object/from16 v0, v21

    #@28
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v21

    #@2c
    if-eqz v21, :cond_8

    #@2e
    .line 421
    const-string/jumbo v7, "he"

    #@31
    .line 427
    :cond_0
    :goto_0
    move-object/from16 v0, v16

    #@33
    iput-object v7, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@35
    .line 430
    :cond_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@38
    move-result v21

    #@39
    if-lez v21, :cond_2

    #@3b
    invoke-static {v15}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@3e
    move-result v21

    #@3f
    if-eqz v21, :cond_2

    #@41
    .line 431
    invoke-static {v15}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v21

    #@45
    move-object/from16 v0, v21

    #@47
    move-object/from16 v1, v16

    #@49
    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    #@4b
    .line 432
    const/4 v6, 0x1

    #@4c
    .line 435
    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@4f
    move-result v21

    #@50
    if-lez v21, :cond_3

    #@52
    invoke-static {v14}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@55
    move-result v21

    #@56
    if-eqz v21, :cond_3

    #@58
    .line 436
    invoke-static {v14}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v21

    #@5c
    move-object/from16 v0, v21

    #@5e
    move-object/from16 v1, v16

    #@60
    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    #@62
    .line 437
    const/4 v6, 0x1

    #@63
    .line 448
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@66
    move-result v21

    #@67
    if-lez v21, :cond_7

    #@69
    .line 449
    const/16 v19, 0x0

    #@6b
    .line 450
    .local v19, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Landroid/icu/impl/locale/StringTokenIterator;

    #@6d
    const-string/jumbo v21, "_"

    #@70
    move-object/from16 v0, v20

    #@72
    move-object/from16 v1, v18

    #@74
    move-object/from16 v2, v21

    #@76
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    .line 451
    .end local v19    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "varitr":Landroid/icu/impl/locale/StringTokenIterator;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@7c
    move-result v21

    #@7d
    if-nez v21, :cond_4

    #@7f
    .line 452
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@82
    move-result-object v17

    #@83
    .line 453
    .local v17, "var":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    #@86
    move-result v21

    #@87
    if-nez v21, :cond_a

    #@89
    .line 466
    .end local v17    # "var":Ljava/lang/String;
    :cond_4
    if-eqz v19, :cond_5

    #@8b
    .line 467
    move-object/from16 v0, v19

    #@8d
    move-object/from16 v1, v16

    #@8f
    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    #@91
    .line 468
    const/4 v6, 0x1

    #@92
    .line 470
    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@95
    move-result v21

    #@96
    if-nez v21, :cond_7

    #@98
    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    .line 473
    .local v3, "buf":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@a0
    move-result v21

    #@a1
    if-nez v21, :cond_6

    #@a3
    .line 474
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@a6
    move-result-object v13

    #@a7
    .line 475
    .local v13, "prvv":Ljava/lang/String;
    invoke-static {v13}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@aa
    move-result v21

    #@ab
    if-nez v21, :cond_c

    #@ad
    .line 488
    .end local v13    # "prvv":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@b0
    move-result v21

    #@b1
    if-lez v21, :cond_7

    #@b3
    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v12

    #@b7
    .line 494
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v12    # "privuseVar":Ljava/lang/String;
    .end local v20    # "varitr":Landroid/icu/impl/locale/StringTokenIterator;
    :cond_7
    const/4 v5, 0x0

    #@b8
    .line 495
    .local v5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@b9
    .line 497
    .local v11, "privateuse":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    #@bc
    move-result-object v10

    #@bd
    .line 498
    .local v10, "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c0
    move-result-object v9

    #@c1
    .end local v5    # "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "privateuse":Ljava/lang/String;
    .local v9, "locextKey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@c4
    move-result v21

    #@c5
    if-eqz v21, :cond_10

    #@c7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ca
    move-result-object v8

    #@cb
    check-cast v8, Ljava/lang/Character;

    #@cd
    .line 499
    .local v8, "locextKey":Ljava/lang/Character;
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v8}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    #@d2
    move-result-object v4

    #@d3
    .line 500
    .local v4, "ext":Landroid/icu/impl/locale/Extension;
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    #@d6
    move-result v21

    #@d7
    invoke-static/range {v21 .. v21}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@da
    move-result v21

    #@db
    if-eqz v21, :cond_e

    #@dd
    .line 501
    invoke-virtual {v4}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    #@e0
    move-result-object v11

    #@e1
    .local v11, "privateuse":Ljava/lang/String;
    goto :goto_3

    #@e2
    .line 422
    .end local v4    # "ext":Landroid/icu/impl/locale/Extension;
    .end local v8    # "locextKey":Ljava/lang/Character;
    .end local v9    # "locextKey$iterator":Ljava/util/Iterator;
    .end local v10    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v11    # "privateuse":Ljava/lang/String;
    .restart local v12    # "privuseVar":Ljava/lang/String;
    :cond_8
    const-string/jumbo v21, "ji"

    #@e5
    move-object/from16 v0, v21

    #@e7
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v21

    #@eb
    if-eqz v21, :cond_9

    #@ed
    .line 423
    const-string/jumbo v7, "yi"

    #@f0
    goto/16 :goto_0

    #@f2
    .line 424
    :cond_9
    const-string/jumbo v21, "in"

    #@f5
    move-object/from16 v0, v21

    #@f7
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result v21

    #@fb
    if-eqz v21, :cond_0

    #@fd
    .line 425
    const-string/jumbo v7, "id"

    #@100
    goto/16 :goto_0

    #@102
    .line 456
    .restart local v17    # "var":Ljava/lang/String;
    .restart local v20    # "varitr":Landroid/icu/impl/locale/StringTokenIterator;
    :cond_a
    if-nez v19, :cond_b

    #@104
    .line 457
    new-instance v19, Ljava/util/ArrayList;

    #@106
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@109
    .line 462
    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    #@10c
    move-result-object v21

    #@10d
    move-object/from16 v0, v19

    #@10f
    move-object/from16 v1, v21

    #@111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@114
    .line 464
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@117
    goto/16 :goto_1

    #@119
    .line 479
    .end local v17    # "var":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    .restart local v13    # "prvv":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@11c
    move-result v21

    #@11d
    if-lez v21, :cond_d

    #@11f
    .line 480
    const-string/jumbo v21, "-"

    #@122
    move-object/from16 v0, v21

    #@124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    .line 483
    :cond_d
    invoke-static {v13}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@12a
    move-result-object v13

    #@12b
    .line 485
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    .line 486
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@131
    goto/16 :goto_2

    #@133
    .line 503
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v12    # "privuseVar":Ljava/lang/String;
    .end local v13    # "prvv":Ljava/lang/String;
    .end local v20    # "varitr":Landroid/icu/impl/locale/StringTokenIterator;
    .restart local v4    # "ext":Landroid/icu/impl/locale/Extension;
    .restart local v8    # "locextKey":Ljava/lang/Character;
    .restart local v9    # "locextKey$iterator":Ljava/util/Iterator;
    .restart local v10    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :cond_e
    if-nez v5, :cond_f

    #@135
    .line 504
    new-instance v5, Ljava/util/ArrayList;

    #@137
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@13a
    .line 506
    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    invoke-virtual {v8}, Ljava/lang/Character;->toString()Ljava/lang/String;

    #@142
    move-result-object v22

    #@143
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v21

    #@147
    const-string/jumbo v22, "-"

    #@14a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v21

    #@14e
    invoke-virtual {v4}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    #@151
    move-result-object v22

    #@152
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v21

    #@156
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v21

    #@15a
    move-object/from16 v0, v21

    #@15c
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15f
    goto/16 :goto_3

    #@161
    .line 510
    .end local v4    # "ext":Landroid/icu/impl/locale/Extension;
    .end local v8    # "locextKey":Ljava/lang/Character;
    :cond_10
    if-eqz v5, :cond_11

    #@163
    .line 511
    move-object/from16 v0, v16

    #@165
    iput-object v5, v0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    #@167
    .line 512
    const/4 v6, 0x1

    #@168
    .line 516
    :cond_11
    if-eqz v12, :cond_12

    #@16a
    .line 517
    if-nez v11, :cond_16

    #@16c
    .line 518
    new-instance v21, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v22, "lvariant-"

    #@174
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v21

    #@178
    move-object/from16 v0, v21

    #@17a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v21

    #@17e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v11

    #@182
    .line 524
    :cond_12
    :goto_4
    if-eqz v11, :cond_13

    #@184
    .line 525
    move-object/from16 v0, v16

    #@186
    iput-object v11, v0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    #@188
    .line 528
    :cond_13
    move-object/from16 v0, v16

    #@18a
    iget-object v0, v0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@18c
    move-object/from16 v21, v0

    #@18e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@191
    move-result v21

    #@192
    if-nez v21, :cond_15

    #@194
    if-nez v6, :cond_14

    #@196
    if-nez v11, :cond_15

    #@198
    .line 532
    :cond_14
    sget-object v21, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    #@19a
    move-object/from16 v0, v21

    #@19c
    move-object/from16 v1, v16

    #@19e
    iput-object v0, v1, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@1a0
    .line 535
    :cond_15
    return-object v16

    #@1a1
    .line 520
    :cond_16
    new-instance v21, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    move-object/from16 v0, v21

    #@1a8
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v21

    #@1ac
    const-string/jumbo v22, "-"

    #@1af
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v21

    #@1b3
    const-string/jumbo v22, "lvariant"

    #@1b6
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v21

    #@1ba
    const-string/jumbo v22, "-"

    #@1bd
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v21

    #@1c1
    const-string/jumbo v22, "_"

    #@1c4
    const-string/jumbo v23, "-"

    #@1c7
    move-object/from16 v0, v22

    #@1c9
    move-object/from16 v1, v23

    #@1cb
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1ce
    move-result-object v22

    #@1cf
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v21

    #@1d3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v11

    #@1d7
    .restart local v11    # "privateuse":Ljava/lang/String;
    goto :goto_4
.end method

.method private parsePrivateuse(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 5
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 370
    :cond_0
    const/4 v4, 0x0

    #@d
    return v4

    #@e
    .line 373
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 375
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 376
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 377
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    #@1c
    move-result v3

    #@1d
    .line 378
    .local v3, "start":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    .line 380
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 381
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 382
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 383
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_4

    #@35
    .line 392
    :cond_2
    iget v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@37
    if-gt v4, v3, :cond_5

    #@39
    .line 394
    iput v3, p2, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@3b
    .line 395
    const-string/jumbo v4, "Incomplete privateuse"

    #@3e
    iput-object v4, p2, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@40
    .line 402
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "start":I
    :cond_3
    :goto_1
    return v0

    #@41
    .line 386
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
    .line 387
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@4e
    move-result v4

    #@4f
    iput v4, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@51
    .line 389
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@54
    goto :goto_0

    #@55
    .line 397
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    iput-object v4, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    #@5b
    .line 398
    const/4 v0, 0x1

    #@5c
    goto :goto_1
.end method

.method private parseRegion(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 284
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 287
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 289
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 290
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 291
    const/4 v0, 0x1

    #@1a
    .line 292
    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    #@1c
    .line 293
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@1f
    move-result v2

    #@20
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@22
    .line 294
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 297
    :cond_2
    return v0
.end method

.method private parseScript(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 3
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 266
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 269
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 271
    .local v0, "found":Z
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 272
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 273
    const/4 v0, 0x1

    #@1a
    .line 274
    iput-object v1, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    #@1c
    .line 275
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@1f
    move-result v2

    #@20
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@22
    .line 276
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    #@25
    .line 279
    :cond_2
    return v0
.end method

.method private parseVariants(Landroid/icu/impl/locale/StringTokenIterator;Landroid/icu/impl/locale/ParseStatus;)Z
    .locals 4
    .param p1, "itr"    # Landroid/icu/impl/locale/StringTokenIterator;
    .param p2, "sts"    # Landroid/icu/impl/locale/ParseStatus;

    #@0
    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 302
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 305
    :cond_1
    const/4 v0, 0x0

    #@f
    .line 307
    .local v0, "found":Z
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_2

    #@15
    .line 308
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 309
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 321
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return v0

    #@20
    .line 312
    .restart local v1    # "s":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    #@21
    .line 313
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    #@23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_4

    #@29
    .line 314
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    const/4 v3, 0x3

    #@2c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    iput-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    #@31
    .line 316
    :cond_4
    iget-object v2, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    #@33
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 317
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    #@39
    move-result v2

    #@3a
    iput v2, p2, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@3c
    .line 318
    invoke-virtual {p1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

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
    .line 563
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
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
    .line 547
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

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
    .line 559
    iget-object v0, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 700
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@a
    move-result v7

    #@b
    if-lez v7, :cond_4

    #@d
    .line 701
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    #@f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 703
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

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
    .line 704
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
    .line 707
    .end local v2    # "extlang":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    #@31
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@34
    move-result v7

    #@35
    if-lez v7, :cond_1

    #@37
    .line 708
    const-string/jumbo v7, "-"

    #@3a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    iget-object v8, p0, Landroid/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    #@40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 711
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    #@45
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@48
    move-result v7

    #@49
    if-lez v7, :cond_2

    #@4b
    .line 712
    const-string/jumbo v7, "-"

    #@4e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    iget-object v8, p0, Landroid/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 715
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

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
    .line 716
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
    .line 719
    .end local v5    # "variant":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

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
    .line 720
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
    .line 723
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "extension$iterator":Ljava/util/Iterator;
    .end local v3    # "extlang$iterator":Ljava/util/Iterator;
    .end local v6    # "variant$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    #@93
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@96
    move-result v7

    #@97
    if-lez v7, :cond_6

    #@99
    .line 724
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@9c
    move-result v7

    #@9d
    if-lez v7, :cond_5

    #@9f
    .line 725
    const-string/jumbo v7, "-"

    #@a2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 727
    :cond_5
    iget-object v7, p0, Landroid/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    #@a7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 730
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    return-object v7
.end method
