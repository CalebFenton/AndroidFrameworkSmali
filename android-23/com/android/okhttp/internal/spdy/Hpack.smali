.class final Lcom/android/okhttp/internal/spdy/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/Hpack$Reader;,
        Lcom/android/okhttp/internal/spdy/Hpack$Writer;
    }
.end annotation


# static fields
.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/spdy/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1()[Lcom/android/okhttp/internal/spdy/Header;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p0, "name"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/okhttp/internal/spdy/Hpack;->checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 46
    const/16 v0, 0x3d

    #@2
    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/Header;

    #@4
    .line 47
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@6
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    #@8
    const-string/jumbo v3, ""

    #@b
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 48
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@13
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    #@15
    const-string/jumbo v3, "GET"

    #@18
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 49
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@20
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    #@22
    const-string/jumbo v3, "POST"

    #@25
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@28
    const/4 v2, 0x2

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 50
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2d
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    #@2f
    const-string/jumbo v3, "/"

    #@32
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@35
    const/4 v2, 0x3

    #@36
    aput-object v1, v0, v2

    #@38
    .line 51
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@3a
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    #@3c
    const-string/jumbo v3, "/index.html"

    #@3f
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    .line 52
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@47
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    #@49
    const-string/jumbo v3, "http"

    #@4c
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 53
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@54
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    #@56
    const-string/jumbo v3, "https"

    #@59
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 54
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@61
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@63
    const-string/jumbo v3, "200"

    #@66
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@69
    const/4 v2, 0x7

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 55
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@6e
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@70
    const-string/jumbo v3, "204"

    #@73
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 56
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@7c
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@7e
    const-string/jumbo v3, "206"

    #@81
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 57
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@8a
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@8c
    const-string/jumbo v3, "304"

    #@8f
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@92
    const/16 v2, 0xa

    #@94
    aput-object v1, v0, v2

    #@96
    .line 58
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@98
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@9a
    const-string/jumbo v3, "400"

    #@9d
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@a0
    const/16 v2, 0xb

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 59
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@a6
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@a8
    const-string/jumbo v3, "404"

    #@ab
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@ae
    const/16 v2, 0xc

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 60
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@b4
    sget-object v2, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@b6
    const-string/jumbo v3, "500"

    #@b9
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@bc
    const/16 v2, 0xd

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 61
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@c2
    const-string/jumbo v2, "accept-charset"

    #@c5
    const-string/jumbo v3, ""

    #@c8
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    const/16 v2, 0xe

    #@cd
    aput-object v1, v0, v2

    #@cf
    .line 62
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@d1
    const-string/jumbo v2, "accept-encoding"

    #@d4
    const-string/jumbo v3, "gzip, deflate"

    #@d7
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@da
    const/16 v2, 0xf

    #@dc
    aput-object v1, v0, v2

    #@de
    .line 63
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@e0
    const-string/jumbo v2, "accept-language"

    #@e3
    const-string/jumbo v3, ""

    #@e6
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    const/16 v2, 0x10

    #@eb
    aput-object v1, v0, v2

    #@ed
    .line 64
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@ef
    const-string/jumbo v2, "accept-ranges"

    #@f2
    const-string/jumbo v3, ""

    #@f5
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f8
    const/16 v2, 0x11

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 65
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@fe
    const-string/jumbo v2, "accept"

    #@101
    const-string/jumbo v3, ""

    #@104
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@107
    const/16 v2, 0x12

    #@109
    aput-object v1, v0, v2

    #@10b
    .line 66
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@10d
    const-string/jumbo v2, "access-control-allow-origin"

    #@110
    const-string/jumbo v3, ""

    #@113
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@116
    const/16 v2, 0x13

    #@118
    aput-object v1, v0, v2

    #@11a
    .line 67
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@11c
    const-string/jumbo v2, "age"

    #@11f
    const-string/jumbo v3, ""

    #@122
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@125
    const/16 v2, 0x14

    #@127
    aput-object v1, v0, v2

    #@129
    .line 68
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@12b
    const-string/jumbo v2, "allow"

    #@12e
    const-string/jumbo v3, ""

    #@131
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@134
    const/16 v2, 0x15

    #@136
    aput-object v1, v0, v2

    #@138
    .line 69
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@13a
    const-string/jumbo v2, "authorization"

    #@13d
    const-string/jumbo v3, ""

    #@140
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@143
    const/16 v2, 0x16

    #@145
    aput-object v1, v0, v2

    #@147
    .line 70
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@149
    const-string/jumbo v2, "cache-control"

    #@14c
    const-string/jumbo v3, ""

    #@14f
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@152
    const/16 v2, 0x17

    #@154
    aput-object v1, v0, v2

    #@156
    .line 71
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@158
    const-string/jumbo v2, "content-disposition"

    #@15b
    const-string/jumbo v3, ""

    #@15e
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@161
    const/16 v2, 0x18

    #@163
    aput-object v1, v0, v2

    #@165
    .line 72
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@167
    const-string/jumbo v2, "content-encoding"

    #@16a
    const-string/jumbo v3, ""

    #@16d
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@170
    const/16 v2, 0x19

    #@172
    aput-object v1, v0, v2

    #@174
    .line 73
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@176
    const-string/jumbo v2, "content-language"

    #@179
    const-string/jumbo v3, ""

    #@17c
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@17f
    const/16 v2, 0x1a

    #@181
    aput-object v1, v0, v2

    #@183
    .line 74
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@185
    const-string/jumbo v2, "content-length"

    #@188
    const-string/jumbo v3, ""

    #@18b
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18e
    const/16 v2, 0x1b

    #@190
    aput-object v1, v0, v2

    #@192
    .line 75
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@194
    const-string/jumbo v2, "content-location"

    #@197
    const-string/jumbo v3, ""

    #@19a
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19d
    const/16 v2, 0x1c

    #@19f
    aput-object v1, v0, v2

    #@1a1
    .line 76
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1a3
    const-string/jumbo v2, "content-range"

    #@1a6
    const-string/jumbo v3, ""

    #@1a9
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1ac
    const/16 v2, 0x1d

    #@1ae
    aput-object v1, v0, v2

    #@1b0
    .line 77
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1b2
    const-string/jumbo v2, "content-type"

    #@1b5
    const-string/jumbo v3, ""

    #@1b8
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1bb
    const/16 v2, 0x1e

    #@1bd
    aput-object v1, v0, v2

    #@1bf
    .line 78
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1c1
    const-string/jumbo v2, "cookie"

    #@1c4
    const-string/jumbo v3, ""

    #@1c7
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1ca
    const/16 v2, 0x1f

    #@1cc
    aput-object v1, v0, v2

    #@1ce
    .line 79
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1d0
    const-string/jumbo v2, "date"

    #@1d3
    const-string/jumbo v3, ""

    #@1d6
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1d9
    const/16 v2, 0x20

    #@1db
    aput-object v1, v0, v2

    #@1dd
    .line 80
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1df
    const-string/jumbo v2, "etag"

    #@1e2
    const-string/jumbo v3, ""

    #@1e5
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e8
    const/16 v2, 0x21

    #@1ea
    aput-object v1, v0, v2

    #@1ec
    .line 81
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1ee
    const-string/jumbo v2, "expect"

    #@1f1
    const-string/jumbo v3, ""

    #@1f4
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1f7
    const/16 v2, 0x22

    #@1f9
    aput-object v1, v0, v2

    #@1fb
    .line 82
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@1fd
    const-string/jumbo v2, "expires"

    #@200
    const-string/jumbo v3, ""

    #@203
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@206
    const/16 v2, 0x23

    #@208
    aput-object v1, v0, v2

    #@20a
    .line 83
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@20c
    const-string/jumbo v2, "from"

    #@20f
    const-string/jumbo v3, ""

    #@212
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@215
    const/16 v2, 0x24

    #@217
    aput-object v1, v0, v2

    #@219
    .line 84
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@21b
    const-string/jumbo v2, "host"

    #@21e
    const-string/jumbo v3, ""

    #@221
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@224
    const/16 v2, 0x25

    #@226
    aput-object v1, v0, v2

    #@228
    .line 85
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@22a
    const-string/jumbo v2, "if-match"

    #@22d
    const-string/jumbo v3, ""

    #@230
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@233
    const/16 v2, 0x26

    #@235
    aput-object v1, v0, v2

    #@237
    .line 86
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@239
    const-string/jumbo v2, "if-modified-since"

    #@23c
    const-string/jumbo v3, ""

    #@23f
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@242
    const/16 v2, 0x27

    #@244
    aput-object v1, v0, v2

    #@246
    .line 87
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@248
    const-string/jumbo v2, "if-none-match"

    #@24b
    const-string/jumbo v3, ""

    #@24e
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@251
    const/16 v2, 0x28

    #@253
    aput-object v1, v0, v2

    #@255
    .line 88
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@257
    const-string/jumbo v2, "if-range"

    #@25a
    const-string/jumbo v3, ""

    #@25d
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@260
    const/16 v2, 0x29

    #@262
    aput-object v1, v0, v2

    #@264
    .line 89
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@266
    const-string/jumbo v2, "if-unmodified-since"

    #@269
    const-string/jumbo v3, ""

    #@26c
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@26f
    const/16 v2, 0x2a

    #@271
    aput-object v1, v0, v2

    #@273
    .line 90
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@275
    const-string/jumbo v2, "last-modified"

    #@278
    const-string/jumbo v3, ""

    #@27b
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@27e
    const/16 v2, 0x2b

    #@280
    aput-object v1, v0, v2

    #@282
    .line 91
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@284
    const-string/jumbo v2, "link"

    #@287
    const-string/jumbo v3, ""

    #@28a
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@28d
    const/16 v2, 0x2c

    #@28f
    aput-object v1, v0, v2

    #@291
    .line 92
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@293
    const-string/jumbo v2, "location"

    #@296
    const-string/jumbo v3, ""

    #@299
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@29c
    const/16 v2, 0x2d

    #@29e
    aput-object v1, v0, v2

    #@2a0
    .line 93
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2a2
    const-string/jumbo v2, "max-forwards"

    #@2a5
    const-string/jumbo v3, ""

    #@2a8
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2ab
    const/16 v2, 0x2e

    #@2ad
    aput-object v1, v0, v2

    #@2af
    .line 94
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2b1
    const-string/jumbo v2, "proxy-authenticate"

    #@2b4
    const-string/jumbo v3, ""

    #@2b7
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2ba
    const/16 v2, 0x2f

    #@2bc
    aput-object v1, v0, v2

    #@2be
    .line 95
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2c0
    const-string/jumbo v2, "proxy-authorization"

    #@2c3
    const-string/jumbo v3, ""

    #@2c6
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2c9
    const/16 v2, 0x30

    #@2cb
    aput-object v1, v0, v2

    #@2cd
    .line 96
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2cf
    const-string/jumbo v2, "range"

    #@2d2
    const-string/jumbo v3, ""

    #@2d5
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2d8
    const/16 v2, 0x31

    #@2da
    aput-object v1, v0, v2

    #@2dc
    .line 97
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2de
    const-string/jumbo v2, "referer"

    #@2e1
    const-string/jumbo v3, ""

    #@2e4
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2e7
    const/16 v2, 0x32

    #@2e9
    aput-object v1, v0, v2

    #@2eb
    .line 98
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2ed
    const-string/jumbo v2, "refresh"

    #@2f0
    const-string/jumbo v3, ""

    #@2f3
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2f6
    const/16 v2, 0x33

    #@2f8
    aput-object v1, v0, v2

    #@2fa
    .line 99
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@2fc
    const-string/jumbo v2, "retry-after"

    #@2ff
    const-string/jumbo v3, ""

    #@302
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@305
    const/16 v2, 0x34

    #@307
    aput-object v1, v0, v2

    #@309
    .line 100
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@30b
    const-string/jumbo v2, "server"

    #@30e
    const-string/jumbo v3, ""

    #@311
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@314
    const/16 v2, 0x35

    #@316
    aput-object v1, v0, v2

    #@318
    .line 101
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@31a
    const-string/jumbo v2, "set-cookie"

    #@31d
    const-string/jumbo v3, ""

    #@320
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@323
    const/16 v2, 0x36

    #@325
    aput-object v1, v0, v2

    #@327
    .line 102
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@329
    const-string/jumbo v2, "strict-transport-security"

    #@32c
    const-string/jumbo v3, ""

    #@32f
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@332
    const/16 v2, 0x37

    #@334
    aput-object v1, v0, v2

    #@336
    .line 103
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@338
    const-string/jumbo v2, "transfer-encoding"

    #@33b
    const-string/jumbo v3, ""

    #@33e
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@341
    const/16 v2, 0x38

    #@343
    aput-object v1, v0, v2

    #@345
    .line 104
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@347
    const-string/jumbo v2, "user-agent"

    #@34a
    const-string/jumbo v3, ""

    #@34d
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@350
    const/16 v2, 0x39

    #@352
    aput-object v1, v0, v2

    #@354
    .line 105
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@356
    const-string/jumbo v2, "vary"

    #@359
    const-string/jumbo v3, ""

    #@35c
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@35f
    const/16 v2, 0x3a

    #@361
    aput-object v1, v0, v2

    #@363
    .line 106
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@365
    const-string/jumbo v2, "via"

    #@368
    const-string/jumbo v3, ""

    #@36b
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36e
    const/16 v2, 0x3b

    #@370
    aput-object v1, v0, v2

    #@372
    .line 107
    new-instance v1, Lcom/android/okhttp/internal/spdy/Header;

    #@374
    const-string/jumbo v2, "www-authenticate"

    #@377
    const-string/jumbo v3, ""

    #@37a
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@37d
    const/16 v2, 0x3c

    #@37f
    aput-object v1, v0, v2

    #@381
    .line 46
    sput-object v0, Lcom/android/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;

    #@383
    .line 357
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->nameToFirstIndex()Ljava/util/Map;

    #@386
    move-result-object v0

    #@387
    sput-object v0, Lcom/android/okhttp/internal/spdy/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    #@389
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .locals 6
    .param p0, "name"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 427
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@4
    move-result v2

    #@5
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 428
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    #@a
    move-result v0

    #@b
    .line 429
    .local v0, "c":B
    const/16 v3, 0x41

    #@d
    if-lt v0, v3, :cond_0

    #@f
    const/16 v3, 0x5a

    #@11
    if-gt v0, v3, :cond_0

    #@13
    .line 430
    new-instance v3, Ljava/io/IOException;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "PROTOCOL_ERROR response malformed: mixed case name: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 433
    .end local v0    # "c":B
    :cond_1
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 360
    new-instance v1, Ljava/util/LinkedHashMap;

    #@2
    sget-object v2, Lcom/android/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;

    #@4
    array-length v2, v2

    #@5
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@8
    .line 361
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lokio/ByteString;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;

    #@b
    array-length v2, v2

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 362
    sget-object v2, Lcom/android/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;

    #@10
    aget-object v2, v2, v0

    #@12
    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@14
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 363
    sget-object v2, Lcom/android/okhttp/internal/spdy/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/spdy/Header;

    #@1c
    aget-object v2, v2, v0

    #@1e
    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 366
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method
