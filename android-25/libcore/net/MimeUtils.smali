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
    .line 215
    const-string/jumbo v0, "video/3gpp"

    #@5f0
    const-string/jumbo v1, "3gpp"

    #@5f3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5f6
    .line 216
    const-string/jumbo v0, "video/3gpp"

    #@5f9
    const-string/jumbo v1, "3gp"

    #@5fc
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@5ff
    .line 217
    const-string/jumbo v0, "video/3gpp2"

    #@602
    const-string/jumbo v1, "3gpp2"

    #@605
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@608
    .line 218
    const-string/jumbo v0, "video/3gpp2"

    #@60b
    const-string/jumbo v1, "3g2"

    #@60e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@611
    .line 219
    const-string/jumbo v0, "audio/3gpp"

    #@614
    const-string/jumbo v1, "3gpp"

    #@617
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@61a
    .line 220
    const-string/jumbo v0, "audio/aac"

    #@61d
    const-string/jumbo v1, "aac"

    #@620
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@623
    .line 221
    const-string/jumbo v0, "audio/aac-adts"

    #@626
    const-string/jumbo v1, "aac"

    #@629
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@62c
    .line 222
    const-string/jumbo v0, "audio/amr"

    #@62f
    const-string/jumbo v1, "amr"

    #@632
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@635
    .line 223
    const-string/jumbo v0, "audio/amr-wb"

    #@638
    const-string/jumbo v1, "awb"

    #@63b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@63e
    .line 224
    const-string/jumbo v0, "audio/basic"

    #@641
    const-string/jumbo v1, "snd"

    #@644
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@647
    .line 225
    const-string/jumbo v0, "audio/flac"

    #@64a
    const-string/jumbo v1, "flac"

    #@64d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@650
    .line 226
    const-string/jumbo v0, "application/x-flac"

    #@653
    const-string/jumbo v1, "flac"

    #@656
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@659
    .line 227
    const-string/jumbo v0, "audio/imelody"

    #@65c
    const-string/jumbo v1, "imy"

    #@65f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@662
    .line 228
    const-string/jumbo v0, "audio/midi"

    #@665
    const-string/jumbo v1, "mid"

    #@668
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@66b
    .line 229
    const-string/jumbo v0, "audio/midi"

    #@66e
    const-string/jumbo v1, "midi"

    #@671
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@674
    .line 230
    const-string/jumbo v0, "audio/midi"

    #@677
    const-string/jumbo v1, "ota"

    #@67a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@67d
    .line 231
    const-string/jumbo v0, "audio/midi"

    #@680
    const-string/jumbo v1, "kar"

    #@683
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@686
    .line 232
    const-string/jumbo v0, "audio/midi"

    #@689
    const-string/jumbo v1, "rtttl"

    #@68c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@68f
    .line 233
    const-string/jumbo v0, "audio/midi"

    #@692
    const-string/jumbo v1, "xmf"

    #@695
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@698
    .line 234
    const-string/jumbo v0, "audio/mobile-xmf"

    #@69b
    const-string/jumbo v1, "mxmf"

    #@69e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6a1
    .line 236
    const-string/jumbo v0, "audio/mpeg"

    #@6a4
    const-string/jumbo v1, "mp3"

    #@6a7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6aa
    .line 237
    const-string/jumbo v0, "audio/mpeg"

    #@6ad
    const-string/jumbo v1, "mpga"

    #@6b0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6b3
    .line 238
    const-string/jumbo v0, "audio/mpeg"

    #@6b6
    const-string/jumbo v1, "mpega"

    #@6b9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6bc
    .line 239
    const-string/jumbo v0, "audio/mpeg"

    #@6bf
    const-string/jumbo v1, "mp2"

    #@6c2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6c5
    .line 240
    const-string/jumbo v0, "audio/mpeg"

    #@6c8
    const-string/jumbo v1, "m4a"

    #@6cb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6ce
    .line 241
    const-string/jumbo v0, "audio/mpegurl"

    #@6d1
    const-string/jumbo v1, "m3u"

    #@6d4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6d7
    .line 242
    const-string/jumbo v0, "audio/prs.sid"

    #@6da
    const-string/jumbo v1, "sid"

    #@6dd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6e0
    .line 243
    const-string/jumbo v0, "audio/x-aiff"

    #@6e3
    const-string/jumbo v1, "aif"

    #@6e6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6e9
    .line 244
    const-string/jumbo v0, "audio/x-aiff"

    #@6ec
    const-string/jumbo v1, "aiff"

    #@6ef
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6f2
    .line 245
    const-string/jumbo v0, "audio/x-aiff"

    #@6f5
    const-string/jumbo v1, "aifc"

    #@6f8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@6fb
    .line 246
    const-string/jumbo v0, "audio/x-gsm"

    #@6fe
    const-string/jumbo v1, "gsm"

    #@701
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@704
    .line 247
    const-string/jumbo v0, "audio/x-matroska"

    #@707
    const-string/jumbo v1, "mka"

    #@70a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@70d
    .line 248
    const-string/jumbo v0, "audio/x-mpegurl"

    #@710
    const-string/jumbo v1, "m3u"

    #@713
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@716
    .line 249
    const-string/jumbo v0, "audio/x-ms-wma"

    #@719
    const-string/jumbo v1, "wma"

    #@71c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@71f
    .line 250
    const-string/jumbo v0, "audio/x-ms-wax"

    #@722
    const-string/jumbo v1, "wax"

    #@725
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@728
    .line 251
    const-string/jumbo v0, "audio/x-pn-realaudio"

    #@72b
    const-string/jumbo v1, "ra"

    #@72e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@731
    .line 252
    const-string/jumbo v0, "audio/x-pn-realaudio"

    #@734
    const-string/jumbo v1, "rm"

    #@737
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@73a
    .line 253
    const-string/jumbo v0, "audio/x-pn-realaudio"

    #@73d
    const-string/jumbo v1, "ram"

    #@740
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@743
    .line 254
    const-string/jumbo v0, "audio/x-realaudio"

    #@746
    const-string/jumbo v1, "ra"

    #@749
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@74c
    .line 255
    const-string/jumbo v0, "audio/x-scpls"

    #@74f
    const-string/jumbo v1, "pls"

    #@752
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@755
    .line 256
    const-string/jumbo v0, "audio/x-sd2"

    #@758
    const-string/jumbo v1, "sd2"

    #@75b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@75e
    .line 257
    const-string/jumbo v0, "audio/x-wav"

    #@761
    const-string/jumbo v1, "wav"

    #@764
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@767
    .line 259
    const-string/jumbo v0, "image/x-ms-bmp"

    #@76a
    const-string/jumbo v1, "bmp"

    #@76d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@770
    .line 260
    const-string/jumbo v0, "image/bmp"

    #@773
    const-string/jumbo v1, "bmp"

    #@776
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@779
    .line 261
    const-string/jumbo v0, "image/gif"

    #@77c
    const-string/jumbo v1, "gif"

    #@77f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@782
    .line 263
    const-string/jumbo v0, "image/x-icon"

    #@785
    const-string/jumbo v1, "ico"

    #@788
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@78b
    .line 264
    const-string/jumbo v0, "image/ico"

    #@78e
    const-string/jumbo v1, "cur"

    #@791
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@794
    .line 265
    const-string/jumbo v0, "image/ico"

    #@797
    const-string/jumbo v1, "ico"

    #@79a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@79d
    .line 266
    const-string/jumbo v0, "image/ief"

    #@7a0
    const-string/jumbo v1, "ief"

    #@7a3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7a6
    .line 268
    const-string/jumbo v0, "image/jpeg"

    #@7a9
    const-string/jumbo v1, "jpg"

    #@7ac
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7af
    .line 269
    const-string/jumbo v0, "image/jpeg"

    #@7b2
    const-string/jumbo v1, "jpeg"

    #@7b5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7b8
    .line 270
    const-string/jumbo v0, "image/jpeg"

    #@7bb
    const-string/jumbo v1, "jpe"

    #@7be
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7c1
    .line 271
    const-string/jumbo v0, "image/pcx"

    #@7c4
    const-string/jumbo v1, "pcx"

    #@7c7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7ca
    .line 272
    const-string/jumbo v0, "image/png"

    #@7cd
    const-string/jumbo v1, "png"

    #@7d0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7d3
    .line 273
    const-string/jumbo v0, "image/svg+xml"

    #@7d6
    const-string/jumbo v1, "svg"

    #@7d9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7dc
    .line 274
    const-string/jumbo v0, "image/svg+xml"

    #@7df
    const-string/jumbo v1, "svgz"

    #@7e2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7e5
    .line 275
    const-string/jumbo v0, "image/tiff"

    #@7e8
    const-string/jumbo v1, "tiff"

    #@7eb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7ee
    .line 276
    const-string/jumbo v0, "image/tiff"

    #@7f1
    const-string/jumbo v1, "tif"

    #@7f4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@7f7
    .line 277
    const-string/jumbo v0, "image/vnd.djvu"

    #@7fa
    const-string/jumbo v1, "djvu"

    #@7fd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@800
    .line 278
    const-string/jumbo v0, "image/vnd.djvu"

    #@803
    const-string/jumbo v1, "djv"

    #@806
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@809
    .line 279
    const-string/jumbo v0, "image/vnd.wap.wbmp"

    #@80c
    const-string/jumbo v1, "wbmp"

    #@80f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@812
    .line 280
    const-string/jumbo v0, "image/webp"

    #@815
    const-string/jumbo v1, "webp"

    #@818
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@81b
    .line 281
    const-string/jumbo v0, "image/x-adobe-dng"

    #@81e
    const-string/jumbo v1, "dng"

    #@821
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@824
    .line 282
    const-string/jumbo v0, "image/x-canon-cr2"

    #@827
    const-string/jumbo v1, "cr2"

    #@82a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@82d
    .line 283
    const-string/jumbo v0, "image/x-cmu-raster"

    #@830
    const-string/jumbo v1, "ras"

    #@833
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@836
    .line 284
    const-string/jumbo v0, "image/x-coreldraw"

    #@839
    const-string/jumbo v1, "cdr"

    #@83c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@83f
    .line 285
    const-string/jumbo v0, "image/x-coreldrawpattern"

    #@842
    const-string/jumbo v1, "pat"

    #@845
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@848
    .line 286
    const-string/jumbo v0, "image/x-coreldrawtemplate"

    #@84b
    const-string/jumbo v1, "cdt"

    #@84e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@851
    .line 287
    const-string/jumbo v0, "image/x-corelphotopaint"

    #@854
    const-string/jumbo v1, "cpt"

    #@857
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@85a
    .line 288
    const-string/jumbo v0, "image/x-fuji-raf"

    #@85d
    const-string/jumbo v1, "raf"

    #@860
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@863
    .line 289
    const-string/jumbo v0, "image/x-jg"

    #@866
    const-string/jumbo v1, "art"

    #@869
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@86c
    .line 290
    const-string/jumbo v0, "image/x-jng"

    #@86f
    const-string/jumbo v1, "jng"

    #@872
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@875
    .line 291
    const-string/jumbo v0, "image/x-nikon-nef"

    #@878
    const-string/jumbo v1, "nef"

    #@87b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@87e
    .line 292
    const-string/jumbo v0, "image/x-nikon-nrw"

    #@881
    const-string/jumbo v1, "nrw"

    #@884
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@887
    .line 293
    const-string/jumbo v0, "image/x-olympus-orf"

    #@88a
    const-string/jumbo v1, "orf"

    #@88d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@890
    .line 294
    const-string/jumbo v0, "image/x-panasonic-rw2"

    #@893
    const-string/jumbo v1, "rw2"

    #@896
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@899
    .line 295
    const-string/jumbo v0, "image/x-pentax-pef"

    #@89c
    const-string/jumbo v1, "pef"

    #@89f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8a2
    .line 296
    const-string/jumbo v0, "image/x-photoshop"

    #@8a5
    const-string/jumbo v1, "psd"

    #@8a8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8ab
    .line 297
    const-string/jumbo v0, "image/x-portable-anymap"

    #@8ae
    const-string/jumbo v1, "pnm"

    #@8b1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8b4
    .line 298
    const-string/jumbo v0, "image/x-portable-bitmap"

    #@8b7
    const-string/jumbo v1, "pbm"

    #@8ba
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8bd
    .line 299
    const-string/jumbo v0, "image/x-portable-graymap"

    #@8c0
    const-string/jumbo v1, "pgm"

    #@8c3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8c6
    .line 300
    const-string/jumbo v0, "image/x-portable-pixmap"

    #@8c9
    const-string/jumbo v1, "ppm"

    #@8cc
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8cf
    .line 301
    const-string/jumbo v0, "image/x-samsung-srw"

    #@8d2
    const-string/jumbo v1, "srw"

    #@8d5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8d8
    .line 302
    const-string/jumbo v0, "image/x-sony-arw"

    #@8db
    const-string/jumbo v1, "arw"

    #@8de
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8e1
    .line 303
    const-string/jumbo v0, "image/x-rgb"

    #@8e4
    const-string/jumbo v1, "rgb"

    #@8e7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8ea
    .line 304
    const-string/jumbo v0, "image/x-xbitmap"

    #@8ed
    const-string/jumbo v1, "xbm"

    #@8f0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8f3
    .line 305
    const-string/jumbo v0, "image/x-xpixmap"

    #@8f6
    const-string/jumbo v1, "xpm"

    #@8f9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@8fc
    .line 306
    const-string/jumbo v0, "image/x-xwindowdump"

    #@8ff
    const-string/jumbo v1, "xwd"

    #@902
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@905
    .line 307
    const-string/jumbo v0, "model/iges"

    #@908
    const-string/jumbo v1, "igs"

    #@90b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@90e
    .line 308
    const-string/jumbo v0, "model/iges"

    #@911
    const-string/jumbo v1, "iges"

    #@914
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@917
    .line 309
    const-string/jumbo v0, "model/mesh"

    #@91a
    const-string/jumbo v1, "msh"

    #@91d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@920
    .line 310
    const-string/jumbo v0, "model/mesh"

    #@923
    const-string/jumbo v1, "mesh"

    #@926
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@929
    .line 311
    const-string/jumbo v0, "model/mesh"

    #@92c
    const-string/jumbo v1, "silo"

    #@92f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@932
    .line 312
    const-string/jumbo v0, "text/calendar"

    #@935
    const-string/jumbo v1, "ics"

    #@938
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@93b
    .line 313
    const-string/jumbo v0, "text/calendar"

    #@93e
    const-string/jumbo v1, "icz"

    #@941
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@944
    .line 314
    const-string/jumbo v0, "text/comma-separated-values"

    #@947
    const-string/jumbo v1, "csv"

    #@94a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@94d
    .line 315
    const-string/jumbo v0, "text/css"

    #@950
    const-string/jumbo v1, "css"

    #@953
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@956
    .line 316
    const-string/jumbo v0, "text/html"

    #@959
    const-string/jumbo v1, "htm"

    #@95c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@95f
    .line 317
    const-string/jumbo v0, "text/html"

    #@962
    const-string/jumbo v1, "html"

    #@965
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@968
    .line 318
    const-string/jumbo v0, "text/h323"

    #@96b
    const-string/jumbo v1, "323"

    #@96e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@971
    .line 319
    const-string/jumbo v0, "text/iuls"

    #@974
    const-string/jumbo v1, "uls"

    #@977
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@97a
    .line 320
    const-string/jumbo v0, "text/mathml"

    #@97d
    const-string/jumbo v1, "mml"

    #@980
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@983
    .line 322
    const-string/jumbo v0, "text/plain"

    #@986
    const-string/jumbo v1, "txt"

    #@989
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@98c
    .line 323
    const-string/jumbo v0, "text/plain"

    #@98f
    const-string/jumbo v1, "asc"

    #@992
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@995
    .line 324
    const-string/jumbo v0, "text/plain"

    #@998
    const-string/jumbo v1, "text"

    #@99b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@99e
    .line 325
    const-string/jumbo v0, "text/plain"

    #@9a1
    const-string/jumbo v1, "diff"

    #@9a4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9a7
    .line 326
    const-string/jumbo v0, "text/plain"

    #@9aa
    const-string/jumbo v1, "po"

    #@9ad
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9b0
    .line 327
    const-string/jumbo v0, "text/richtext"

    #@9b3
    const-string/jumbo v1, "rtx"

    #@9b6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9b9
    .line 328
    const-string/jumbo v0, "text/rtf"

    #@9bc
    const-string/jumbo v1, "rtf"

    #@9bf
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9c2
    .line 329
    const-string/jumbo v0, "text/text"

    #@9c5
    const-string/jumbo v1, "phps"

    #@9c8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9cb
    .line 330
    const-string/jumbo v0, "text/tab-separated-values"

    #@9ce
    const-string/jumbo v1, "tsv"

    #@9d1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9d4
    .line 331
    const-string/jumbo v0, "text/xml"

    #@9d7
    const-string/jumbo v1, "xml"

    #@9da
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9dd
    .line 332
    const-string/jumbo v0, "text/x-bibtex"

    #@9e0
    const-string/jumbo v1, "bib"

    #@9e3
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9e6
    .line 333
    const-string/jumbo v0, "text/x-boo"

    #@9e9
    const-string/jumbo v1, "boo"

    #@9ec
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9ef
    .line 334
    const-string/jumbo v0, "text/x-c++hdr"

    #@9f2
    const-string/jumbo v1, "hpp"

    #@9f5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@9f8
    .line 335
    const-string/jumbo v0, "text/x-c++hdr"

    #@9fb
    const-string/jumbo v1, "h++"

    #@9fe
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a01
    .line 336
    const-string/jumbo v0, "text/x-c++hdr"

    #@a04
    const-string/jumbo v1, "hxx"

    #@a07
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a0a
    .line 337
    const-string/jumbo v0, "text/x-c++hdr"

    #@a0d
    const-string/jumbo v1, "hh"

    #@a10
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a13
    .line 338
    const-string/jumbo v0, "text/x-c++src"

    #@a16
    const-string/jumbo v1, "cpp"

    #@a19
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a1c
    .line 339
    const-string/jumbo v0, "text/x-c++src"

    #@a1f
    const-string/jumbo v1, "c++"

    #@a22
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a25
    .line 340
    const-string/jumbo v0, "text/x-c++src"

    #@a28
    const-string/jumbo v1, "cc"

    #@a2b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a2e
    .line 341
    const-string/jumbo v0, "text/x-c++src"

    #@a31
    const-string/jumbo v1, "cxx"

    #@a34
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a37
    .line 342
    const-string/jumbo v0, "text/x-chdr"

    #@a3a
    const-string/jumbo v1, "h"

    #@a3d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a40
    .line 343
    const-string/jumbo v0, "text/x-component"

    #@a43
    const-string/jumbo v1, "htc"

    #@a46
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a49
    .line 344
    const-string/jumbo v0, "text/x-csh"

    #@a4c
    const-string/jumbo v1, "csh"

    #@a4f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a52
    .line 345
    const-string/jumbo v0, "text/x-csrc"

    #@a55
    const-string/jumbo v1, "c"

    #@a58
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a5b
    .line 346
    const-string/jumbo v0, "text/x-dsrc"

    #@a5e
    const-string/jumbo v1, "d"

    #@a61
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a64
    .line 347
    const-string/jumbo v0, "text/x-haskell"

    #@a67
    const-string/jumbo v1, "hs"

    #@a6a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a6d
    .line 348
    const-string/jumbo v0, "text/x-java"

    #@a70
    const-string/jumbo v1, "java"

    #@a73
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a76
    .line 349
    const-string/jumbo v0, "text/x-literate-haskell"

    #@a79
    const-string/jumbo v1, "lhs"

    #@a7c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a7f
    .line 350
    const-string/jumbo v0, "text/x-moc"

    #@a82
    const-string/jumbo v1, "moc"

    #@a85
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a88
    .line 351
    const-string/jumbo v0, "text/x-pascal"

    #@a8b
    const-string/jumbo v1, "p"

    #@a8e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a91
    .line 352
    const-string/jumbo v0, "text/x-pascal"

    #@a94
    const-string/jumbo v1, "pas"

    #@a97
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@a9a
    .line 353
    const-string/jumbo v0, "text/x-pcs-gcd"

    #@a9d
    const-string/jumbo v1, "gcd"

    #@aa0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aa3
    .line 354
    const-string/jumbo v0, "text/x-setext"

    #@aa6
    const-string/jumbo v1, "etx"

    #@aa9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aac
    .line 355
    const-string/jumbo v0, "text/x-tcl"

    #@aaf
    const-string/jumbo v1, "tcl"

    #@ab2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ab5
    .line 356
    const-string/jumbo v0, "text/x-tex"

    #@ab8
    const-string/jumbo v1, "tex"

    #@abb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@abe
    .line 357
    const-string/jumbo v0, "text/x-tex"

    #@ac1
    const-string/jumbo v1, "ltx"

    #@ac4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ac7
    .line 358
    const-string/jumbo v0, "text/x-tex"

    #@aca
    const-string/jumbo v1, "sty"

    #@acd
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ad0
    .line 359
    const-string/jumbo v0, "text/x-tex"

    #@ad3
    const-string/jumbo v1, "cls"

    #@ad6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ad9
    .line 360
    const-string/jumbo v0, "text/x-vcalendar"

    #@adc
    const-string/jumbo v1, "vcs"

    #@adf
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ae2
    .line 361
    const-string/jumbo v0, "text/x-vcard"

    #@ae5
    const-string/jumbo v1, "vcf"

    #@ae8
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@aeb
    .line 362
    const-string/jumbo v0, "video/avi"

    #@aee
    const-string/jumbo v1, "avi"

    #@af1
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@af4
    .line 363
    const-string/jumbo v0, "video/dl"

    #@af7
    const-string/jumbo v1, "dl"

    #@afa
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@afd
    .line 364
    const-string/jumbo v0, "video/dv"

    #@b00
    const-string/jumbo v1, "dif"

    #@b03
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b06
    .line 365
    const-string/jumbo v0, "video/dv"

    #@b09
    const-string/jumbo v1, "dv"

    #@b0c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b0f
    .line 366
    const-string/jumbo v0, "video/fli"

    #@b12
    const-string/jumbo v1, "fli"

    #@b15
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b18
    .line 367
    const-string/jumbo v0, "video/m4v"

    #@b1b
    const-string/jumbo v1, "m4v"

    #@b1e
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b21
    .line 368
    const-string/jumbo v0, "video/mp2ts"

    #@b24
    const-string/jumbo v1, "ts"

    #@b27
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b2a
    .line 369
    const-string/jumbo v0, "video/mpeg"

    #@b2d
    const-string/jumbo v1, "mpeg"

    #@b30
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b33
    .line 370
    const-string/jumbo v0, "video/mpeg"

    #@b36
    const-string/jumbo v1, "mpg"

    #@b39
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b3c
    .line 371
    const-string/jumbo v0, "video/mpeg"

    #@b3f
    const-string/jumbo v1, "mpe"

    #@b42
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b45
    .line 372
    const-string/jumbo v0, "video/mp4"

    #@b48
    const-string/jumbo v1, "mp4"

    #@b4b
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b4e
    .line 373
    const-string/jumbo v0, "video/mpeg"

    #@b51
    const-string/jumbo v1, "VOB"

    #@b54
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b57
    .line 374
    const-string/jumbo v0, "video/quicktime"

    #@b5a
    const-string/jumbo v1, "qt"

    #@b5d
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b60
    .line 375
    const-string/jumbo v0, "video/quicktime"

    #@b63
    const-string/jumbo v1, "mov"

    #@b66
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b69
    .line 376
    const-string/jumbo v0, "video/vnd.mpegurl"

    #@b6c
    const-string/jumbo v1, "mxu"

    #@b6f
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b72
    .line 377
    const-string/jumbo v0, "video/webm"

    #@b75
    const-string/jumbo v1, "webm"

    #@b78
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b7b
    .line 378
    const-string/jumbo v0, "video/x-la-asf"

    #@b7e
    const-string/jumbo v1, "lsf"

    #@b81
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b84
    .line 379
    const-string/jumbo v0, "video/x-la-asf"

    #@b87
    const-string/jumbo v1, "lsx"

    #@b8a
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b8d
    .line 380
    const-string/jumbo v0, "video/x-matroska"

    #@b90
    const-string/jumbo v1, "mkv"

    #@b93
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b96
    .line 381
    const-string/jumbo v0, "video/x-mng"

    #@b99
    const-string/jumbo v1, "mng"

    #@b9c
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b9f
    .line 382
    const-string/jumbo v0, "video/x-ms-asf"

    #@ba2
    const-string/jumbo v1, "asf"

    #@ba5
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@ba8
    .line 383
    const-string/jumbo v0, "video/x-ms-asf"

    #@bab
    const-string/jumbo v1, "asx"

    #@bae
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bb1
    .line 384
    const-string/jumbo v0, "video/x-ms-wm"

    #@bb4
    const-string/jumbo v1, "wm"

    #@bb7
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bba
    .line 385
    const-string/jumbo v0, "video/x-ms-wmv"

    #@bbd
    const-string/jumbo v1, "wmv"

    #@bc0
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bc3
    .line 386
    const-string/jumbo v0, "video/x-ms-wmx"

    #@bc6
    const-string/jumbo v1, "wmx"

    #@bc9
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bcc
    .line 387
    const-string/jumbo v0, "video/x-ms-wvx"

    #@bcf
    const-string/jumbo v1, "wvx"

    #@bd2
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bd5
    .line 388
    const-string/jumbo v0, "video/x-sgi-movie"

    #@bd8
    const-string/jumbo v1, "movie"

    #@bdb
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bde
    .line 389
    const-string/jumbo v0, "video/x-webex"

    #@be1
    const-string/jumbo v1, "wrf"

    #@be4
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@be7
    .line 390
    const-string/jumbo v0, "x-conference/x-cooltalk"

    #@bea
    const-string/jumbo v1, "ice"

    #@bed
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bf0
    .line 391
    const-string/jumbo v0, "x-epoc/x-sisx-app"

    #@bf3
    const-string/jumbo v1, "sisx"

    #@bf6
    invoke-static {v0, v1}, Llibcore/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@bf9
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 408
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
    .line 400
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 401
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@a
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 403
    :cond_0
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 404
    sget-object v0, Llibcore/net/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    #@17
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 394
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
    .line 455
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 456
    :cond_0
    return-object v1

    #@a
    .line 458
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
    .line 429
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 430
    :cond_0
    return-object v1

    #@a
    .line 432
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
    .line 441
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 442
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 444
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
    .line 417
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 418
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 420
    :cond_1
    sget-object v0, Llibcore/net/MimeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    #@c
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method
