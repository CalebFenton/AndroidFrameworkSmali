.class final Lsun/util/locale/LocaleEquivalentMaps;
.super Ljava/lang/Object;
.source "LocaleEquivalentMaps.java"


# static fields
.field static final blacklist multiEquivsMap:Ljava/util/Map;
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

.field static final blacklist regionVariantEquivMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist singleEquivMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    .line 47
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "acn"

    const-string v2, "xia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "adx"

    const-string v4, "pcr"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ami"

    const-string v6, "i-ami"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "art-lojban"

    const-string v6, "jbo"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ase"

    const-string v6, "sgn-us"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ayx"

    const-string v6, "nun"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "bfi"

    const-string v6, "sgn-gb"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "bjd"

    const-string v6, "drl"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "bnn"

    const-string v6, "i-bnn"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "bzs"

    const-string v6, "sgn-br"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cir"

    const-string v6, "meg"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cjr"

    const-string v6, "mom"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cka"

    const-string v6, "cmr"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cmk"

    const-string v6, "xch"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cmn-hans"

    const-string v6, "zh-cmn-hans"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cmn-hant"

    const-string v6, "zh-cmn-hant"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "cmr"

    const-string v6, "cka"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "csn"

    const-string v6, "sgn-co"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "dev"

    const-string v6, "gav"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "drh"

    const-string v6, "khk"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "drl"

    const-string v6, "bjd"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "dse"

    const-string v6, "sgn-nl"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "dsl"

    const-string v6, "sgn-dk"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "fsl"

    const-string v6, "sgn-fr"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "gal"

    const-string v6, "ilw"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "gan"

    const-string v6, "zh-gan"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "gav"

    const-string v6, "dev"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "gsg"

    const-string v6, "sgn-de"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "gss"

    const-string v6, "sgn-gr"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "he"

    const-string v6, "iw"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "hle"

    const-string v6, "sca"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "hrr"

    const-string v6, "jal"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "hsn"

    const-string v6, "zh-xiang"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-ami"

    const-string v6, "ami"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-bnn"

    const-string v6, "bnn"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-klingon"

    const-string v6, "tlh"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-lux"

    const-string v6, "lb"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-navajo"

    const-string v6, "nv"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-pwn"

    const-string v6, "pwn"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-tao"

    const-string v6, "tao"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-tay"

    const-string v6, "tay"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "i-tsu"

    const-string v6, "tsu"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ibi"

    const-string v6, "opa"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "id"

    const-string v6, "in"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ilw"

    const-string v6, "gal"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "in"

    const-string v6, "id"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ise"

    const-string v6, "sgn-it"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "isg"

    const-string v6, "sgn-ie"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "iw"

    const-string v6, "he"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "jal"

    const-string v6, "hrr"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "jbo"

    const-string v6, "art-lojban"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ji"

    const-string v6, "yi"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "jsl"

    const-string v6, "sgn-jp"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "jv"

    const-string v6, "jw"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "jw"

    const-string v6, "jv"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "kgh"

    const-string v6, "kml"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "khk"

    const-string v6, "drh"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "kml"

    const-string v6, "kgh"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "lb"

    const-string v6, "i-lux"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "lcq"

    const-string v6, "ppr"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "lrr"

    const-string v6, "yma"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "meg"

    const-string v6, "cir"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "mfs"

    const-string v6, "sgn-mx"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "mo"

    const-string v6, "ro"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "mom"

    const-string v6, "cjr"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "nan"

    const-string v6, "zh-min-nan"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "nb"

    const-string v6, "no-bok"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "ncs"

    const-string v6, "sgn-ni"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "nn"

    const-string v6, "no-nyn"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "no-bok"

    const-string v6, "nb"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "no-nyn"

    const-string v6, "nn"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "nsl"

    const-string v6, "sgn-no"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "nun"

    const-string v6, "ayx"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "nv"

    const-string v6, "i-navajo"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v5, "opa"

    const-string v6, "ibi"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "ppr"

    const-string v4, "lcq"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "psr"

    const-string v4, "sgn-pt"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "pwn"

    const-string v4, "i-pwn"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "ras"

    const-string v4, "tie"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "ro"

    const-string v4, "mo"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sca"

    const-string v4, "hle"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sfb"

    const-string v4, "sgn-be-fr"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sfs"

    const-string v4, "sgn-za"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgg"

    const-string v4, "sgn-ch-de"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-be-fr"

    const-string v4, "sfb"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-be-nl"

    const-string v4, "vgt"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-br"

    const-string v4, "bzs"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-ch-de"

    const-string v4, "sgg"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-co"

    const-string v4, "csn"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-de"

    const-string v4, "gsg"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-dk"

    const-string v4, "dsl"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-es"

    const-string v4, "ssp"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-fr"

    const-string v4, "fsl"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-gb"

    const-string v4, "bfi"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-gr"

    const-string v4, "gss"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-ie"

    const-string v4, "isg"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-it"

    const-string v4, "ise"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-jp"

    const-string v4, "jsl"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-mx"

    const-string v4, "mfs"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-ni"

    const-string v4, "ncs"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-nl"

    const-string v4, "dse"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-no"

    const-string v4, "nsl"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-pt"

    const-string v4, "psr"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-se"

    const-string v4, "swl"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-us"

    const-string v4, "ase"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "sgn-za"

    const-string v4, "sfs"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "ssp"

    const-string v4, "sgn-es"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "swl"

    const-string v4, "sgn-se"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tao"

    const-string v4, "i-tao"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tay"

    const-string v4, "i-tay"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tie"

    const-string v4, "ras"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tkk"

    const-string v4, "twm"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tlh"

    const-string v4, "i-klingon"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tlw"

    const-string v4, "weo"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "tsu"

    const-string v4, "i-tsu"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "twm"

    const-string v4, "tkk"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "vgt"

    const-string v4, "sgn-be-nl"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "weo"

    const-string v4, "tlw"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "wuu"

    const-string v4, "zh-wuu"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v3, "xch"

    const-string v4, "cmk"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "yi"

    const-string v2, "ji"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "yma"

    const-string v2, "lrr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "yos"

    const-string v2, "zom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "yue"

    const-string v2, "zh-yue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-cmn-hans"

    const-string v2, "cmn-hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-cmn-hant"

    const-string v2, "cmn-hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-gan"

    const-string v2, "gan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-min-nan"

    const-string v2, "nan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-wuu"

    const-string v2, "wuu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-xiang"

    const-string v2, "hsn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zh-yue"

    const-string v2, "yue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string v1, "zom"

    const-string v2, "yos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rki"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, "ybd"

    aput-object v6, v2, v5

    const-string v7, "ccq"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "zh-guoyu"

    aput-object v8, v2, v3

    const-string v9, "zh-cmn"

    aput-object v9, v2, v5

    const-string v10, "cmn"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v2, v1, [Ljava/lang/String;

    const-string v11, "prs"

    aput-object v11, v2, v3

    const-string v12, "tnf"

    aput-object v12, v2, v5

    const-string v13, "drw"

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v2, v1, [Ljava/lang/String;

    const-string v14, "i-hak"

    aput-object v14, v2, v3

    const-string v15, "zh-hakka"

    aput-object v15, v2, v5

    move/from16 v16, v3

    const-string v3, "hak"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v3, v2, v16

    aput-object v15, v2, v5

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v2, v1, [Ljava/lang/String;

    move/from16 v17, v5

    const-string v5, "mst"

    aput-object v5, v2, v16

    const-string v1, "myt"

    aput-object v1, v2, v17

    move-object/from16 v19, v3

    const-string v3, "mry"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    move-object/from16 v18, v3

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    aput-object v18, v3, v16

    aput-object v1, v3, v17

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v18, v3, v16

    aput-object v5, v3, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v13, v1, v16

    aput-object v12, v1, v17

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v7, v1, v16

    aput-object v6, v1, v17

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v11, v1, v16

    aput-object v13, v1, v17

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v4, v1, v16

    aput-object v7, v1, v17

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v10, v1, v16

    aput-object v8, v1, v17

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v10, v1, v16

    aput-object v9, v1, v17

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v19, v1, v16

    aput-object v14, v1, v17

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-alalc97"

    const-string v2, "-heploc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-bu"

    const-string v2, "-mm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-cd"

    const-string v2, "-zr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-dd"

    const-string v2, "-de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-de"

    const-string v2, "-dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-fr"

    const-string v2, "-fx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-fx"

    const-string v2, "-fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-heploc"

    const-string v2, "-alalc97"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-mm"

    const-string v2, "-bu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-tl"

    const-string v2, "-tp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-tp"

    const-string v2, "-tl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-yd"

    const-string v2, "-ye"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-ye"

    const-string v2, "-yd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string v1, "-zr"

    const-string v2, "-cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
