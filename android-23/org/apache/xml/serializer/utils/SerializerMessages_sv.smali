.class public Lorg/apache/xml/serializer/utils/SerializerMessages_sv;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_sv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 28
    const/16 v1, 0x11

    #@5
    new-array v0, v1, [[Ljava/lang/Object;

    #@7
    .line 44
    new-array v1, v5, [Ljava/lang/Object;

    #@9
    const-string/jumbo v2, "ER_INVALID_PORT"

    #@c
    aput-object v2, v1, v3

    #@e
    .line 45
    const-string/jumbo v2, "Ogiltigt portnummer"

    #@11
    aput-object v2, v1, v4

    #@13
    .line 44
    aput-object v1, v0, v3

    #@15
    .line 47
    new-array v1, v5, [Ljava/lang/Object;

    #@17
    const-string/jumbo v2, "ER_PORT_WHEN_HOST_NULL"

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 48
    const-string/jumbo v2, "Port kan inte s\u00e4ttas n\u00e4r v\u00e4rd \u00e4r null"

    #@1f
    aput-object v2, v1, v4

    #@21
    .line 47
    aput-object v1, v0, v4

    #@23
    .line 50
    new-array v1, v5, [Ljava/lang/Object;

    #@25
    const-string/jumbo v2, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 51
    const-string/jumbo v2, "V\u00e4rd \u00e4r inte en v\u00e4lformulerad adress"

    #@2d
    aput-object v2, v1, v4

    #@2f
    .line 50
    aput-object v1, v0, v5

    #@31
    .line 53
    new-array v1, v5, [Ljava/lang/Object;

    #@33
    const-string/jumbo v2, "ER_SCHEME_NOT_CONFORMANT"

    #@36
    aput-object v2, v1, v3

    #@38
    .line 54
    const-string/jumbo v2, "Schemat \u00e4r inte likformigt."

    #@3b
    aput-object v2, v1, v4

    #@3d
    .line 53
    const/4 v2, 0x3

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 56
    new-array v1, v5, [Ljava/lang/Object;

    #@42
    const-string/jumbo v2, "ER_SCHEME_FROM_NULL_STRING"

    #@45
    aput-object v2, v1, v3

    #@47
    .line 57
    const-string/jumbo v2, "Kan inte s\u00e4tta schema fr\u00e5n null-str\u00e4ng"

    #@4a
    aput-object v2, v1, v4

    #@4c
    .line 56
    const/4 v2, 0x4

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 59
    new-array v1, v5, [Ljava/lang/Object;

    #@51
    const-string/jumbo v2, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    #@54
    aput-object v2, v1, v3

    #@56
    .line 60
    const-string/jumbo v2, "V\u00e4g inneh\u00e5ller ogiltig flyktsekvens"

    #@59
    aput-object v2, v1, v4

    #@5b
    .line 59
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 62
    new-array v1, v5, [Ljava/lang/Object;

    #@60
    const-string/jumbo v2, "ER_PATH_INVALID_CHAR"

    #@63
    aput-object v2, v1, v3

    #@65
    .line 63
    const-string/jumbo v2, "V\u00e4g inneh\u00e5ller ogiltigt tecken: {0}"

    #@68
    aput-object v2, v1, v4

    #@6a
    .line 62
    const/4 v2, 0x6

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 65
    new-array v1, v5, [Ljava/lang/Object;

    #@6f
    const-string/jumbo v2, "ER_FRAG_INVALID_CHAR"

    #@72
    aput-object v2, v1, v3

    #@74
    .line 66
    const-string/jumbo v2, "Fragment inneh\u00e5ller ogiltigt tecken"

    #@77
    aput-object v2, v1, v4

    #@79
    .line 65
    const/4 v2, 0x7

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 68
    new-array v1, v5, [Ljava/lang/Object;

    #@7e
    const-string/jumbo v2, "ER_FRAG_WHEN_PATH_NULL"

    #@81
    aput-object v2, v1, v3

    #@83
    .line 69
    const-string/jumbo v2, "Fragment kan inte s\u00e4ttas n\u00e4r v\u00e4g \u00e4r null"

    #@86
    aput-object v2, v1, v4

    #@88
    .line 68
    const/16 v2, 0x8

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 71
    new-array v1, v5, [Ljava/lang/Object;

    #@8e
    const-string/jumbo v2, "ER_FRAG_FOR_GENERIC_URI"

    #@91
    aput-object v2, v1, v3

    #@93
    .line 72
    const-string/jumbo v2, "Fragment kan bara s\u00e4ttas f\u00f6r en allm\u00e4n URI"

    #@96
    aput-object v2, v1, v4

    #@98
    .line 71
    const/16 v2, 0x9

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 74
    new-array v1, v5, [Ljava/lang/Object;

    #@9e
    const-string/jumbo v2, "ER_NO_SCHEME_IN_URI"

    #@a1
    aput-object v2, v1, v3

    #@a3
    .line 75
    const-string/jumbo v2, "Schema saknas i URI: {0}"

    #@a6
    aput-object v2, v1, v4

    #@a8
    .line 74
    const/16 v2, 0xa

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 77
    new-array v1, v5, [Ljava/lang/Object;

    #@ae
    const-string/jumbo v2, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    #@b1
    aput-object v2, v1, v3

    #@b3
    .line 78
    const-string/jumbo v2, "Kan inte initialisera URI med tomma parametrar"

    #@b6
    aput-object v2, v1, v4

    #@b8
    .line 77
    const/16 v2, 0xb

    #@ba
    aput-object v1, v0, v2

    #@bc
    .line 80
    new-array v1, v5, [Ljava/lang/Object;

    #@be
    const-string/jumbo v2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    #@c1
    aput-object v2, v1, v3

    #@c3
    .line 81
    const-string/jumbo v2, "Fragment kan inte anges i b\u00e5de v\u00e4gen och fragmentet"

    #@c6
    aput-object v2, v1, v4

    #@c8
    .line 80
    const/16 v2, 0xc

    #@ca
    aput-object v1, v0, v2

    #@cc
    .line 83
    new-array v1, v5, [Ljava/lang/Object;

    #@ce
    const-string/jumbo v2, "ER_NO_QUERY_STRING_IN_PATH"

    #@d1
    aput-object v2, v1, v3

    #@d3
    .line 84
    const-string/jumbo v2, "F\u00f6rfr\u00e5gan-str\u00e4ng kan inte anges i v\u00e4g och f\u00f6rfr\u00e5gan-str\u00e4ng"

    #@d6
    aput-object v2, v1, v4

    #@d8
    .line 83
    const/16 v2, 0xd

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 86
    new-array v1, v5, [Ljava/lang/Object;

    #@de
    const-string/jumbo v2, "ER_NO_PORT_IF_NO_HOST"

    #@e1
    aput-object v2, v1, v3

    #@e3
    .line 87
    const-string/jumbo v2, "Port f\u00e5r inte anges om v\u00e4rden inte \u00e4r angiven"

    #@e6
    aput-object v2, v1, v4

    #@e8
    .line 86
    const/16 v2, 0xe

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 89
    new-array v1, v5, [Ljava/lang/Object;

    #@ee
    const-string/jumbo v2, "ER_NO_USERINFO_IF_NO_HOST"

    #@f1
    aput-object v2, v1, v3

    #@f3
    .line 90
    const-string/jumbo v2, "Userinfo f\u00e5r inte anges om v\u00e4rden inte \u00e4r angiven"

    #@f6
    aput-object v2, v1, v4

    #@f8
    .line 89
    const/16 v2, 0xf

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 92
    new-array v1, v5, [Ljava/lang/Object;

    #@fe
    const-string/jumbo v2, "ER_SCHEME_REQUIRED"

    #@101
    aput-object v2, v1, v3

    #@103
    .line 93
    const-string/jumbo v2, "Schema kr\u00e4vs!"

    #@106
    aput-object v2, v1, v4

    #@108
    .line 92
    const/16 v2, 0x10

    #@10a
    aput-object v1, v0, v2

    #@10c
    .line 96
    .local v0, "contents":[[Ljava/lang/Object;
    return-object v0
.end method
