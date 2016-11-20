.class public Lorg/apache/xml/serializer/utils/SerializerMessages_ja;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_ja.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
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
    .line 73
    const/16 v1, 0x3b

    #@5
    new-array v0, v1, [[Ljava/lang/Object;

    #@7
    .line 74
    new-array v1, v5, [Ljava/lang/Object;

    #@9
    const-string/jumbo v2, "BAD_MSGKEY"

    #@c
    aput-object v2, v1, v3

    #@e
    .line 75
    const-string/jumbo v2, "\u30e1\u30c3\u30bb\u30fc\u30b8\u30fb\u30ad\u30fc \'\'{0}\'\' \u306f\u30e1\u30c3\u30bb\u30fc\u30b8\u30fb\u30af\u30e9\u30b9 \'\'{1}\'\' \u306b\u3042\u308a\u307e\u305b\u3093\u3002"

    #@11
    aput-object v2, v1, v4

    #@13
    .line 74
    aput-object v1, v0, v3

    #@15
    .line 77
    new-array v1, v5, [Ljava/lang/Object;

    #@17
    const-string/jumbo v2, "BAD_MSGFORMAT"

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 78
    const-string/jumbo v2, "\u30e1\u30c3\u30bb\u30fc\u30b8\u30fb\u30af\u30e9\u30b9 \'\'{1}\'\' \u306e\u30e1\u30c3\u30bb\u30fc\u30b8 \'\'{0}\'\' \u306e\u30d5\u30a9\u30fc\u30de\u30c3\u30c8\u8a2d\u5b9a\u304c\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    #@1f
    aput-object v2, v1, v4

    #@21
    .line 77
    aput-object v1, v0, v4

    #@23
    .line 80
    new-array v1, v5, [Ljava/lang/Object;

    #@25
    const-string/jumbo v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 81
    const-string/jumbo v2, "\u30b7\u30ea\u30a2\u30e9\u30a4\u30b6\u30fc\u30fb\u30af\u30e9\u30b9 \'\'{0}\'\' \u306f org.xml.sax.ContentHandler \u3092\u5b9f\u88c5\u3057\u307e\u305b\u3093\u3002"

    #@2d
    aput-object v2, v1, v4

    #@2f
    .line 80
    aput-object v1, v0, v5

    #@31
    .line 83
    new-array v1, v5, [Ljava/lang/Object;

    #@33
    const-string/jumbo v2, "ER_RESOURCE_COULD_NOT_FIND"

    #@36
    aput-object v2, v1, v3

    #@38
    .line 84
    const-string/jumbo v2, "\u30ea\u30bd\u30fc\u30b9 [ {0} ] \u306f\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3067\u3057\u305f\u3002\n {1}"

    #@3b
    aput-object v2, v1, v4

    #@3d
    .line 83
    const/4 v2, 0x3

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 86
    new-array v1, v5, [Ljava/lang/Object;

    #@42
    const-string/jumbo v2, "ER_RESOURCE_COULD_NOT_LOAD"

    #@45
    aput-object v2, v1, v3

    #@47
    .line 87
    const-string/jumbo v2, "\u30ea\u30bd\u30fc\u30b9 [ {0} ] \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f: {1} \n {2} \t {3}"

    #@4a
    aput-object v2, v1, v4

    #@4c
    .line 86
    const/4 v2, 0x4

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 89
    new-array v1, v5, [Ljava/lang/Object;

    #@51
    const-string/jumbo v2, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    #@54
    aput-object v2, v1, v3

    #@56
    .line 90
    const-string/jumbo v2, "\u30d0\u30c3\u30d5\u30a1\u30fc\u30fb\u30b5\u30a4\u30ba <=0"

    #@59
    aput-object v2, v1, v4

    #@5b
    .line 89
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 92
    new-array v1, v5, [Ljava/lang/Object;

    #@60
    const-string/jumbo v2, "ER_INVALID_UTF16_SURROGATE"

    #@63
    aput-object v2, v1, v3

    #@65
    .line 93
    const-string/jumbo v2, "\u7121\u52b9\u306a UTF-16 \u30b5\u30ed\u30b2\u30fc\u30c8\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f: {0} ?"

    #@68
    aput-object v2, v1, v4

    #@6a
    .line 92
    const/4 v2, 0x6

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 95
    new-array v1, v5, [Ljava/lang/Object;

    #@6f
    const-string/jumbo v2, "ER_OIERROR"

    #@72
    aput-object v2, v1, v3

    #@74
    .line 96
    const-string/jumbo v2, "\u5165\u51fa\u529b\u30a8\u30e9\u30fc"

    #@77
    aput-object v2, v1, v4

    #@79
    .line 95
    const/4 v2, 0x7

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 98
    new-array v1, v5, [Ljava/lang/Object;

    #@7e
    const-string/jumbo v2, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    #@81
    aput-object v2, v1, v3

    #@83
    .line 99
    const-string/jumbo v2, "\u4e0b\u4f4d\u30ce\u30fc\u30c9\u306e\u5f8c\u307e\u305f\u306f\u8981\u7d20\u304c\u751f\u6210\u3055\u308c\u308b\u524d\u306b\u5c5e\u6027 {0} \u306f\u8ffd\u52a0\u3067\u304d\u307e\u305b\u3093\u3002  \u5c5e\u6027\u306f\u7121\u8996\u3055\u308c\u307e\u3059\u3002"

    #@86
    aput-object v2, v1, v4

    #@88
    .line 98
    const/16 v2, 0x8

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 106
    new-array v1, v5, [Ljava/lang/Object;

    #@8e
    const-string/jumbo v2, "ER_NAMESPACE_PREFIX"

    #@91
    aput-object v2, v1, v3

    #@93
    .line 107
    const-string/jumbo v2, "\u63a5\u982d\u90e8 \'\'{0}\'\' \u306e\u540d\u524d\u7a7a\u9593\u304c\u5ba3\u8a00\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    #@96
    aput-object v2, v1, v4

    #@98
    .line 106
    const/16 v2, 0x9

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 115
    new-array v1, v5, [Ljava/lang/Object;

    #@9e
    const-string/jumbo v2, "ER_STRAY_ATTRIBUTE"

    #@a1
    aput-object v2, v1, v3

    #@a3
    .line 116
    const-string/jumbo v2, "\u5c5e\u6027 \'\'{0}\'\' \u304c\u8981\u7d20\u306e\u5916\u5074\u3067\u3059\u3002"

    #@a6
    aput-object v2, v1, v4

    #@a8
    .line 115
    const/16 v2, 0xa

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 125
    new-array v1, v5, [Ljava/lang/Object;

    #@ae
    const-string/jumbo v2, "ER_STRAY_NAMESPACE"

    #@b1
    aput-object v2, v1, v3

    #@b3
    .line 126
    const-string/jumbo v2, "\u540d\u524d\u7a7a\u9593\u5ba3\u8a00 \'\'{0}\'\'=\'\'{1}\'\' \u304c\u8981\u7d20\u306e\u5916\u5074\u3067\u3059\u3002"

    #@b6
    aput-object v2, v1, v4

    #@b8
    .line 125
    const/16 v2, 0xb

    #@ba
    aput-object v1, v0, v2

    #@bc
    .line 128
    new-array v1, v5, [Ljava/lang/Object;

    #@be
    const-string/jumbo v2, "ER_COULD_NOT_LOAD_RESOURCE"

    #@c1
    aput-object v2, v1, v3

    #@c3
    .line 129
    const-string/jumbo v2, "\'\'{0}\'\' \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f (CLASSPATH \u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044)\u3002\u73fe\u5728\u306f\u30c7\u30d5\u30a9\u30eb\u30c8\u306e\u3082\u306e\u306e\u307f\u3092\u4f7f\u7528\u3057\u3066\u3044\u307e\u3059\u3002"

    #@c6
    aput-object v2, v1, v4

    #@c8
    .line 128
    const/16 v2, 0xc

    #@ca
    aput-object v1, v0, v2

    #@cc
    .line 131
    new-array v1, v5, [Ljava/lang/Object;

    #@ce
    const-string/jumbo v2, "ER_ILLEGAL_CHARACTER"

    #@d1
    aput-object v2, v1, v3

    #@d3
    .line 132
    const-string/jumbo v2, "{1} \u306e\u6307\u5b9a\u3055\u308c\u305f\u51fa\u529b\u30a8\u30f3\u30b3\u30fc\u30c9\u3067\u8868\u305b\u306a\u3044\u6574\u6570\u5024 {0} \u306e\u6587\u5b57\u306e\u51fa\u529b\u3092\u8a66\u307f\u307e\u3057\u305f\u3002"

    #@d6
    aput-object v2, v1, v4

    #@d8
    .line 131
    const/16 v2, 0xd

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 134
    new-array v1, v5, [Ljava/lang/Object;

    #@de
    const-string/jumbo v2, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    #@e1
    aput-object v2, v1, v3

    #@e3
    .line 135
    const-string/jumbo v2, "\u51fa\u529b\u30e1\u30bd\u30c3\u30c9 \'\'{1}\'\' \u306e\u30d7\u30ed\u30d1\u30c6\u30a3\u30fc\u30fb\u30d5\u30a1\u30a4\u30eb \'\'{0}\'\' \u3092\u30ed\u30fc\u30c9\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f (CLASSPATH \u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044)"

    #@e6
    aput-object v2, v1, v4

    #@e8
    .line 134
    const/16 v2, 0xe

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 137
    new-array v1, v5, [Ljava/lang/Object;

    #@ee
    const-string/jumbo v2, "ER_INVALID_PORT"

    #@f1
    aput-object v2, v1, v3

    #@f3
    .line 138
    const-string/jumbo v2, "\u7121\u52b9\u306a\u30dd\u30fc\u30c8\u756a\u53f7"

    #@f6
    aput-object v2, v1, v4

    #@f8
    .line 137
    const/16 v2, 0xf

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 140
    new-array v1, v5, [Ljava/lang/Object;

    #@fe
    const-string/jumbo v2, "ER_PORT_WHEN_HOST_NULL"

    #@101
    aput-object v2, v1, v3

    #@103
    .line 141
    const-string/jumbo v2, "\u30db\u30b9\u30c8\u304c\u30cc\u30eb\u3067\u3042\u308b\u3068\u30dd\u30fc\u30c8\u3092\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    #@106
    aput-object v2, v1, v4

    #@108
    .line 140
    const/16 v2, 0x10

    #@10a
    aput-object v1, v0, v2

    #@10c
    .line 143
    new-array v1, v5, [Ljava/lang/Object;

    #@10e
    const-string/jumbo v2, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    #@111
    aput-object v2, v1, v3

    #@113
    .line 144
    const-string/jumbo v2, "\u30db\u30b9\u30c8\u306f\u3046\u307e\u304f\u69cb\u6210\u3055\u308c\u305f\u30a2\u30c9\u30ec\u30b9\u3067\u3042\u308a\u307e\u305b\u3093"

    #@116
    aput-object v2, v1, v4

    #@118
    .line 143
    const/16 v2, 0x11

    #@11a
    aput-object v1, v0, v2

    #@11c
    .line 146
    new-array v1, v5, [Ljava/lang/Object;

    #@11e
    const-string/jumbo v2, "ER_SCHEME_NOT_CONFORMANT"

    #@121
    aput-object v2, v1, v3

    #@123
    .line 147
    const-string/jumbo v2, "\u30b9\u30ad\u30fc\u30e0\u306f\u4e00\u81f4\u3057\u3066\u3044\u307e\u305b\u3093\u3002"

    #@126
    aput-object v2, v1, v4

    #@128
    .line 146
    const/16 v2, 0x12

    #@12a
    aput-object v1, v0, v2

    #@12c
    .line 149
    new-array v1, v5, [Ljava/lang/Object;

    #@12e
    const-string/jumbo v2, "ER_SCHEME_FROM_NULL_STRING"

    #@131
    aput-object v2, v1, v3

    #@133
    .line 150
    const-string/jumbo v2, "\u30cc\u30eb\u30fb\u30b9\u30c8\u30ea\u30f3\u30b0\u304b\u3089\u306f\u30b9\u30ad\u30fc\u30e0\u3092\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    #@136
    aput-object v2, v1, v4

    #@138
    .line 149
    const/16 v2, 0x13

    #@13a
    aput-object v1, v0, v2

    #@13c
    .line 152
    new-array v1, v5, [Ljava/lang/Object;

    #@13e
    const-string/jumbo v2, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    #@141
    aput-object v2, v1, v3

    #@143
    .line 153
    const-string/jumbo v2, "\u30d1\u30b9\u306b\u7121\u52b9\u306a\u30a8\u30b9\u30b1\u30fc\u30d7\u30fb\u30b7\u30fc\u30b1\u30f3\u30b9\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059"

    #@146
    aput-object v2, v1, v4

    #@148
    .line 152
    const/16 v2, 0x14

    #@14a
    aput-object v1, v0, v2

    #@14c
    .line 155
    new-array v1, v5, [Ljava/lang/Object;

    #@14e
    const-string/jumbo v2, "ER_PATH_INVALID_CHAR"

    #@151
    aput-object v2, v1, v3

    #@153
    .line 156
    const-string/jumbo v2, "\u30d1\u30b9\u306b\u7121\u52b9\u6587\u5b57: {0} \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059"

    #@156
    aput-object v2, v1, v4

    #@158
    .line 155
    const/16 v2, 0x15

    #@15a
    aput-object v1, v0, v2

    #@15c
    .line 158
    new-array v1, v5, [Ljava/lang/Object;

    #@15e
    const-string/jumbo v2, "ER_FRAG_INVALID_CHAR"

    #@161
    aput-object v2, v1, v3

    #@163
    .line 159
    const-string/jumbo v2, "\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u306b\u7121\u52b9\u6587\u5b57\u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059"

    #@166
    aput-object v2, v1, v4

    #@168
    .line 158
    const/16 v2, 0x16

    #@16a
    aput-object v1, v0, v2

    #@16c
    .line 161
    new-array v1, v5, [Ljava/lang/Object;

    #@16e
    const-string/jumbo v2, "ER_FRAG_WHEN_PATH_NULL"

    #@171
    aput-object v2, v1, v3

    #@173
    .line 162
    const-string/jumbo v2, "\u30d1\u30b9\u304c\u30cc\u30eb\u3067\u3042\u308b\u3068\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u3092\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    #@176
    aput-object v2, v1, v4

    #@178
    .line 161
    const/16 v2, 0x17

    #@17a
    aput-object v1, v0, v2

    #@17c
    .line 164
    new-array v1, v5, [Ljava/lang/Object;

    #@17e
    const-string/jumbo v2, "ER_FRAG_FOR_GENERIC_URI"

    #@181
    aput-object v2, v1, v3

    #@183
    .line 165
    const-string/jumbo v2, "\u7dcf\u79f0 URI \u306e\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u3057\u304b\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093"

    #@186
    aput-object v2, v1, v4

    #@188
    .line 164
    const/16 v2, 0x18

    #@18a
    aput-object v1, v0, v2

    #@18c
    .line 167
    new-array v1, v5, [Ljava/lang/Object;

    #@18e
    const-string/jumbo v2, "ER_NO_SCHEME_IN_URI"

    #@191
    aput-object v2, v1, v3

    #@193
    .line 168
    const-string/jumbo v2, "\u30b9\u30ad\u30fc\u30e0\u306f URI \u3067\u898b\u3064\u304b\u308a\u307e\u305b\u3093"

    #@196
    aput-object v2, v1, v4

    #@198
    .line 167
    const/16 v2, 0x19

    #@19a
    aput-object v1, v0, v2

    #@19c
    .line 170
    new-array v1, v5, [Ljava/lang/Object;

    #@19e
    const-string/jumbo v2, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    #@1a1
    aput-object v2, v1, v3

    #@1a3
    .line 171
    const-string/jumbo v2, "URI \u306f\u7a7a\u306e\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u3092\u4f7f\u7528\u3057\u3066\u521d\u671f\u5316\u3067\u304d\u307e\u305b\u3093"

    #@1a6
    aput-object v2, v1, v4

    #@1a8
    .line 170
    const/16 v2, 0x1a

    #@1aa
    aput-object v1, v0, v2

    #@1ac
    .line 173
    new-array v1, v5, [Ljava/lang/Object;

    #@1ae
    const-string/jumbo v2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    #@1b1
    aput-object v2, v1, v3

    #@1b3
    .line 174
    const-string/jumbo v2, "\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u306f\u30d1\u30b9\u3068\u30d5\u30e9\u30b0\u30e1\u30f3\u30c8\u306e\u4e21\u65b9\u306b\u6307\u5b9a\u3067\u304d\u307e\u305b\u3093"

    #@1b6
    aput-object v2, v1, v4

    #@1b8
    .line 173
    const/16 v2, 0x1b

    #@1ba
    aput-object v1, v0, v2

    #@1bc
    .line 176
    new-array v1, v5, [Ljava/lang/Object;

    #@1be
    const-string/jumbo v2, "ER_NO_QUERY_STRING_IN_PATH"

    #@1c1
    aput-object v2, v1, v3

    #@1c3
    .line 177
    const-string/jumbo v2, "\u7167\u4f1a\u30b9\u30c8\u30ea\u30f3\u30b0\u306f\u30d1\u30b9\u304a\u3088\u3073\u7167\u4f1a\u30b9\u30c8\u30ea\u30f3\u30b0\u5185\u306b\u6307\u5b9a\u3067\u304d\u307e\u305b\u3093"

    #@1c6
    aput-object v2, v1, v4

    #@1c8
    .line 176
    const/16 v2, 0x1c

    #@1ca
    aput-object v1, v0, v2

    #@1cc
    .line 179
    new-array v1, v5, [Ljava/lang/Object;

    #@1ce
    const-string/jumbo v2, "ER_NO_PORT_IF_NO_HOST"

    #@1d1
    aput-object v2, v1, v3

    #@1d3
    .line 180
    const-string/jumbo v2, "\u30db\u30b9\u30c8\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u306a\u3044\u5834\u5408\u306f\u30dd\u30fc\u30c8\u3092\u6307\u5b9a\u3057\u3066\u306f\u3044\u3051\u307e\u305b\u3093"

    #@1d6
    aput-object v2, v1, v4

    #@1d8
    .line 179
    const/16 v2, 0x1d

    #@1da
    aput-object v1, v0, v2

    #@1dc
    .line 182
    new-array v1, v5, [Ljava/lang/Object;

    #@1de
    const-string/jumbo v2, "ER_NO_USERINFO_IF_NO_HOST"

    #@1e1
    aput-object v2, v1, v3

    #@1e3
    .line 183
    const-string/jumbo v2, "\u30db\u30b9\u30c8\u304c\u6307\u5b9a\u3055\u308c\u3066\u3044\u306a\u3044\u5834\u5408\u306f Userinfo \u3092\u6307\u5b9a\u3057\u3066\u306f\u3044\u3051\u307e\u305b\u3093"

    #@1e6
    aput-object v2, v1, v4

    #@1e8
    .line 182
    const/16 v2, 0x1e

    #@1ea
    aput-object v1, v0, v2

    #@1ec
    .line 184
    new-array v1, v5, [Ljava/lang/Object;

    #@1ee
    const-string/jumbo v2, "ER_XML_VERSION_NOT_SUPPORTED"

    #@1f1
    aput-object v2, v1, v3

    #@1f3
    .line 185
    const-string/jumbo v2, "\u8b66\u544a: \u51fa\u529b\u6587\u66f8\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u3068\u3057\u3066 \'\'{0}\'\' \u304c\u8981\u6c42\u3055\u308c\u307e\u3057\u305f\u3002  \u3053\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u306e XML \u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u307e\u305b\u3093\u3002  \u51fa\u529b\u6587\u66f8\u306e\u30d0\u30fc\u30b8\u30e7\u30f3\u306f \'\'1.0\'\' \u306b\u306a\u308a\u307e\u3059\u3002"

    #@1f6
    aput-object v2, v1, v4

    #@1f8
    .line 184
    const/16 v2, 0x1f

    #@1fa
    aput-object v1, v0, v2

    #@1fc
    .line 187
    new-array v1, v5, [Ljava/lang/Object;

    #@1fe
    const-string/jumbo v2, "ER_SCHEME_REQUIRED"

    #@201
    aput-object v2, v1, v3

    #@203
    .line 188
    const-string/jumbo v2, "\u30b9\u30ad\u30fc\u30e0\u304c\u5fc5\u8981\u3067\u3059\u3002"

    #@206
    aput-object v2, v1, v4

    #@208
    .line 187
    const/16 v2, 0x20

    #@20a
    aput-object v1, v0, v2

    #@20c
    .line 195
    new-array v1, v5, [Ljava/lang/Object;

    #@20e
    const-string/jumbo v2, "ER_FACTORY_PROPERTY_MISSING"

    #@211
    aput-object v2, v1, v3

    #@213
    .line 196
    const-string/jumbo v2, "SerializerFactory \u306b\u6e21\u3055\u308c\u305f Properties \u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u306b\u306f \'\'{0}\'\' \u30d7\u30ed\u30d1\u30c6\u30a3\u30fc\u304c\u3042\u308a\u307e\u305b\u3093\u3002"

    #@216
    aput-object v2, v1, v4

    #@218
    .line 195
    const/16 v2, 0x21

    #@21a
    aput-object v1, v0, v2

    #@21c
    .line 198
    new-array v1, v5, [Ljava/lang/Object;

    #@21e
    const-string/jumbo v2, "ER_ENCODING_NOT_SUPPORTED"

    #@221
    aput-object v2, v1, v3

    #@223
    .line 199
    const-string/jumbo v2, "\u8b66\u544a:  \u30a8\u30f3\u30b3\u30fc\u30c9 \'\'{0}\'\' \u306f\u3053\u306e Java \u30e9\u30f3\u30bf\u30a4\u30e0\u3067\u306f\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002"

    #@226
    aput-object v2, v1, v4

    #@228
    .line 198
    const/16 v2, 0x22

    #@22a
    aput-object v1, v0, v2

    #@22c
    .line 201
    new-array v1, v5, [Ljava/lang/Object;

    #@22e
    const-string/jumbo v2, "FEATURE_NOT_FOUND"

    #@231
    aput-object v2, v1, v3

    #@233
    .line 202
    const-string/jumbo v2, "\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc \'\'{0}\'\' \u306f\u8a8d\u8b58\u3055\u308c\u307e\u305b\u3093\u3002"

    #@236
    aput-object v2, v1, v4

    #@238
    .line 201
    const/16 v2, 0x23

    #@23a
    aput-object v1, v0, v2

    #@23c
    .line 204
    new-array v1, v5, [Ljava/lang/Object;

    #@23e
    const-string/jumbo v2, "FEATURE_NOT_SUPPORTED"

    #@241
    aput-object v2, v1, v3

    #@243
    .line 205
    const-string/jumbo v2, "\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc \'\'{0}\'\' \u306f\u8a8d\u8b58\u3055\u308c\u307e\u3059\u304c\u3001\u8981\u6c42\u3055\u308c\u305f\u5024\u306f\u8a2d\u5b9a\u3067\u304d\u307e\u305b\u3093\u3002"

    #@246
    aput-object v2, v1, v4

    #@248
    .line 204
    const/16 v2, 0x24

    #@24a
    aput-object v1, v0, v2

    #@24c
    .line 207
    new-array v1, v5, [Ljava/lang/Object;

    #@24e
    const-string/jumbo v2, "DOMSTRING_SIZE_ERR"

    #@251
    aput-object v2, v1, v3

    #@253
    .line 208
    const-string/jumbo v2, "\u7d50\u679c\u306e\u30b9\u30c8\u30ea\u30f3\u30b0\u304c\u9577\u3059\u304e\u308b\u305f\u3081\u3001DOMString \u5185\u306b\u53ce\u307e\u308a\u307e\u305b\u3093: \'\'{0}\'\'\u3002"

    #@256
    aput-object v2, v1, v4

    #@258
    .line 207
    const/16 v2, 0x25

    #@25a
    aput-object v1, v0, v2

    #@25c
    .line 210
    new-array v1, v5, [Ljava/lang/Object;

    #@25e
    const-string/jumbo v2, "TYPE_MISMATCH_ERR"

    #@261
    aput-object v2, v1, v3

    #@263
    .line 211
    const-string/jumbo v2, "\u3053\u306e\u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u540d\u306e\u5024\u306e\u578b\u306f\u3001\u671f\u5f85\u3055\u308c\u308b\u5024\u306e\u578b\u3068\u4e0d\u9069\u5408\u3067\u3059\u3002"

    #@266
    aput-object v2, v1, v4

    #@268
    .line 210
    const/16 v2, 0x26

    #@26a
    aput-object v1, v0, v2

    #@26c
    .line 213
    new-array v1, v5, [Ljava/lang/Object;

    #@26e
    const-string/jumbo v2, "no-output-specified"

    #@271
    aput-object v2, v1, v3

    #@273
    .line 214
    const-string/jumbo v2, "\u66f8\u304d\u8fbc\u307e\u308c\u308b\u30c7\u30fc\u30bf\u306e\u51fa\u529b\u5b9b\u5148\u304c\u30cc\u30eb\u3067\u3059\u3002"

    #@276
    aput-object v2, v1, v4

    #@278
    .line 213
    const/16 v2, 0x27

    #@27a
    aput-object v1, v0, v2

    #@27c
    .line 216
    new-array v1, v5, [Ljava/lang/Object;

    #@27e
    const-string/jumbo v2, "unsupported-encoding"

    #@281
    aput-object v2, v1, v3

    #@283
    .line 217
    const-string/jumbo v2, "\u30b5\u30dd\u30fc\u30c8\u3055\u308c\u306a\u3044\u30a8\u30f3\u30b3\u30fc\u30c9\u304c\u691c\u51fa\u3055\u308c\u307e\u3057\u305f\u3002"

    #@286
    aput-object v2, v1, v4

    #@288
    .line 216
    const/16 v2, 0x28

    #@28a
    aput-object v1, v0, v2

    #@28c
    .line 219
    new-array v1, v5, [Ljava/lang/Object;

    #@28e
    const-string/jumbo v2, "ER_UNABLE_TO_SERIALIZE_NODE"

    #@291
    aput-object v2, v1, v3

    #@293
    .line 220
    const-string/jumbo v2, "\u30ce\u30fc\u30c9\u3092\u76f4\u5217\u5316\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    #@296
    aput-object v2, v1, v4

    #@298
    .line 219
    const/16 v2, 0x29

    #@29a
    aput-object v1, v0, v2

    #@29c
    .line 222
    new-array v1, v5, [Ljava/lang/Object;

    #@29e
    const-string/jumbo v2, "cdata-sections-splitted"

    #@2a1
    aput-object v2, v1, v3

    #@2a3
    .line 223
    const-string/jumbo v2, "CDATA \u30bb\u30af\u30b7\u30e7\u30f3\u306b 1 \u3064\u4ee5\u4e0a\u306e\u7d42\u4e86\u30de\u30fc\u30ab\u30fc \']]>\' \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"

    #@2a6
    aput-object v2, v1, v4

    #@2a8
    .line 222
    const/16 v2, 0x2a

    #@2aa
    aput-object v1, v0, v2

    #@2ac
    .line 225
    new-array v1, v5, [Ljava/lang/Object;

    #@2ae
    const-string/jumbo v2, "ER_WARNING_WF_NOT_CHECKED"

    #@2b1
    aput-object v2, v1, v3

    #@2b3
    .line 226
    const-string/jumbo v2, "\u6574\u5f62\u5f0f\u6027\u30c1\u30a7\u30c3\u30ab\u30fc\u306e\u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u4f5c\u6210\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002  well-formed \u30d1\u30e9\u30e1\u30fc\u30bf\u30fc\u306e\u8a2d\u5b9a\u306f true \u3067\u3057\u305f\u304c\u3001\u6574\u5f62\u5f0f\u6027\u306e\u691c\u67fb\u306f\u5b9f\u884c\u3067\u304d\u307e\u305b\u3093\u3002"

    #@2b6
    aput-object v2, v1, v4

    #@2b8
    .line 225
    const/16 v2, 0x2b

    #@2ba
    aput-object v1, v0, v2

    #@2bc
    .line 229
    new-array v1, v5, [Ljava/lang/Object;

    #@2be
    const-string/jumbo v2, "wf-invalid-character"

    #@2c1
    aput-object v2, v1, v3

    #@2c3
    .line 230
    const-string/jumbo v2, "\u30ce\u30fc\u30c9 \'\'{0}\'\' \u306b\u7121\u52b9\u306a XML \u6587\u5b57\u304c\u3042\u308a\u307e\u3059\u3002"

    #@2c6
    aput-object v2, v1, v4

    #@2c8
    .line 229
    const/16 v2, 0x2c

    #@2ca
    aput-object v1, v0, v2

    #@2cc
    .line 233
    new-array v1, v5, [Ljava/lang/Object;

    #@2ce
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    #@2d1
    aput-object v2, v1, v3

    #@2d3
    .line 234
    const-string/jumbo v2, "\u30b3\u30e1\u30f3\u30c8\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    #@2d6
    aput-object v2, v1, v4

    #@2d8
    .line 233
    const/16 v2, 0x2d

    #@2da
    aput-object v1, v0, v2

    #@2dc
    .line 237
    new-array v1, v5, [Ljava/lang/Object;

    #@2de
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_PI"

    #@2e1
    aput-object v2, v1, v3

    #@2e3
    .line 238
    const-string/jumbo v2, "\u51e6\u7406\u547d\u4ee4\u30c7\u30fc\u30bf\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    #@2e6
    aput-object v2, v1, v4

    #@2e8
    .line 237
    const/16 v2, 0x2e

    #@2ea
    aput-object v1, v0, v2

    #@2ec
    .line 241
    new-array v1, v5, [Ljava/lang/Object;

    #@2ee
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    #@2f1
    aput-object v2, v1, v3

    #@2f3
    .line 242
    const-string/jumbo v2, "CDATA \u30bb\u30af\u30b7\u30e7\u30f3\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    #@2f6
    aput-object v2, v1, v4

    #@2f8
    .line 241
    const/16 v2, 0x2f

    #@2fa
    aput-object v1, v0, v2

    #@2fc
    .line 245
    new-array v1, v5, [Ljava/lang/Object;

    #@2fe
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    #@301
    aput-object v2, v1, v3

    #@303
    .line 246
    const-string/jumbo v2, "\u30ce\u30fc\u30c9\u306e\u6587\u5b57\u30c7\u30fc\u30bf\u306e\u5185\u5bb9\u306b\u7121\u52b9\u306a XML \u6587\u5b57 (Unicode: 0x{0}) \u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    #@306
    aput-object v2, v1, v4

    #@308
    .line 245
    const/16 v2, 0x30

    #@30a
    aput-object v1, v0, v2

    #@30c
    .line 249
    new-array v1, v5, [Ljava/lang/Object;

    #@30e
    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    #@311
    aput-object v2, v1, v3

    #@313
    .line 250
    const-string/jumbo v2, "\'\'{1}\'\' \u3068\u3044\u3046\u540d\u524d\u306e {0} \u30ce\u30fc\u30c9\u306e\u4e2d\u306b\u7121\u52b9\u306a XML \u6587\u5b57\u304c\u898b\u3064\u304b\u308a\u307e\u3057\u305f\u3002"

    #@316
    aput-object v2, v1, v4

    #@318
    .line 249
    const/16 v2, 0x31

    #@31a
    aput-object v1, v0, v2

    #@31c
    .line 253
    new-array v1, v5, [Ljava/lang/Object;

    #@31e
    const-string/jumbo v2, "ER_WF_DASH_IN_COMMENT"

    #@321
    aput-object v2, v1, v3

    #@323
    .line 254
    const-string/jumbo v2, "\u30b9\u30c8\u30ea\u30f3\u30b0 \"--\" \u306f\u30b3\u30e1\u30f3\u30c8\u5185\u3067\u306f\u4f7f\u7528\u3067\u304d\u307e\u305b\u3093\u3002"

    #@326
    aput-object v2, v1, v4

    #@328
    .line 253
    const/16 v2, 0x32

    #@32a
    aput-object v1, v0, v2

    #@32c
    .line 257
    new-array v1, v5, [Ljava/lang/Object;

    #@32e
    const-string/jumbo v2, "ER_WF_LT_IN_ATTVAL"

    #@331
    aput-object v2, v1, v3

    #@333
    .line 258
    const-string/jumbo v2, "\u8981\u7d20\u578b \"{0}\" \u306b\u95a2\u9023\u3057\u305f\u5c5e\u6027 \"{1}\" \u306e\u5024\u306b\u306f \'\'<\'\' \u6587\u5b57\u3092\u542b\u3081\u3066\u306f\u3044\u3051\u307e\u305b\u3093\u3002"

    #@336
    aput-object v2, v1, v4

    #@338
    .line 257
    const/16 v2, 0x33

    #@33a
    aput-object v1, v0, v2

    #@33c
    .line 261
    new-array v1, v5, [Ljava/lang/Object;

    #@33e
    const-string/jumbo v2, "ER_WF_REF_TO_UNPARSED_ENT"

    #@341
    aput-object v2, v1, v3

    #@343
    .line 262
    const-string/jumbo v2, "\u89e3\u6790\u5bfe\u8c61\u5916\u5b9f\u4f53\u53c2\u7167 \"&{0};\" \u306f\u8a31\u53ef\u3055\u308c\u307e\u305b\u3093\u3002"

    #@346
    aput-object v2, v1, v4

    #@348
    .line 261
    const/16 v2, 0x34

    #@34a
    aput-object v1, v0, v2

    #@34c
    .line 265
    new-array v1, v5, [Ljava/lang/Object;

    #@34e
    const-string/jumbo v2, "ER_WF_REF_TO_EXTERNAL_ENT"

    #@351
    aput-object v2, v1, v3

    #@353
    .line 266
    const-string/jumbo v2, "\u5c5e\u6027\u5024\u3067\u306e\u5916\u90e8\u5b9f\u4f53\u53c2\u7167 \"&{0};\" \u306f\u8a31\u53ef\u3055\u308c\u307e\u305b\u3093\u3002"

    #@356
    aput-object v2, v1, v4

    #@358
    .line 265
    const/16 v2, 0x35

    #@35a
    aput-object v1, v0, v2

    #@35c
    .line 269
    new-array v1, v5, [Ljava/lang/Object;

    #@35e
    const-string/jumbo v2, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    #@361
    aput-object v2, v1, v3

    #@363
    .line 270
    const-string/jumbo v2, "\u63a5\u982d\u90e8 \"{0}\" \u306f\u540d\u524d\u7a7a\u9593 \"{1}\" \u306b\u7d50\u5408\u3067\u304d\u307e\u305b\u3093\u3002"

    #@366
    aput-object v2, v1, v4

    #@368
    .line 269
    const/16 v2, 0x36

    #@36a
    aput-object v1, v0, v2

    #@36c
    .line 273
    new-array v1, v5, [Ljava/lang/Object;

    #@36e
    const-string/jumbo v2, "ER_NULL_LOCAL_ELEMENT_NAME"

    #@371
    aput-object v2, v1, v3

    #@373
    .line 274
    const-string/jumbo v2, "\u8981\u7d20 \"{0}\" \u306e\u30ed\u30fc\u30ab\u30eb\u540d\u304c\u30cc\u30eb\u3067\u3059\u3002"

    #@376
    aput-object v2, v1, v4

    #@378
    .line 273
    const/16 v2, 0x37

    #@37a
    aput-object v1, v0, v2

    #@37c
    .line 277
    new-array v1, v5, [Ljava/lang/Object;

    #@37e
    const-string/jumbo v2, "ER_NULL_LOCAL_ATTR_NAME"

    #@381
    aput-object v2, v1, v3

    #@383
    .line 278
    const-string/jumbo v2, "\u5c5e\u6027 \"{0}\" \u306e\u30ed\u30fc\u30ab\u30eb\u540d\u304c\u30cc\u30eb\u3067\u3059\u3002"

    #@386
    aput-object v2, v1, v4

    #@388
    .line 277
    const/16 v2, 0x38

    #@38a
    aput-object v1, v0, v2

    #@38c
    .line 281
    new-array v1, v5, [Ljava/lang/Object;

    #@38e
    const-string/jumbo v2, "unbound-prefix-in-entity-reference"

    #@391
    aput-object v2, v1, v3

    #@393
    .line 282
    const-string/jumbo v2, "\u5b9f\u4f53\u30ce\u30fc\u30c9 \"{0}\" \u306e\u7f6e\u63db\u30c6\u30ad\u30b9\u30c8\u306b\u3001\u672a\u7d50\u5408\u306e\u63a5\u982d\u90e8 \"{2}\" \u3092\u6301\u3064\u8981\u7d20\u30ce\u30fc\u30c9 \"{1}\" \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"

    #@396
    aput-object v2, v1, v4

    #@398
    .line 281
    const/16 v2, 0x39

    #@39a
    aput-object v1, v0, v2

    #@39c
    .line 285
    new-array v1, v5, [Ljava/lang/Object;

    #@39e
    const-string/jumbo v2, "unbound-prefix-in-entity-reference"

    #@3a1
    aput-object v2, v1, v3

    #@3a3
    .line 286
    const-string/jumbo v2, "\u5b9f\u4f53\u30ce\u30fc\u30c9 \"{0}\" \u306e\u7f6e\u63db\u30c6\u30ad\u30b9\u30c8\u306b\u3001\u672a\u7d50\u5408\u306e\u63a5\u982d\u90e8 \"{2}\" \u3092\u6301\u3064\u5c5e\u6027\u30ce\u30fc\u30c9 \"{1}\" \u304c\u542b\u307e\u308c\u3066\u3044\u307e\u3059\u3002"

    #@3a6
    aput-object v2, v1, v4

    #@3a8
    .line 285
    const/16 v2, 0x3a

    #@3aa
    aput-object v1, v0, v2

    #@3ac
    .line 291
    .local v0, "contents":[[Ljava/lang/Object;
    return-object v0
.end method
