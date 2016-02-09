.class public final Llibcore/net/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field private static final extensionToMimeTypeMap:Ljava/util/Map;
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

.field private static final mimeTypeToExtensionMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@7
    .line 29
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@e
    .line 45
    const-string/jumbo v0, "application/andrew-inset"

    #@11
    const-string/jumbo v1, "ez"

    #@14
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 46
    const-string/jumbo v0, "application/dsptype"

    #@1a
    const-string/jumbo v1, "tsp"

    #@1d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 47
    const-string/jumbo v0, "application/epub+zip"

    #@23
    const-string/jumbo v1, "epub"

    #@26
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 48
    const-string/jumbo v0, "application/hta"

    #@2c
    const-string/jumbo v1, "hta"

    #@2f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 49
    const-string/jumbo v0, "application/mac-binhex40"

    #@35
    const-string/jumbo v1, "hqx"

    #@38
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 50
    const-string/jumbo v0, "application/mathematica"

    #@3e
    const-string/jumbo v1, "nb"

    #@41
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    .line 51
    const-string/jumbo v0, "application/msaccess"

    #@47
    const-string/jumbo v1, "mdb"

    #@4a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    .line 52
    const-string/jumbo v0, "application/oda"

    #@50
    const-string/jumbo v1, "oda"

    #@53
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 53
    const-string/jumbo v0, "application/ogg"

    #@59
    const-string/jumbo v1, "ogg"

    #@5c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5f
    .line 54
    const-string/jumbo v0, "application/ogg"

    #@62
    const-string/jumbo v1, "oga"

    #@65
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    .line 55
    const-string/jumbo v0, "application/pdf"

    #@6b
    const-string/jumbo v1, "pdf"

    #@6e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 56
    const-string/jumbo v0, "application/pgp-keys"

    #@74
    const-string/jumbo v1, "key"

    #@77
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 57
    const-string/jumbo v0, "application/pgp-signature"

    #@7d
    const-string/jumbo v1, "pgp"

    #@80
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    .line 58
    const-string/jumbo v0, "application/pics-rules"

    #@86
    const-string/jumbo v1, "prf"

    #@89
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    .line 59
    const-string/jumbo v0, "application/pkix-cert"

    #@8f
    const-string/jumbo v1, "cer"

    #@92
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 60
    const-string/jumbo v0, "application/rar"

    #@98
    const-string/jumbo v1, "rar"

    #@9b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9e
    .line 61
    const-string/jumbo v0, "application/rdf+xml"

    #@a1
    const-string/jumbo v1, "rdf"

    #@a4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    .line 62
    const-string/jumbo v0, "application/rss+xml"

    #@aa
    const-string/jumbo v1, "rss"

    #@ad
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b0
    .line 63
    const-string/jumbo v0, "application/zip"

    #@b3
    const-string/jumbo v1, "zip"

    #@b6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b9
    .line 64
    const-string/jumbo v0, "application/vnd.android.package-archive"

    #@bc
    const-string/jumbo v1, "apk"

    #@bf
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@c2
    .line 65
    const-string/jumbo v0, "application/vnd.cinderella"

    #@c5
    const-string/jumbo v1, "cdy"

    #@c8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    .line 66
    const-string/jumbo v0, "application/vnd.ms-pki.stl"

    #@ce
    const-string/jumbo v1, "stl"

    #@d1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@d4
    .line 67
    const-string/jumbo v0, "application/vnd.oasis.opendocument.database"

    #@d7
    const-string/jumbo v1, "odb"

    #@da
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@dd
    .line 68
    const-string/jumbo v0, "application/vnd.oasis.opendocument.formula"

    #@e0
    const-string/jumbo v1, "odf"

    #@e3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@e6
    .line 69
    const-string/jumbo v0, "application/vnd.oasis.opendocument.graphics"

    #@e9
    const-string/jumbo v1, "odg"

    #@ec
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ef
    .line 70
    const-string/jumbo v0, "application/vnd.oasis.opendocument.graphics-template"

    #@f2
    const-string/jumbo v1, "otg"

    #@f5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@f8
    .line 71
    const-string/jumbo v0, "application/vnd.oasis.opendocument.image"

    #@fb
    const-string/jumbo v1, "odi"

    #@fe
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@101
    .line 72
    const-string/jumbo v0, "application/vnd.oasis.opendocument.presentation"

    #@104
    const-string/jumbo v1, "odp"

    #@107
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@10a
    .line 73
    const-string/jumbo v0, "application/vnd.oasis.opendocument.presentation-template"

    #@10d
    const-string/jumbo v1, "otp"

    #@110
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@113
    .line 74
    const-string/jumbo v0, "application/vnd.oasis.opendocument.spreadsheet"

    #@116
    const-string/jumbo v1, "ods"

    #@119
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@11c
    .line 75
    const-string/jumbo v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    #@11f
    const-string/jumbo v1, "ots"

    #@122
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@125
    .line 76
    const-string/jumbo v0, "application/vnd.oasis.opendocument.text"

    #@128
    const-string/jumbo v1, "odt"

    #@12b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@12e
    .line 77
    const-string/jumbo v0, "application/vnd.oasis.opendocument.text-master"

    #@131
    const-string/jumbo v1, "odm"

    #@134
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@137
    .line 78
    const-string/jumbo v0, "application/vnd.oasis.opendocument.text-template"

    #@13a
    const-string/jumbo v1, "ott"

    #@13d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@140
    .line 79
    const-string/jumbo v0, "application/vnd.oasis.opendocument.text-web"

    #@143
    const-string/jumbo v1, "oth"

    #@146
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@149
    .line 80
    const-string/jumbo v0, "application/vnd.google-earth.kml+xml"

    #@14c
    const-string/jumbo v1, "kml"

    #@14f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@152
    .line 81
    const-string/jumbo v0, "application/vnd.google-earth.kmz"

    #@155
    const-string/jumbo v1, "kmz"

    #@158
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@15b
    .line 82
    const-string/jumbo v0, "application/msword"

    #@15e
    const-string/jumbo v1, "doc"

    #@161
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@164
    .line 83
    const-string/jumbo v0, "application/msword"

    #@167
    const-string/jumbo v1, "dot"

    #@16a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@16d
    .line 84
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    #@170
    const-string/jumbo v1, "docx"

    #@173
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@176
    .line 85
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    #@179
    const-string/jumbo v1, "dotx"

    #@17c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@17f
    .line 86
    const-string/jumbo v0, "application/vnd.ms-excel"

    #@182
    const-string/jumbo v1, "xls"

    #@185
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@188
    .line 87
    const-string/jumbo v0, "application/vnd.ms-excel"

    #@18b
    const-string/jumbo v1, "xlt"

    #@18e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@191
    .line 88
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    #@194
    const-string/jumbo v1, "xlsx"

    #@197
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@19a
    .line 89
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    #@19d
    const-string/jumbo v1, "xltx"

    #@1a0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1a3
    .line 90
    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    #@1a6
    const-string/jumbo v1, "ppt"

    #@1a9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1ac
    .line 91
    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    #@1af
    const-string/jumbo v1, "pot"

    #@1b2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1b5
    .line 92
    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    #@1b8
    const-string/jumbo v1, "pps"

    #@1bb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1be
    .line 93
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    #@1c1
    const-string/jumbo v1, "pptx"

    #@1c4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1c7
    .line 94
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    #@1ca
    const-string/jumbo v1, "potx"

    #@1cd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1d0
    .line 95
    const-string/jumbo v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    #@1d3
    const-string/jumbo v1, "ppsx"

    #@1d6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1d9
    .line 96
    const-string/jumbo v0, "application/vnd.rim.cod"

    #@1dc
    const-string/jumbo v1, "cod"

    #@1df
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1e2
    .line 97
    const-string/jumbo v0, "application/vnd.smaf"

    #@1e5
    const-string/jumbo v1, "mmf"

    #@1e8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1eb
    .line 98
    const-string/jumbo v0, "application/vnd.stardivision.calc"

    #@1ee
    const-string/jumbo v1, "sdc"

    #@1f1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1f4
    .line 99
    const-string/jumbo v0, "application/vnd.stardivision.draw"

    #@1f7
    const-string/jumbo v1, "sda"

    #@1fa
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1fd
    .line 100
    const-string/jumbo v0, "application/vnd.stardivision.impress"

    #@200
    const-string/jumbo v1, "sdd"

    #@203
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@206
    .line 101
    const-string/jumbo v0, "application/vnd.stardivision.impress"

    #@209
    const-string/jumbo v1, "sdp"

    #@20c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@20f
    .line 102
    const-string/jumbo v0, "application/vnd.stardivision.math"

    #@212
    const-string/jumbo v1, "smf"

    #@215
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@218
    .line 103
    const-string/jumbo v0, "application/vnd.stardivision.writer"

    #@21b
    const-string/jumbo v1, "sdw"

    #@21e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@221
    .line 104
    const-string/jumbo v0, "application/vnd.stardivision.writer"

    #@224
    const-string/jumbo v1, "vor"

    #@227
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@22a
    .line 105
    const-string/jumbo v0, "application/vnd.stardivision.writer-global"

    #@22d
    const-string/jumbo v1, "sgl"

    #@230
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@233
    .line 106
    const-string/jumbo v0, "application/vnd.sun.xml.calc"

    #@236
    const-string/jumbo v1, "sxc"

    #@239
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@23c
    .line 107
    const-string/jumbo v0, "application/vnd.sun.xml.calc.template"

    #@23f
    const-string/jumbo v1, "stc"

    #@242
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@245
    .line 108
    const-string/jumbo v0, "application/vnd.sun.xml.draw"

    #@248
    const-string/jumbo v1, "sxd"

    #@24b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@24e
    .line 109
    const-string/jumbo v0, "application/vnd.sun.xml.draw.template"

    #@251
    const-string/jumbo v1, "std"

    #@254
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@257
    .line 110
    const-string/jumbo v0, "application/vnd.sun.xml.impress"

    #@25a
    const-string/jumbo v1, "sxi"

    #@25d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@260
    .line 111
    const-string/jumbo v0, "application/vnd.sun.xml.impress.template"

    #@263
    const-string/jumbo v1, "sti"

    #@266
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@269
    .line 112
    const-string/jumbo v0, "application/vnd.sun.xml.math"

    #@26c
    const-string/jumbo v1, "sxm"

    #@26f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@272
    .line 113
    const-string/jumbo v0, "application/vnd.sun.xml.writer"

    #@275
    const-string/jumbo v1, "sxw"

    #@278
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@27b
    .line 114
    const-string/jumbo v0, "application/vnd.sun.xml.writer.global"

    #@27e
    const-string/jumbo v1, "sxg"

    #@281
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@284
    .line 115
    const-string/jumbo v0, "application/vnd.sun.xml.writer.template"

    #@287
    const-string/jumbo v1, "stw"

    #@28a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@28d
    .line 116
    const-string/jumbo v0, "application/vnd.visio"

    #@290
    const-string/jumbo v1, "vsd"

    #@293
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@296
    .line 117
    const-string/jumbo v0, "application/x-abiword"

    #@299
    const-string/jumbo v1, "abw"

    #@29c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@29f
    .line 118
    const-string/jumbo v0, "application/x-apple-diskimage"

    #@2a2
    const-string/jumbo v1, "dmg"

    #@2a5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2a8
    .line 119
    const-string/jumbo v0, "application/x-bcpio"

    #@2ab
    const-string/jumbo v1, "bcpio"

    #@2ae
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2b1
    .line 120
    const-string/jumbo v0, "application/x-bittorrent"

    #@2b4
    const-string/jumbo v1, "torrent"

    #@2b7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2ba
    .line 121
    const-string/jumbo v0, "application/x-cdf"

    #@2bd
    const-string/jumbo v1, "cdf"

    #@2c0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2c3
    .line 122
    const-string/jumbo v0, "application/x-cdlink"

    #@2c6
    const-string/jumbo v1, "vcd"

    #@2c9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2cc
    .line 123
    const-string/jumbo v0, "application/x-chess-pgn"

    #@2cf
    const-string/jumbo v1, "pgn"

    #@2d2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2d5
    .line 124
    const-string/jumbo v0, "application/x-cpio"

    #@2d8
    const-string/jumbo v1, "cpio"

    #@2db
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2de
    .line 125
    const-string/jumbo v0, "application/x-debian-package"

    #@2e1
    const-string/jumbo v1, "deb"

    #@2e4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2e7
    .line 126
    const-string/jumbo v0, "application/x-debian-package"

    #@2ea
    const-string/jumbo v1, "udeb"

    #@2ed
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2f0
    .line 127
    const-string/jumbo v0, "application/x-director"

    #@2f3
    const-string/jumbo v1, "dcr"

    #@2f6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@2f9
    .line 128
    const-string/jumbo v0, "application/x-director"

    #@2fc
    const-string/jumbo v1, "dir"

    #@2ff
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@302
    .line 129
    const-string/jumbo v0, "application/x-director"

    #@305
    const-string/jumbo v1, "dxr"

    #@308
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@30b
    .line 130
    const-string/jumbo v0, "application/x-dms"

    #@30e
    const-string/jumbo v1, "dms"

    #@311
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@314
    .line 131
    const-string/jumbo v0, "application/x-doom"

    #@317
    const-string/jumbo v1, "wad"

    #@31a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@31d
    .line 132
    const-string/jumbo v0, "application/x-dvi"

    #@320
    const-string/jumbo v1, "dvi"

    #@323
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@326
    .line 133
    const-string/jumbo v0, "application/x-font"

    #@329
    const-string/jumbo v1, "pfa"

    #@32c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@32f
    .line 134
    const-string/jumbo v0, "application/x-font"

    #@332
    const-string/jumbo v1, "pfb"

    #@335
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@338
    .line 135
    const-string/jumbo v0, "application/x-font"

    #@33b
    const-string/jumbo v1, "gsf"

    #@33e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@341
    .line 136
    const-string/jumbo v0, "application/x-font"

    #@344
    const-string/jumbo v1, "pcf"

    #@347
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@34a
    .line 137
    const-string/jumbo v0, "application/x-font"

    #@34d
    const-string/jumbo v1, "pcf.Z"

    #@350
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@353
    .line 138
    const-string/jumbo v0, "application/x-freemind"

    #@356
    const-string/jumbo v1, "mm"

    #@359
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@35c
    .line 140
    const-string/jumbo v0, "application/x-futuresplash"

    #@35f
    const-string/jumbo v1, "spl"

    #@362
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@365
    .line 141
    const-string/jumbo v0, "application/futuresplash"

    #@368
    const-string/jumbo v1, "spl"

    #@36b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@36e
    .line 142
    const-string/jumbo v0, "application/x-gnumeric"

    #@371
    const-string/jumbo v1, "gnumeric"

    #@374
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@377
    .line 143
    const-string/jumbo v0, "application/x-go-sgf"

    #@37a
    const-string/jumbo v1, "sgf"

    #@37d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@380
    .line 144
    const-string/jumbo v0, "application/x-graphing-calculator"

    #@383
    const-string/jumbo v1, "gcf"

    #@386
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@389
    .line 145
    const-string/jumbo v0, "application/x-gtar"

    #@38c
    const-string/jumbo v1, "tgz"

    #@38f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@392
    .line 146
    const-string/jumbo v0, "application/x-gtar"

    #@395
    const-string/jumbo v1, "gtar"

    #@398
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@39b
    .line 147
    const-string/jumbo v0, "application/x-gtar"

    #@39e
    const-string/jumbo v1, "taz"

    #@3a1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3a4
    .line 148
    const-string/jumbo v0, "application/x-hdf"

    #@3a7
    const-string/jumbo v1, "hdf"

    #@3aa
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3ad
    .line 149
    const-string/jumbo v0, "application/x-hwp"

    #@3b0
    const-string/jumbo v1, "hwp"

    #@3b3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3b6
    .line 150
    const-string/jumbo v0, "application/x-ica"

    #@3b9
    const-string/jumbo v1, "ica"

    #@3bc
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3bf
    .line 151
    const-string/jumbo v0, "application/x-internet-signup"

    #@3c2
    const-string/jumbo v1, "ins"

    #@3c5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3c8
    .line 152
    const-string/jumbo v0, "application/x-internet-signup"

    #@3cb
    const-string/jumbo v1, "isp"

    #@3ce
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3d1
    .line 153
    const-string/jumbo v0, "application/x-iphone"

    #@3d4
    const-string/jumbo v1, "iii"

    #@3d7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3da
    .line 154
    const-string/jumbo v0, "application/x-iso9660-image"

    #@3dd
    const-string/jumbo v1, "iso"

    #@3e0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3e3
    .line 155
    const-string/jumbo v0, "application/x-jmol"

    #@3e6
    const-string/jumbo v1, "jmz"

    #@3e9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3ec
    .line 156
    const-string/jumbo v0, "application/x-kchart"

    #@3ef
    const-string/jumbo v1, "chrt"

    #@3f2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3f5
    .line 157
    const-string/jumbo v0, "application/x-killustrator"

    #@3f8
    const-string/jumbo v1, "kil"

    #@3fb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@3fe
    .line 158
    const-string/jumbo v0, "application/x-koan"

    #@401
    const-string/jumbo v1, "skp"

    #@404
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@407
    .line 159
    const-string/jumbo v0, "application/x-koan"

    #@40a
    const-string/jumbo v1, "skd"

    #@40d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@410
    .line 160
    const-string/jumbo v0, "application/x-koan"

    #@413
    const-string/jumbo v1, "skt"

    #@416
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@419
    .line 161
    const-string/jumbo v0, "application/x-koan"

    #@41c
    const-string/jumbo v1, "skm"

    #@41f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@422
    .line 162
    const-string/jumbo v0, "application/x-kpresenter"

    #@425
    const-string/jumbo v1, "kpr"

    #@428
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@42b
    .line 163
    const-string/jumbo v0, "application/x-kpresenter"

    #@42e
    const-string/jumbo v1, "kpt"

    #@431
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@434
    .line 164
    const-string/jumbo v0, "application/x-kspread"

    #@437
    const-string/jumbo v1, "ksp"

    #@43a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@43d
    .line 165
    const-string/jumbo v0, "application/x-kword"

    #@440
    const-string/jumbo v1, "kwd"

    #@443
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@446
    .line 166
    const-string/jumbo v0, "application/x-kword"

    #@449
    const-string/jumbo v1, "kwt"

    #@44c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@44f
    .line 167
    const-string/jumbo v0, "application/x-latex"

    #@452
    const-string/jumbo v1, "latex"

    #@455
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@458
    .line 168
    const-string/jumbo v0, "application/x-lha"

    #@45b
    const-string/jumbo v1, "lha"

    #@45e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@461
    .line 169
    const-string/jumbo v0, "application/x-lzh"

    #@464
    const-string/jumbo v1, "lzh"

    #@467
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@46a
    .line 170
    const-string/jumbo v0, "application/x-lzx"

    #@46d
    const-string/jumbo v1, "lzx"

    #@470
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@473
    .line 171
    const-string/jumbo v0, "application/x-maker"

    #@476
    const-string/jumbo v1, "frm"

    #@479
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@47c
    .line 172
    const-string/jumbo v0, "application/x-maker"

    #@47f
    const-string/jumbo v1, "maker"

    #@482
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@485
    .line 173
    const-string/jumbo v0, "application/x-maker"

    #@488
    const-string/jumbo v1, "frame"

    #@48b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@48e
    .line 174
    const-string/jumbo v0, "application/x-maker"

    #@491
    const-string/jumbo v1, "fb"

    #@494
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@497
    .line 175
    const-string/jumbo v0, "application/x-maker"

    #@49a
    const-string/jumbo v1, "book"

    #@49d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4a0
    .line 176
    const-string/jumbo v0, "application/x-maker"

    #@4a3
    const-string/jumbo v1, "fbdoc"

    #@4a6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4a9
    .line 177
    const-string/jumbo v0, "application/x-mif"

    #@4ac
    const-string/jumbo v1, "mif"

    #@4af
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4b2
    .line 178
    const-string/jumbo v0, "application/x-ms-wmd"

    #@4b5
    const-string/jumbo v1, "wmd"

    #@4b8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4bb
    .line 179
    const-string/jumbo v0, "application/x-ms-wmz"

    #@4be
    const-string/jumbo v1, "wmz"

    #@4c1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4c4
    .line 180
    const-string/jumbo v0, "application/x-msi"

    #@4c7
    const-string/jumbo v1, "msi"

    #@4ca
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4cd
    .line 181
    const-string/jumbo v0, "application/x-ns-proxy-autoconfig"

    #@4d0
    const-string/jumbo v1, "pac"

    #@4d3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4d6
    .line 182
    const-string/jumbo v0, "application/x-nwc"

    #@4d9
    const-string/jumbo v1, "nwc"

    #@4dc
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4df
    .line 183
    const-string/jumbo v0, "application/x-object"

    #@4e2
    const-string/jumbo v1, "o"

    #@4e5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4e8
    .line 184
    const-string/jumbo v0, "application/x-oz-application"

    #@4eb
    const-string/jumbo v1, "oza"

    #@4ee
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4f1
    .line 185
    const-string/jumbo v0, "application/x-pem-file"

    #@4f4
    const-string/jumbo v1, "pem"

    #@4f7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@4fa
    .line 186
    const-string/jumbo v0, "application/x-pkcs12"

    #@4fd
    const-string/jumbo v1, "p12"

    #@500
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@503
    .line 187
    const-string/jumbo v0, "application/x-pkcs12"

    #@506
    const-string/jumbo v1, "pfx"

    #@509
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@50c
    .line 188
    const-string/jumbo v0, "application/x-pkcs7-certreqresp"

    #@50f
    const-string/jumbo v1, "p7r"

    #@512
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@515
    .line 189
    const-string/jumbo v0, "application/x-pkcs7-crl"

    #@518
    const-string/jumbo v1, "crl"

    #@51b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@51e
    .line 190
    const-string/jumbo v0, "application/x-quicktimeplayer"

    #@521
    const-string/jumbo v1, "qtl"

    #@524
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@527
    .line 191
    const-string/jumbo v0, "application/x-shar"

    #@52a
    const-string/jumbo v1, "shar"

    #@52d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@530
    .line 192
    const-string/jumbo v0, "application/x-shockwave-flash"

    #@533
    const-string/jumbo v1, "swf"

    #@536
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@539
    .line 193
    const-string/jumbo v0, "application/x-stuffit"

    #@53c
    const-string/jumbo v1, "sit"

    #@53f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@542
    .line 194
    const-string/jumbo v0, "application/x-sv4cpio"

    #@545
    const-string/jumbo v1, "sv4cpio"

    #@548
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@54b
    .line 195
    const-string/jumbo v0, "application/x-sv4crc"

    #@54e
    const-string/jumbo v1, "sv4crc"

    #@551
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@554
    .line 196
    const-string/jumbo v0, "application/x-tar"

    #@557
    const-string/jumbo v1, "tar"

    #@55a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@55d
    .line 197
    const-string/jumbo v0, "application/x-texinfo"

    #@560
    const-string/jumbo v1, "texinfo"

    #@563
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@566
    .line 198
    const-string/jumbo v0, "application/x-texinfo"

    #@569
    const-string/jumbo v1, "texi"

    #@56c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@56f
    .line 199
    const-string/jumbo v0, "application/x-troff"

    #@572
    const-string/jumbo v1, "t"

    #@575
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@578
    .line 200
    const-string/jumbo v0, "application/x-troff"

    #@57b
    const-string/jumbo v1, "roff"

    #@57e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@581
    .line 201
    const-string/jumbo v0, "application/x-troff-man"

    #@584
    const-string/jumbo v1, "man"

    #@587
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@58a
    .line 202
    const-string/jumbo v0, "application/x-ustar"

    #@58d
    const-string/jumbo v1, "ustar"

    #@590
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@593
    .line 203
    const-string/jumbo v0, "application/x-wais-source"

    #@596
    const-string/jumbo v1, "src"

    #@599
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@59c
    .line 204
    const-string/jumbo v0, "application/x-wingz"

    #@59f
    const-string/jumbo v1, "wz"

    #@5a2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5a5
    .line 205
    const-string/jumbo v0, "application/x-webarchive"

    #@5a8
    const-string/jumbo v1, "webarchive"

    #@5ab
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5ae
    .line 206
    const-string/jumbo v0, "application/x-webarchive-xml"

    #@5b1
    const-string/jumbo v1, "webarchivexml"

    #@5b4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5b7
    .line 207
    const-string/jumbo v0, "application/x-x509-ca-cert"

    #@5ba
    const-string/jumbo v1, "crt"

    #@5bd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5c0
    .line 208
    const-string/jumbo v0, "application/x-x509-user-cert"

    #@5c3
    const-string/jumbo v1, "crt"

    #@5c6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5c9
    .line 209
    const-string/jumbo v0, "application/x-x509-server-cert"

    #@5cc
    const-string/jumbo v1, "crt"

    #@5cf
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5d2
    .line 210
    const-string/jumbo v0, "application/x-xcf"

    #@5d5
    const-string/jumbo v1, "xcf"

    #@5d8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5db
    .line 211
    const-string/jumbo v0, "application/x-xfig"

    #@5de
    const-string/jumbo v1, "fig"

    #@5e1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5e4
    .line 212
    const-string/jumbo v0, "application/xhtml+xml"

    #@5e7
    const-string/jumbo v1, "xhtml"

    #@5ea
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5ed
    .line 213
    const-string/jumbo v0, "audio/3gpp"

    #@5f0
    const-string/jumbo v1, "3gpp"

    #@5f3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5f6
    .line 214
    const-string/jumbo v0, "audio/aac"

    #@5f9
    const-string/jumbo v1, "aac"

    #@5fc
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5ff
    .line 215
    const-string/jumbo v0, "audio/aac-adts"

    #@602
    const-string/jumbo v1, "aac"

    #@605
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@608
    .line 216
    const-string/jumbo v0, "audio/amr"

    #@60b
    const-string/jumbo v1, "amr"

    #@60e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@611
    .line 217
    const-string/jumbo v0, "audio/amr-wb"

    #@614
    const-string/jumbo v1, "awb"

    #@617
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@61a
    .line 218
    const-string/jumbo v0, "audio/basic"

    #@61d
    const-string/jumbo v1, "snd"

    #@620
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@623
    .line 219
    const-string/jumbo v0, "audio/flac"

    #@626
    const-string/jumbo v1, "flac"

    #@629
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@62c
    .line 220
    const-string/jumbo v0, "application/x-flac"

    #@62f
    const-string/jumbo v1, "flac"

    #@632
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@635
    .line 221
    const-string/jumbo v0, "audio/imelody"

    #@638
    const-string/jumbo v1, "imy"

    #@63b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@63e
    .line 222
    const-string/jumbo v0, "audio/midi"

    #@641
    const-string/jumbo v1, "mid"

    #@644
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@647
    .line 223
    const-string/jumbo v0, "audio/midi"

    #@64a
    const-string/jumbo v1, "midi"

    #@64d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@650
    .line 224
    const-string/jumbo v0, "audio/midi"

    #@653
    const-string/jumbo v1, "ota"

    #@656
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@659
    .line 225
    const-string/jumbo v0, "audio/midi"

    #@65c
    const-string/jumbo v1, "kar"

    #@65f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@662
    .line 226
    const-string/jumbo v0, "audio/midi"

    #@665
    const-string/jumbo v1, "rtttl"

    #@668
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@66b
    .line 227
    const-string/jumbo v0, "audio/midi"

    #@66e
    const-string/jumbo v1, "xmf"

    #@671
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@674
    .line 228
    const-string/jumbo v0, "audio/mobile-xmf"

    #@677
    const-string/jumbo v1, "mxmf"

    #@67a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@67d
    .line 230
    const-string/jumbo v0, "audio/mpeg"

    #@680
    const-string/jumbo v1, "mp3"

    #@683
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@686
    .line 231
    const-string/jumbo v0, "audio/mpeg"

    #@689
    const-string/jumbo v1, "mpga"

    #@68c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@68f
    .line 232
    const-string/jumbo v0, "audio/mpeg"

    #@692
    const-string/jumbo v1, "mpega"

    #@695
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@698
    .line 233
    const-string/jumbo v0, "audio/mpeg"

    #@69b
    const-string/jumbo v1, "mp2"

    #@69e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6a1
    .line 234
    const-string/jumbo v0, "audio/mpeg"

    #@6a4
    const-string/jumbo v1, "m4a"

    #@6a7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6aa
    .line 235
    const-string/jumbo v0, "audio/mpegurl"

    #@6ad
    const-string/jumbo v1, "m3u"

    #@6b0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6b3
    .line 236
    const-string/jumbo v0, "audio/prs.sid"

    #@6b6
    const-string/jumbo v1, "sid"

    #@6b9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6bc
    .line 237
    const-string/jumbo v0, "audio/x-aiff"

    #@6bf
    const-string/jumbo v1, "aif"

    #@6c2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6c5
    .line 238
    const-string/jumbo v0, "audio/x-aiff"

    #@6c8
    const-string/jumbo v1, "aiff"

    #@6cb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6ce
    .line 239
    const-string/jumbo v0, "audio/x-aiff"

    #@6d1
    const-string/jumbo v1, "aifc"

    #@6d4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6d7
    .line 240
    const-string/jumbo v0, "audio/x-gsm"

    #@6da
    const-string/jumbo v1, "gsm"

    #@6dd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6e0
    .line 241
    const-string/jumbo v0, "audio/x-matroska"

    #@6e3
    const-string/jumbo v1, "mka"

    #@6e6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6e9
    .line 242
    const-string/jumbo v0, "audio/x-mpegurl"

    #@6ec
    const-string/jumbo v1, "m3u"

    #@6ef
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6f2
    .line 243
    const-string/jumbo v0, "audio/x-ms-wma"

    #@6f5
    const-string/jumbo v1, "wma"

    #@6f8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6fb
    .line 244
    const-string/jumbo v0, "audio/x-ms-wax"

    #@6fe
    const-string/jumbo v1, "wax"

    #@701
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@704
    .line 245
    const-string/jumbo v0, "audio/x-pn-realaudio"

    #@707
    const-string/jumbo v1, "ra"

    #@70a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@70d
    .line 246
    const-string/jumbo v0, "audio/x-pn-realaudio"

    #@710
    const-string/jumbo v1, "rm"

    #@713
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@716
    .line 247
    const-string/jumbo v0, "audio/x-pn-realaudio"

    #@719
    const-string/jumbo v1, "ram"

    #@71c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@71f
    .line 248
    const-string/jumbo v0, "audio/x-realaudio"

    #@722
    const-string/jumbo v1, "ra"

    #@725
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@728
    .line 249
    const-string/jumbo v0, "audio/x-scpls"

    #@72b
    const-string/jumbo v1, "pls"

    #@72e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@731
    .line 250
    const-string/jumbo v0, "audio/x-sd2"

    #@734
    const-string/jumbo v1, "sd2"

    #@737
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@73a
    .line 251
    const-string/jumbo v0, "audio/x-wav"

    #@73d
    const-string/jumbo v1, "wav"

    #@740
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@743
    .line 253
    const-string/jumbo v0, "image/x-ms-bmp"

    #@746
    const-string/jumbo v1, "bmp"

    #@749
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@74c
    .line 254
    const-string/jumbo v0, "image/bmp"

    #@74f
    const-string/jumbo v1, "bmp"

    #@752
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@755
    .line 255
    const-string/jumbo v0, "image/gif"

    #@758
    const-string/jumbo v1, "gif"

    #@75b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@75e
    .line 257
    const-string/jumbo v0, "image/x-icon"

    #@761
    const-string/jumbo v1, "ico"

    #@764
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@767
    .line 258
    const-string/jumbo v0, "image/ico"

    #@76a
    const-string/jumbo v1, "cur"

    #@76d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@770
    .line 259
    const-string/jumbo v0, "image/ico"

    #@773
    const-string/jumbo v1, "ico"

    #@776
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@779
    .line 260
    const-string/jumbo v0, "image/ief"

    #@77c
    const-string/jumbo v1, "ief"

    #@77f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@782
    .line 262
    const-string/jumbo v0, "image/jpeg"

    #@785
    const-string/jumbo v1, "jpg"

    #@788
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@78b
    .line 263
    const-string/jumbo v0, "image/jpeg"

    #@78e
    const-string/jumbo v1, "jpeg"

    #@791
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@794
    .line 264
    const-string/jumbo v0, "image/jpeg"

    #@797
    const-string/jumbo v1, "jpe"

    #@79a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@79d
    .line 265
    const-string/jumbo v0, "image/pcx"

    #@7a0
    const-string/jumbo v1, "pcx"

    #@7a3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7a6
    .line 266
    const-string/jumbo v0, "image/png"

    #@7a9
    const-string/jumbo v1, "png"

    #@7ac
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7af
    .line 267
    const-string/jumbo v0, "image/svg+xml"

    #@7b2
    const-string/jumbo v1, "svg"

    #@7b5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7b8
    .line 268
    const-string/jumbo v0, "image/svg+xml"

    #@7bb
    const-string/jumbo v1, "svgz"

    #@7be
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7c1
    .line 269
    const-string/jumbo v0, "image/tiff"

    #@7c4
    const-string/jumbo v1, "tiff"

    #@7c7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7ca
    .line 270
    const-string/jumbo v0, "image/tiff"

    #@7cd
    const-string/jumbo v1, "tif"

    #@7d0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7d3
    .line 271
    const-string/jumbo v0, "image/vnd.djvu"

    #@7d6
    const-string/jumbo v1, "djvu"

    #@7d9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7dc
    .line 272
    const-string/jumbo v0, "image/vnd.djvu"

    #@7df
    const-string/jumbo v1, "djv"

    #@7e2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7e5
    .line 273
    const-string/jumbo v0, "image/vnd.wap.wbmp"

    #@7e8
    const-string/jumbo v1, "wbmp"

    #@7eb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7ee
    .line 274
    const-string/jumbo v0, "image/webp"

    #@7f1
    const-string/jumbo v1, "webp"

    #@7f4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7f7
    .line 275
    const-string/jumbo v0, "image/x-cmu-raster"

    #@7fa
    const-string/jumbo v1, "ras"

    #@7fd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@800
    .line 276
    const-string/jumbo v0, "image/x-coreldraw"

    #@803
    const-string/jumbo v1, "cdr"

    #@806
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@809
    .line 277
    const-string/jumbo v0, "image/x-coreldrawpattern"

    #@80c
    const-string/jumbo v1, "pat"

    #@80f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@812
    .line 278
    const-string/jumbo v0, "image/x-coreldrawtemplate"

    #@815
    const-string/jumbo v1, "cdt"

    #@818
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@81b
    .line 279
    const-string/jumbo v0, "image/x-corelphotopaint"

    #@81e
    const-string/jumbo v1, "cpt"

    #@821
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@824
    .line 280
    const-string/jumbo v0, "image/x-jg"

    #@827
    const-string/jumbo v1, "art"

    #@82a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@82d
    .line 281
    const-string/jumbo v0, "image/x-jng"

    #@830
    const-string/jumbo v1, "jng"

    #@833
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@836
    .line 282
    const-string/jumbo v0, "image/x-photoshop"

    #@839
    const-string/jumbo v1, "psd"

    #@83c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@83f
    .line 283
    const-string/jumbo v0, "image/x-portable-anymap"

    #@842
    const-string/jumbo v1, "pnm"

    #@845
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@848
    .line 284
    const-string/jumbo v0, "image/x-portable-bitmap"

    #@84b
    const-string/jumbo v1, "pbm"

    #@84e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@851
    .line 285
    const-string/jumbo v0, "image/x-portable-graymap"

    #@854
    const-string/jumbo v1, "pgm"

    #@857
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@85a
    .line 286
    const-string/jumbo v0, "image/x-portable-pixmap"

    #@85d
    const-string/jumbo v1, "ppm"

    #@860
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@863
    .line 287
    const-string/jumbo v0, "image/x-rgb"

    #@866
    const-string/jumbo v1, "rgb"

    #@869
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@86c
    .line 288
    const-string/jumbo v0, "image/x-xbitmap"

    #@86f
    const-string/jumbo v1, "xbm"

    #@872
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@875
    .line 289
    const-string/jumbo v0, "image/x-xpixmap"

    #@878
    const-string/jumbo v1, "xpm"

    #@87b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@87e
    .line 290
    const-string/jumbo v0, "image/x-xwindowdump"

    #@881
    const-string/jumbo v1, "xwd"

    #@884
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@887
    .line 291
    const-string/jumbo v0, "model/iges"

    #@88a
    const-string/jumbo v1, "igs"

    #@88d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@890
    .line 292
    const-string/jumbo v0, "model/iges"

    #@893
    const-string/jumbo v1, "iges"

    #@896
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@899
    .line 293
    const-string/jumbo v0, "model/mesh"

    #@89c
    const-string/jumbo v1, "msh"

    #@89f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8a2
    .line 294
    const-string/jumbo v0, "model/mesh"

    #@8a5
    const-string/jumbo v1, "mesh"

    #@8a8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8ab
    .line 295
    const-string/jumbo v0, "model/mesh"

    #@8ae
    const-string/jumbo v1, "silo"

    #@8b1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8b4
    .line 296
    const-string/jumbo v0, "text/calendar"

    #@8b7
    const-string/jumbo v1, "ics"

    #@8ba
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8bd
    .line 297
    const-string/jumbo v0, "text/calendar"

    #@8c0
    const-string/jumbo v1, "icz"

    #@8c3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8c6
    .line 298
    const-string/jumbo v0, "text/comma-separated-values"

    #@8c9
    const-string/jumbo v1, "csv"

    #@8cc
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8cf
    .line 299
    const-string/jumbo v0, "text/css"

    #@8d2
    const-string/jumbo v1, "css"

    #@8d5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8d8
    .line 300
    const-string/jumbo v0, "text/html"

    #@8db
    const-string/jumbo v1, "htm"

    #@8de
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8e1
    .line 301
    const-string/jumbo v0, "text/html"

    #@8e4
    const-string/jumbo v1, "html"

    #@8e7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8ea
    .line 302
    const-string/jumbo v0, "text/h323"

    #@8ed
    const-string/jumbo v1, "323"

    #@8f0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8f3
    .line 303
    const-string/jumbo v0, "text/iuls"

    #@8f6
    const-string/jumbo v1, "uls"

    #@8f9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8fc
    .line 304
    const-string/jumbo v0, "text/mathml"

    #@8ff
    const-string/jumbo v1, "mml"

    #@902
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@905
    .line 306
    const-string/jumbo v0, "text/plain"

    #@908
    const-string/jumbo v1, "txt"

    #@90b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@90e
    .line 307
    const-string/jumbo v0, "text/plain"

    #@911
    const-string/jumbo v1, "asc"

    #@914
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@917
    .line 308
    const-string/jumbo v0, "text/plain"

    #@91a
    const-string/jumbo v1, "text"

    #@91d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@920
    .line 309
    const-string/jumbo v0, "text/plain"

    #@923
    const-string/jumbo v1, "diff"

    #@926
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@929
    .line 310
    const-string/jumbo v0, "text/plain"

    #@92c
    const-string/jumbo v1, "po"

    #@92f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@932
    .line 311
    const-string/jumbo v0, "text/richtext"

    #@935
    const-string/jumbo v1, "rtx"

    #@938
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@93b
    .line 312
    const-string/jumbo v0, "text/rtf"

    #@93e
    const-string/jumbo v1, "rtf"

    #@941
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@944
    .line 313
    const-string/jumbo v0, "text/text"

    #@947
    const-string/jumbo v1, "phps"

    #@94a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@94d
    .line 314
    const-string/jumbo v0, "text/tab-separated-values"

    #@950
    const-string/jumbo v1, "tsv"

    #@953
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@956
    .line 315
    const-string/jumbo v0, "text/xml"

    #@959
    const-string/jumbo v1, "xml"

    #@95c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@95f
    .line 316
    const-string/jumbo v0, "text/x-bibtex"

    #@962
    const-string/jumbo v1, "bib"

    #@965
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@968
    .line 317
    const-string/jumbo v0, "text/x-boo"

    #@96b
    const-string/jumbo v1, "boo"

    #@96e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@971
    .line 318
    const-string/jumbo v0, "text/x-c++hdr"

    #@974
    const-string/jumbo v1, "hpp"

    #@977
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@97a
    .line 319
    const-string/jumbo v0, "text/x-c++hdr"

    #@97d
    const-string/jumbo v1, "h++"

    #@980
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@983
    .line 320
    const-string/jumbo v0, "text/x-c++hdr"

    #@986
    const-string/jumbo v1, "hxx"

    #@989
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@98c
    .line 321
    const-string/jumbo v0, "text/x-c++hdr"

    #@98f
    const-string/jumbo v1, "hh"

    #@992
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@995
    .line 322
    const-string/jumbo v0, "text/x-c++src"

    #@998
    const-string/jumbo v1, "cpp"

    #@99b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@99e
    .line 323
    const-string/jumbo v0, "text/x-c++src"

    #@9a1
    const-string/jumbo v1, "c++"

    #@9a4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9a7
    .line 324
    const-string/jumbo v0, "text/x-c++src"

    #@9aa
    const-string/jumbo v1, "cc"

    #@9ad
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9b0
    .line 325
    const-string/jumbo v0, "text/x-c++src"

    #@9b3
    const-string/jumbo v1, "cxx"

    #@9b6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9b9
    .line 326
    const-string/jumbo v0, "text/x-chdr"

    #@9bc
    const-string/jumbo v1, "h"

    #@9bf
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9c2
    .line 327
    const-string/jumbo v0, "text/x-component"

    #@9c5
    const-string/jumbo v1, "htc"

    #@9c8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9cb
    .line 328
    const-string/jumbo v0, "text/x-csh"

    #@9ce
    const-string/jumbo v1, "csh"

    #@9d1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9d4
    .line 329
    const-string/jumbo v0, "text/x-csrc"

    #@9d7
    const-string/jumbo v1, "c"

    #@9da
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9dd
    .line 330
    const-string/jumbo v0, "text/x-dsrc"

    #@9e0
    const-string/jumbo v1, "d"

    #@9e3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9e6
    .line 331
    const-string/jumbo v0, "text/x-haskell"

    #@9e9
    const-string/jumbo v1, "hs"

    #@9ec
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9ef
    .line 332
    const-string/jumbo v0, "text/x-java"

    #@9f2
    const-string/jumbo v1, "java"

    #@9f5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9f8
    .line 333
    const-string/jumbo v0, "text/x-literate-haskell"

    #@9fb
    const-string/jumbo v1, "lhs"

    #@9fe
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a01
    .line 334
    const-string/jumbo v0, "text/x-moc"

    #@a04
    const-string/jumbo v1, "moc"

    #@a07
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a0a
    .line 335
    const-string/jumbo v0, "text/x-pascal"

    #@a0d
    const-string/jumbo v1, "p"

    #@a10
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a13
    .line 336
    const-string/jumbo v0, "text/x-pascal"

    #@a16
    const-string/jumbo v1, "pas"

    #@a19
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a1c
    .line 337
    const-string/jumbo v0, "text/x-pcs-gcd"

    #@a1f
    const-string/jumbo v1, "gcd"

    #@a22
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a25
    .line 338
    const-string/jumbo v0, "text/x-setext"

    #@a28
    const-string/jumbo v1, "etx"

    #@a2b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a2e
    .line 339
    const-string/jumbo v0, "text/x-tcl"

    #@a31
    const-string/jumbo v1, "tcl"

    #@a34
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a37
    .line 340
    const-string/jumbo v0, "text/x-tex"

    #@a3a
    const-string/jumbo v1, "tex"

    #@a3d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a40
    .line 341
    const-string/jumbo v0, "text/x-tex"

    #@a43
    const-string/jumbo v1, "ltx"

    #@a46
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a49
    .line 342
    const-string/jumbo v0, "text/x-tex"

    #@a4c
    const-string/jumbo v1, "sty"

    #@a4f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a52
    .line 343
    const-string/jumbo v0, "text/x-tex"

    #@a55
    const-string/jumbo v1, "cls"

    #@a58
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a5b
    .line 344
    const-string/jumbo v0, "text/x-vcalendar"

    #@a5e
    const-string/jumbo v1, "vcs"

    #@a61
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a64
    .line 345
    const-string/jumbo v0, "text/x-vcard"

    #@a67
    const-string/jumbo v1, "vcf"

    #@a6a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a6d
    .line 346
    const-string/jumbo v0, "video/3gpp"

    #@a70
    const-string/jumbo v1, "3gpp"

    #@a73
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a76
    .line 347
    const-string/jumbo v0, "video/3gpp"

    #@a79
    const-string/jumbo v1, "3gp"

    #@a7c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a7f
    .line 348
    const-string/jumbo v0, "video/3gpp2"

    #@a82
    const-string/jumbo v1, "3gpp2"

    #@a85
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a88
    .line 349
    const-string/jumbo v0, "video/3gpp2"

    #@a8b
    const-string/jumbo v1, "3g2"

    #@a8e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a91
    .line 350
    const-string/jumbo v0, "video/avi"

    #@a94
    const-string/jumbo v1, "avi"

    #@a97
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a9a
    .line 351
    const-string/jumbo v0, "video/dl"

    #@a9d
    const-string/jumbo v1, "dl"

    #@aa0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aa3
    .line 352
    const-string/jumbo v0, "video/dv"

    #@aa6
    const-string/jumbo v1, "dif"

    #@aa9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aac
    .line 353
    const-string/jumbo v0, "video/dv"

    #@aaf
    const-string/jumbo v1, "dv"

    #@ab2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ab5
    .line 354
    const-string/jumbo v0, "video/fli"

    #@ab8
    const-string/jumbo v1, "fli"

    #@abb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@abe
    .line 355
    const-string/jumbo v0, "video/m4v"

    #@ac1
    const-string/jumbo v1, "m4v"

    #@ac4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ac7
    .line 356
    const-string/jumbo v0, "video/mp2ts"

    #@aca
    const-string/jumbo v1, "ts"

    #@acd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ad0
    .line 357
    const-string/jumbo v0, "video/mpeg"

    #@ad3
    const-string/jumbo v1, "mpeg"

    #@ad6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ad9
    .line 358
    const-string/jumbo v0, "video/mpeg"

    #@adc
    const-string/jumbo v1, "mpg"

    #@adf
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ae2
    .line 359
    const-string/jumbo v0, "video/mpeg"

    #@ae5
    const-string/jumbo v1, "mpe"

    #@ae8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aeb
    .line 360
    const-string/jumbo v0, "video/mp4"

    #@aee
    const-string/jumbo v1, "mp4"

    #@af1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@af4
    .line 361
    const-string/jumbo v0, "video/mpeg"

    #@af7
    const-string/jumbo v1, "VOB"

    #@afa
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@afd
    .line 362
    const-string/jumbo v0, "video/quicktime"

    #@b00
    const-string/jumbo v1, "qt"

    #@b03
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b06
    .line 363
    const-string/jumbo v0, "video/quicktime"

    #@b09
    const-string/jumbo v1, "mov"

    #@b0c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b0f
    .line 364
    const-string/jumbo v0, "video/vnd.mpegurl"

    #@b12
    const-string/jumbo v1, "mxu"

    #@b15
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b18
    .line 365
    const-string/jumbo v0, "video/webm"

    #@b1b
    const-string/jumbo v1, "webm"

    #@b1e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b21
    .line 366
    const-string/jumbo v0, "video/x-la-asf"

    #@b24
    const-string/jumbo v1, "lsf"

    #@b27
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b2a
    .line 367
    const-string/jumbo v0, "video/x-la-asf"

    #@b2d
    const-string/jumbo v1, "lsx"

    #@b30
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b33
    .line 368
    const-string/jumbo v0, "video/x-matroska"

    #@b36
    const-string/jumbo v1, "mkv"

    #@b39
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b3c
    .line 369
    const-string/jumbo v0, "video/x-mng"

    #@b3f
    const-string/jumbo v1, "mng"

    #@b42
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b45
    .line 370
    const-string/jumbo v0, "video/x-ms-asf"

    #@b48
    const-string/jumbo v1, "asf"

    #@b4b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b4e
    .line 371
    const-string/jumbo v0, "video/x-ms-asf"

    #@b51
    const-string/jumbo v1, "asx"

    #@b54
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b57
    .line 372
    const-string/jumbo v0, "video/x-ms-wm"

    #@b5a
    const-string/jumbo v1, "wm"

    #@b5d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b60
    .line 373
    const-string/jumbo v0, "video/x-ms-wmv"

    #@b63
    const-string/jumbo v1, "wmv"

    #@b66
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b69
    .line 374
    const-string/jumbo v0, "video/x-ms-wmx"

    #@b6c
    const-string/jumbo v1, "wmx"

    #@b6f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b72
    .line 375
    const-string/jumbo v0, "video/x-ms-wvx"

    #@b75
    const-string/jumbo v1, "wvx"

    #@b78
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b7b
    .line 376
    const-string/jumbo v0, "video/x-sgi-movie"

    #@b7e
    const-string/jumbo v1, "movie"

    #@b81
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b84
    .line 377
    const-string/jumbo v0, "video/x-webex"

    #@b87
    const-string/jumbo v1, "wrf"

    #@b8a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b8d
    .line 378
    const-string/jumbo v0, "x-conference/x-cooltalk"

    #@b90
    const-string/jumbo v1, "ice"

    #@b93
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b96
    .line 379
    const-string/jumbo v0, "x-epoc/x-sisx-app"

    #@b99
    const-string/jumbo v1, "sisx"

    #@b9c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b9f
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    #@0
    .prologue
    .line 388
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 389
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@a
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 391
    :cond_0
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 392
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@17
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 382
    :cond_1
    return-void
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 443
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 444
    :cond_0
    return-object v1

    #@a
    .line 446
    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@c
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 417
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 418
    :cond_0
    return-object v1

    #@a
    .line 420
    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@c
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public static hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 430
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 432
    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@c
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 405
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 406
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 408
    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@c
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method
