.class public Lcom/google/android/mms/pdu/PduContentTypes;
.super Ljava/lang/Object;
.source "PduContentTypes.java"


# static fields
.field static final contentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 25
    const/16 v0, 0x53

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 26
    const-string/jumbo v1, "*/*"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 27
    const-string/jumbo v1, "text/*"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 28
    const-string/jumbo v1, "text/html"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 29
    const-string/jumbo v1, "text/plain"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 30
    const-string/jumbo v1, "text/x-hdml"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 31
    const-string/jumbo v1, "text/x-ttml"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 32
    const-string/jumbo v1, "text/x-vCalendar"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 33
    const-string/jumbo v1, "text/x-vCard"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 34
    const-string/jumbo v1, "text/vnd.wap.wml"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 35
    const-string/jumbo v1, "text/vnd.wap.wmlscript"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 36
    const-string/jumbo v1, "text/vnd.wap.wta-event"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 37
    const-string/jumbo v1, "multipart/*"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 38
    const-string/jumbo v1, "multipart/mixed"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 39
    const-string/jumbo v1, "multipart/form-data"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 40
    const-string/jumbo v1, "multipart/byterantes"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 41
    const-string/jumbo v1, "multipart/alternative"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 42
    const-string/jumbo v1, "application/*"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 43
    const-string/jumbo v1, "application/java-vm"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 44
    const-string/jumbo v1, "application/x-www-form-urlencoded"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 45
    const-string/jumbo v1, "application/x-hdmlc"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    .line 46
    const-string/jumbo v1, "application/vnd.wap.wmlc"

    #@8b
    const/16 v2, 0x14

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 47
    const-string/jumbo v1, "application/vnd.wap.wmlscriptc"

    #@92
    const/16 v2, 0x15

    #@94
    aput-object v1, v0, v2

    #@96
    .line 48
    const-string/jumbo v1, "application/vnd.wap.wta-eventc"

    #@99
    const/16 v2, 0x16

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 49
    const-string/jumbo v1, "application/vnd.wap.uaprof"

    #@a0
    const/16 v2, 0x17

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 50
    const-string/jumbo v1, "application/vnd.wap.wtls-ca-certificate"

    #@a7
    const/16 v2, 0x18

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 51
    const-string/jumbo v1, "application/vnd.wap.wtls-user-certificate"

    #@ae
    const/16 v2, 0x19

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 52
    const-string/jumbo v1, "application/x-x509-ca-cert"

    #@b5
    const/16 v2, 0x1a

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 53
    const-string/jumbo v1, "application/x-x509-user-cert"

    #@bc
    const/16 v2, 0x1b

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 54
    const-string/jumbo v1, "image/*"

    #@c3
    const/16 v2, 0x1c

    #@c5
    aput-object v1, v0, v2

    #@c7
    .line 55
    const-string/jumbo v1, "image/gif"

    #@ca
    const/16 v2, 0x1d

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 56
    const-string/jumbo v1, "image/jpeg"

    #@d1
    const/16 v2, 0x1e

    #@d3
    aput-object v1, v0, v2

    #@d5
    .line 57
    const-string/jumbo v1, "image/tiff"

    #@d8
    const/16 v2, 0x1f

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 58
    const-string/jumbo v1, "image/png"

    #@df
    const/16 v2, 0x20

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 59
    const-string/jumbo v1, "image/vnd.wap.wbmp"

    #@e6
    const/16 v2, 0x21

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 60
    const-string/jumbo v1, "application/vnd.wap.multipart.*"

    #@ed
    const/16 v2, 0x22

    #@ef
    aput-object v1, v0, v2

    #@f1
    .line 61
    const-string/jumbo v1, "application/vnd.wap.multipart.mixed"

    #@f4
    const/16 v2, 0x23

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 62
    const-string/jumbo v1, "application/vnd.wap.multipart.form-data"

    #@fb
    const/16 v2, 0x24

    #@fd
    aput-object v1, v0, v2

    #@ff
    .line 63
    const-string/jumbo v1, "application/vnd.wap.multipart.byteranges"

    #@102
    const/16 v2, 0x25

    #@104
    aput-object v1, v0, v2

    #@106
    .line 64
    const-string/jumbo v1, "application/vnd.wap.multipart.alternative"

    #@109
    const/16 v2, 0x26

    #@10b
    aput-object v1, v0, v2

    #@10d
    .line 65
    const-string/jumbo v1, "application/xml"

    #@110
    const/16 v2, 0x27

    #@112
    aput-object v1, v0, v2

    #@114
    .line 66
    const-string/jumbo v1, "text/xml"

    #@117
    const/16 v2, 0x28

    #@119
    aput-object v1, v0, v2

    #@11b
    .line 67
    const-string/jumbo v1, "application/vnd.wap.wbxml"

    #@11e
    const/16 v2, 0x29

    #@120
    aput-object v1, v0, v2

    #@122
    .line 68
    const-string/jumbo v1, "application/x-x968-cross-cert"

    #@125
    const/16 v2, 0x2a

    #@127
    aput-object v1, v0, v2

    #@129
    .line 69
    const-string/jumbo v1, "application/x-x968-ca-cert"

    #@12c
    const/16 v2, 0x2b

    #@12e
    aput-object v1, v0, v2

    #@130
    .line 70
    const-string/jumbo v1, "application/x-x968-user-cert"

    #@133
    const/16 v2, 0x2c

    #@135
    aput-object v1, v0, v2

    #@137
    .line 71
    const-string/jumbo v1, "text/vnd.wap.si"

    #@13a
    const/16 v2, 0x2d

    #@13c
    aput-object v1, v0, v2

    #@13e
    .line 72
    const-string/jumbo v1, "application/vnd.wap.sic"

    #@141
    const/16 v2, 0x2e

    #@143
    aput-object v1, v0, v2

    #@145
    .line 73
    const-string/jumbo v1, "text/vnd.wap.sl"

    #@148
    const/16 v2, 0x2f

    #@14a
    aput-object v1, v0, v2

    #@14c
    .line 74
    const-string/jumbo v1, "application/vnd.wap.slc"

    #@14f
    const/16 v2, 0x30

    #@151
    aput-object v1, v0, v2

    #@153
    .line 75
    const-string/jumbo v1, "text/vnd.wap.co"

    #@156
    const/16 v2, 0x31

    #@158
    aput-object v1, v0, v2

    #@15a
    .line 76
    const-string/jumbo v1, "application/vnd.wap.coc"

    #@15d
    const/16 v2, 0x32

    #@15f
    aput-object v1, v0, v2

    #@161
    .line 77
    const-string/jumbo v1, "application/vnd.wap.multipart.related"

    #@164
    const/16 v2, 0x33

    #@166
    aput-object v1, v0, v2

    #@168
    .line 78
    const-string/jumbo v1, "application/vnd.wap.sia"

    #@16b
    const/16 v2, 0x34

    #@16d
    aput-object v1, v0, v2

    #@16f
    .line 79
    const-string/jumbo v1, "text/vnd.wap.connectivity-xml"

    #@172
    const/16 v2, 0x35

    #@174
    aput-object v1, v0, v2

    #@176
    .line 80
    const-string/jumbo v1, "application/vnd.wap.connectivity-wbxml"

    #@179
    const/16 v2, 0x36

    #@17b
    aput-object v1, v0, v2

    #@17d
    .line 81
    const-string/jumbo v1, "application/pkcs7-mime"

    #@180
    const/16 v2, 0x37

    #@182
    aput-object v1, v0, v2

    #@184
    .line 82
    const-string/jumbo v1, "application/vnd.wap.hashed-certificate"

    #@187
    const/16 v2, 0x38

    #@189
    aput-object v1, v0, v2

    #@18b
    .line 83
    const-string/jumbo v1, "application/vnd.wap.signed-certificate"

    #@18e
    const/16 v2, 0x39

    #@190
    aput-object v1, v0, v2

    #@192
    .line 84
    const-string/jumbo v1, "application/vnd.wap.cert-response"

    #@195
    const/16 v2, 0x3a

    #@197
    aput-object v1, v0, v2

    #@199
    .line 85
    const-string/jumbo v1, "application/xhtml+xml"

    #@19c
    const/16 v2, 0x3b

    #@19e
    aput-object v1, v0, v2

    #@1a0
    .line 86
    const-string/jumbo v1, "application/wml+xml"

    #@1a3
    const/16 v2, 0x3c

    #@1a5
    aput-object v1, v0, v2

    #@1a7
    .line 87
    const-string/jumbo v1, "text/css"

    #@1aa
    const/16 v2, 0x3d

    #@1ac
    aput-object v1, v0, v2

    #@1ae
    .line 88
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    #@1b1
    const/16 v2, 0x3e

    #@1b3
    aput-object v1, v0, v2

    #@1b5
    .line 89
    const-string/jumbo v1, "application/vnd.wap.rollover-certificate"

    #@1b8
    const/16 v2, 0x3f

    #@1ba
    aput-object v1, v0, v2

    #@1bc
    .line 90
    const-string/jumbo v1, "application/vnd.wap.locc+wbxml"

    #@1bf
    const/16 v2, 0x40

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    .line 91
    const-string/jumbo v1, "application/vnd.wap.loc+xml"

    #@1c6
    const/16 v2, 0x41

    #@1c8
    aput-object v1, v0, v2

    #@1ca
    .line 92
    const-string/jumbo v1, "application/vnd.syncml.dm+wbxml"

    #@1cd
    const/16 v2, 0x42

    #@1cf
    aput-object v1, v0, v2

    #@1d1
    .line 93
    const-string/jumbo v1, "application/vnd.syncml.dm+xml"

    #@1d4
    const/16 v2, 0x43

    #@1d6
    aput-object v1, v0, v2

    #@1d8
    .line 94
    const-string/jumbo v1, "application/vnd.syncml.notification"

    #@1db
    const/16 v2, 0x44

    #@1dd
    aput-object v1, v0, v2

    #@1df
    .line 95
    const-string/jumbo v1, "application/vnd.wap.xhtml+xml"

    #@1e2
    const/16 v2, 0x45

    #@1e4
    aput-object v1, v0, v2

    #@1e6
    .line 96
    const-string/jumbo v1, "application/vnd.wv.csp.cir"

    #@1e9
    const/16 v2, 0x46

    #@1eb
    aput-object v1, v0, v2

    #@1ed
    .line 97
    const-string/jumbo v1, "application/vnd.oma.dd+xml"

    #@1f0
    const/16 v2, 0x47

    #@1f2
    aput-object v1, v0, v2

    #@1f4
    .line 98
    const-string/jumbo v1, "application/vnd.oma.drm.message"

    #@1f7
    const/16 v2, 0x48

    #@1f9
    aput-object v1, v0, v2

    #@1fb
    .line 99
    const-string/jumbo v1, "application/vnd.oma.drm.content"

    #@1fe
    const/16 v2, 0x49

    #@200
    aput-object v1, v0, v2

    #@202
    .line 100
    const-string/jumbo v1, "application/vnd.oma.drm.rights+xml"

    #@205
    const/16 v2, 0x4a

    #@207
    aput-object v1, v0, v2

    #@209
    .line 101
    const-string/jumbo v1, "application/vnd.oma.drm.rights+wbxml"

    #@20c
    const/16 v2, 0x4b

    #@20e
    aput-object v1, v0, v2

    #@210
    .line 102
    const-string/jumbo v1, "application/vnd.wv.csp+xml"

    #@213
    const/16 v2, 0x4c

    #@215
    aput-object v1, v0, v2

    #@217
    .line 103
    const-string/jumbo v1, "application/vnd.wv.csp+wbxml"

    #@21a
    const/16 v2, 0x4d

    #@21c
    aput-object v1, v0, v2

    #@21e
    .line 104
    const-string/jumbo v1, "application/vnd.syncml.ds.notification"

    #@221
    const/16 v2, 0x4e

    #@223
    aput-object v1, v0, v2

    #@225
    .line 105
    const-string/jumbo v1, "audio/*"

    #@228
    const/16 v2, 0x4f

    #@22a
    aput-object v1, v0, v2

    #@22c
    .line 106
    const-string/jumbo v1, "video/*"

    #@22f
    const/16 v2, 0x50

    #@231
    aput-object v1, v0, v2

    #@233
    .line 107
    const-string/jumbo v1, "application/vnd.oma.dd2+xml"

    #@236
    const/16 v2, 0x51

    #@238
    aput-object v1, v0, v2

    #@23a
    .line 108
    const-string/jumbo v1, "application/mikey"

    #@23d
    const/16 v2, 0x52

    #@23f
    aput-object v1, v0, v2

    #@241
    .line 25
    sput-object v0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@243
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
