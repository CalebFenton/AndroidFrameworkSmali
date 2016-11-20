.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static sMimeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 29
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v1, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    #@7
    .line 41
    const v0, 0x1080335

    #@a
    .line 42
    .local v0, "icon":I
    const-string/jumbo v1, "application/vnd.android.package-archive"

    #@d
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@10
    .line 45
    const v0, 0x1080336

    #@13
    .line 46
    const-string/jumbo v1, "application/ogg"

    #@16
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@19
    .line 47
    const-string/jumbo v1, "application/x-flac"

    #@1c
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1f
    .line 50
    const v0, 0x1080337

    #@22
    .line 51
    const-string/jumbo v1, "application/pgp-keys"

    #@25
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@28
    .line 52
    const-string/jumbo v1, "application/pgp-signature"

    #@2b
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2e
    .line 53
    const-string/jumbo v1, "application/x-pkcs12"

    #@31
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@34
    .line 54
    const-string/jumbo v1, "application/x-pkcs7-certreqresp"

    #@37
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@3a
    .line 55
    const-string/jumbo v1, "application/x-pkcs7-crl"

    #@3d
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@40
    .line 56
    const-string/jumbo v1, "application/x-x509-ca-cert"

    #@43
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@46
    .line 57
    const-string/jumbo v1, "application/x-x509-user-cert"

    #@49
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@4c
    .line 58
    const-string/jumbo v1, "application/x-pkcs7-certificates"

    #@4f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@52
    .line 59
    const-string/jumbo v1, "application/x-pkcs7-mime"

    #@55
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@58
    .line 60
    const-string/jumbo v1, "application/x-pkcs7-signature"

    #@5b
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@5e
    .line 63
    const v0, 0x1080338

    #@61
    .line 64
    const-string/jumbo v1, "application/rdf+xml"

    #@64
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@67
    .line 65
    const-string/jumbo v1, "application/rss+xml"

    #@6a
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@6d
    .line 66
    const-string/jumbo v1, "application/x-object"

    #@70
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@73
    .line 67
    const-string/jumbo v1, "application/xhtml+xml"

    #@76
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@79
    .line 68
    const-string/jumbo v1, "text/css"

    #@7c
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@7f
    .line 69
    const-string/jumbo v1, "text/html"

    #@82
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@85
    .line 70
    const-string/jumbo v1, "text/xml"

    #@88
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@8b
    .line 71
    const-string/jumbo v1, "text/x-c++hdr"

    #@8e
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@91
    .line 72
    const-string/jumbo v1, "text/x-c++src"

    #@94
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@97
    .line 73
    const-string/jumbo v1, "text/x-chdr"

    #@9a
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@9d
    .line 74
    const-string/jumbo v1, "text/x-csrc"

    #@a0
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@a3
    .line 75
    const-string/jumbo v1, "text/x-dsrc"

    #@a6
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@a9
    .line 76
    const-string/jumbo v1, "text/x-csh"

    #@ac
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@af
    .line 77
    const-string/jumbo v1, "text/x-haskell"

    #@b2
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@b5
    .line 78
    const-string/jumbo v1, "text/x-java"

    #@b8
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@bb
    .line 79
    const-string/jumbo v1, "text/x-literate-haskell"

    #@be
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@c1
    .line 80
    const-string/jumbo v1, "text/x-pascal"

    #@c4
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@c7
    .line 81
    const-string/jumbo v1, "text/x-tcl"

    #@ca
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@cd
    .line 82
    const-string/jumbo v1, "text/x-tex"

    #@d0
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@d3
    .line 83
    const-string/jumbo v1, "application/x-latex"

    #@d6
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@d9
    .line 84
    const-string/jumbo v1, "application/x-texinfo"

    #@dc
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@df
    .line 85
    const-string/jumbo v1, "application/atom+xml"

    #@e2
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@e5
    .line 86
    const-string/jumbo v1, "application/ecmascript"

    #@e8
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@eb
    .line 87
    const-string/jumbo v1, "application/json"

    #@ee
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@f1
    .line 88
    const-string/jumbo v1, "application/javascript"

    #@f4
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@f7
    .line 89
    const-string/jumbo v1, "application/xml"

    #@fa
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@fd
    .line 90
    const-string/jumbo v1, "text/javascript"

    #@100
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@103
    .line 91
    const-string/jumbo v1, "application/x-javascript"

    #@106
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@109
    .line 94
    const v0, 0x1080339

    #@10c
    .line 95
    const-string/jumbo v1, "application/mac-binhex40"

    #@10f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@112
    .line 96
    const-string/jumbo v1, "application/rar"

    #@115
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@118
    .line 97
    const-string/jumbo v1, "application/zip"

    #@11b
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@11e
    .line 98
    const-string/jumbo v1, "application/x-apple-diskimage"

    #@121
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@124
    .line 99
    const-string/jumbo v1, "application/x-debian-package"

    #@127
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@12a
    .line 100
    const-string/jumbo v1, "application/x-gtar"

    #@12d
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@130
    .line 101
    const-string/jumbo v1, "application/x-iso9660-image"

    #@133
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@136
    .line 102
    const-string/jumbo v1, "application/x-lha"

    #@139
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@13c
    .line 103
    const-string/jumbo v1, "application/x-lzh"

    #@13f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@142
    .line 104
    const-string/jumbo v1, "application/x-lzx"

    #@145
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@148
    .line 105
    const-string/jumbo v1, "application/x-stuffit"

    #@14b
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@14e
    .line 106
    const-string/jumbo v1, "application/x-tar"

    #@151
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@154
    .line 107
    const-string/jumbo v1, "application/x-webarchive"

    #@157
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@15a
    .line 108
    const-string/jumbo v1, "application/x-webarchive-xml"

    #@15d
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@160
    .line 109
    const-string/jumbo v1, "application/gzip"

    #@163
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@166
    .line 110
    const-string/jumbo v1, "application/x-7z-compressed"

    #@169
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@16c
    .line 111
    const-string/jumbo v1, "application/x-deb"

    #@16f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@172
    .line 112
    const-string/jumbo v1, "application/x-rar-compressed"

    #@175
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@178
    .line 115
    const v0, 0x108033a

    #@17b
    .line 116
    const-string/jumbo v1, "text/x-vcard"

    #@17e
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@181
    .line 117
    const-string/jumbo v1, "text/vcard"

    #@184
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@187
    .line 120
    const v0, 0x108033c

    #@18a
    .line 121
    const-string/jumbo v1, "text/calendar"

    #@18d
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@190
    .line 122
    const-string/jumbo v1, "text/x-vcalendar"

    #@193
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@196
    .line 125
    const v0, 0x108033f

    #@199
    .line 126
    const-string/jumbo v1, "application/x-font"

    #@19c
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@19f
    .line 127
    const-string/jumbo v1, "application/font-woff"

    #@1a2
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1a5
    .line 128
    const-string/jumbo v1, "application/x-font-woff"

    #@1a8
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1ab
    .line 129
    const-string/jumbo v1, "application/x-font-ttf"

    #@1ae
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1b1
    .line 132
    const v0, 0x1080341

    #@1b4
    .line 133
    const-string/jumbo v1, "application/vnd.oasis.opendocument.graphics"

    #@1b7
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1ba
    .line 134
    const-string/jumbo v1, "application/vnd.oasis.opendocument.graphics-template"

    #@1bd
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1c0
    .line 135
    const-string/jumbo v1, "application/vnd.oasis.opendocument.image"

    #@1c3
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1c6
    .line 136
    const-string/jumbo v1, "application/vnd.stardivision.draw"

    #@1c9
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1cc
    .line 137
    const-string/jumbo v1, "application/vnd.sun.xml.draw"

    #@1cf
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1d2
    .line 138
    const-string/jumbo v1, "application/vnd.sun.xml.draw.template"

    #@1d5
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1d8
    .line 141
    const v0, 0x1080342

    #@1db
    .line 142
    const-string/jumbo v1, "application/pdf"

    #@1de
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1e1
    .line 145
    const v0, 0x1080344

    #@1e4
    .line 146
    const-string/jumbo v1, "application/vnd.stardivision.impress"

    #@1e7
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1ea
    .line 147
    const-string/jumbo v1, "application/vnd.sun.xml.impress"

    #@1ed
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1f0
    .line 148
    const-string/jumbo v1, "application/vnd.sun.xml.impress.template"

    #@1f3
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1f6
    .line 149
    const-string/jumbo v1, "application/x-kpresenter"

    #@1f9
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@1fc
    .line 150
    const-string/jumbo v1, "application/vnd.oasis.opendocument.presentation"

    #@1ff
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@202
    .line 153
    const v0, 0x1080345

    #@205
    .line 154
    const-string/jumbo v1, "application/vnd.oasis.opendocument.spreadsheet"

    #@208
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@20b
    .line 155
    const-string/jumbo v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    #@20e
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@211
    .line 156
    const-string/jumbo v1, "application/vnd.stardivision.calc"

    #@214
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@217
    .line 157
    const-string/jumbo v1, "application/vnd.sun.xml.calc"

    #@21a
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@21d
    .line 158
    const-string/jumbo v1, "application/vnd.sun.xml.calc.template"

    #@220
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@223
    .line 159
    const-string/jumbo v1, "application/x-kspread"

    #@226
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@229
    .line 162
    const v0, 0x108033b

    #@22c
    .line 163
    const-string/jumbo v1, "application/vnd.oasis.opendocument.text"

    #@22f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@232
    .line 164
    const-string/jumbo v1, "application/vnd.oasis.opendocument.text-master"

    #@235
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@238
    .line 165
    const-string/jumbo v1, "application/vnd.oasis.opendocument.text-template"

    #@23b
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@23e
    .line 166
    const-string/jumbo v1, "application/vnd.oasis.opendocument.text-web"

    #@241
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@244
    .line 167
    const-string/jumbo v1, "application/vnd.stardivision.writer"

    #@247
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@24a
    .line 168
    const-string/jumbo v1, "application/vnd.stardivision.writer-global"

    #@24d
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@250
    .line 169
    const-string/jumbo v1, "application/vnd.sun.xml.writer"

    #@253
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@256
    .line 170
    const-string/jumbo v1, "application/vnd.sun.xml.writer.global"

    #@259
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@25c
    .line 171
    const-string/jumbo v1, "application/vnd.sun.xml.writer.template"

    #@25f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@262
    .line 172
    const-string/jumbo v1, "application/x-abiword"

    #@265
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@268
    .line 173
    const-string/jumbo v1, "application/x-kword"

    #@26b
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@26e
    .line 176
    const v0, 0x1080347

    #@271
    .line 177
    const-string/jumbo v1, "application/x-quicktimeplayer"

    #@274
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@277
    .line 178
    const-string/jumbo v1, "application/x-shockwave-flash"

    #@27a
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@27d
    .line 181
    const v0, 0x1080348

    #@280
    .line 182
    const-string/jumbo v1, "application/msword"

    #@283
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@286
    .line 183
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    #@289
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@28c
    .line 184
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    #@28f
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@292
    .line 187
    const v0, 0x108033d

    #@295
    .line 188
    const-string/jumbo v1, "application/vnd.ms-excel"

    #@298
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@29b
    .line 189
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    #@29e
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2a1
    .line 190
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    #@2a4
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2a7
    .line 193
    const v0, 0x1080343

    #@2aa
    .line 194
    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    #@2ad
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2b0
    .line 195
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    #@2b3
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2b6
    .line 196
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    #@2b9
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2bc
    .line 197
    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    #@2bf
    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    #@2c2
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 32
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " already registered!"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 31
    :cond_0
    return-void
.end method

.method public static loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 201
    const-string/jumbo v2, "vnd.android.document/directory"

    #@4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 202
    const v2, 0x108033e

    #@d
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 206
    :cond_0
    sget-object v2, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    #@14
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/Integer;

    #@1a
    .line 207
    .local v0, "resId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@1c
    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v2

    #@24
    return-object v2

    #@25
    .line 211
    :cond_1
    if-nez p1, :cond_2

    #@27
    .line 213
    return-object v3

    #@28
    .line 217
    :cond_2
    const-string/jumbo v2, "/"

    #@2b
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    const/4 v3, 0x0

    #@30
    aget-object v1, v2, v3

    #@32
    .line 218
    .local v1, "typeOnly":Ljava/lang/String;
    const-string/jumbo v2, "audio"

    #@35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 219
    const v2, 0x1080336

    #@3e
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@41
    move-result-object v2

    #@42
    return-object v2

    #@43
    .line 220
    :cond_3
    const-string/jumbo v2, "image"

    #@46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_4

    #@4c
    .line 221
    const v2, 0x1080341

    #@4f
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@52
    move-result-object v2

    #@53
    return-object v2

    #@54
    .line 222
    :cond_4
    const-string/jumbo v2, "text"

    #@57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_5

    #@5d
    .line 223
    const v2, 0x1080346

    #@60
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@63
    move-result-object v2

    #@64
    return-object v2

    #@65
    .line 224
    :cond_5
    const-string/jumbo v2, "video"

    #@68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_6

    #@6e
    .line 225
    const v2, 0x1080347

    #@71
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@74
    move-result-object v2

    #@75
    return-object v2

    #@76
    .line 227
    :cond_6
    const v2, 0x1080340

    #@79
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7c
    move-result-object v2

    #@7d
    return-object v2
.end method
