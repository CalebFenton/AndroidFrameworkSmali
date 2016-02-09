.class public Lorg/apache/xml/serializer/utils/SerializerMessages_zh;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_zh.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
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
    .line 74
    const/16 v1, 0x3a

    #@5
    new-array v0, v1, [[Ljava/lang/Object;

    #@7
    .line 75
    new-array v1, v5, [Ljava/lang/Object;

    #@9
    const-string/jumbo v2, "BAD_MSGKEY"

    #@c
    aput-object v2, v1, v3

    #@e
    .line 76
    const-string/jumbo v2, "\u6d88\u606f\u5bc6\u94a5\u201c{0}\u201d\u4e0d\u5728\u6d88\u606f\u7c7b\u201c{1}\u201d\u4e2d"

    #@11
    aput-object v2, v1, v4

    #@13
    .line 75
    aput-object v1, v0, v3

    #@15
    .line 78
    new-array v1, v5, [Ljava/lang/Object;

    #@17
    const-string/jumbo v2, "BAD_MSGFORMAT"

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 79
    const-string/jumbo v2, "\u6d88\u606f\u7c7b\u201c{1}\u201d\u4e2d\u7684\u6d88\u606f\u201c{0}\u201d\u7684\u683c\u5f0f\u65e0\u6548\u3002"

    #@1f
    aput-object v2, v1, v4

    #@21
    .line 78
    aput-object v1, v0, v4

    #@23
    .line 81
    new-array v1, v5, [Ljava/lang/Object;

    #@25
    const-string/jumbo v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 82
    const-string/jumbo v2, "\u4e32\u884c\u5668\u7c7b\u201c{0}\u201d\u4e0d\u80fd\u5b9e\u73b0 org.xml.sax.ContentHandler\u3002"

    #@2d
    aput-object v2, v1, v4

    #@2f
    .line 81
    aput-object v1, v0, v5

    #@31
    .line 84
    new-array v1, v5, [Ljava/lang/Object;

    #@33
    const-string/jumbo v2, "ER_RESOURCE_COULD_NOT_FIND"

    #@36
    aput-object v2, v1, v3

    #@38
    .line 85
    const-string/jumbo v2, "\u627e\u4e0d\u5230\u8d44\u6e90 [ {0} ]\u3002\n {1}"

    #@3b
    aput-object v2, v1, v4

    #@3d
    .line 84
    const/4 v2, 0x3

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 87
    new-array v1, v5, [Ljava/lang/Object;

    #@42
    const-string/jumbo v2, "ER_RESOURCE_COULD_NOT_LOAD"

    #@45
    aput-object v2, v1, v3

    #@47
    .line 88
    const-string/jumbo v2, "\u8d44\u6e90 [ {0} ] \u65e0\u6cd5\u88c5\u5165\uff1a{1} \n {2} \t {3}"

    #@4a
    aput-object v2, v1, v4

    #@4c
    .line 87
    const/4 v2, 0x4

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 90
    new-array v1, v5, [Ljava/lang/Object;

    #@51
    const-string/jumbo v2, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    #@54
    aput-object v2, v1, v3

    #@56
    .line 91
    const-string/jumbo v2, "\u7f13\u51b2\u533a\u5927\u5c0f <=0"

    #@59
    aput-object v2, v1, v4

    #@5b
    .line 90
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 93
    new-array v1, v5, [Ljava/lang/Object;

    #@60
    const-string/jumbo v2, "ER_INVALID_UTF16_SURROGATE"

    #@63
    aput-object v2, v1, v3

    #@65
    .line 94
    const-string/jumbo v2, "\u68c0\u6d4b\u5230\u65e0\u6548\u7684 UTF-16 \u8d85\u5927\u5b57\u7b26\u96c6\uff1a{0}\uff1f"

    #@68
    aput-object v2, v1, v4

    #@6a
    .line 93
    const/4 v2, 0x6

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 96
    new-array v1, v5, [Ljava/lang/Object;

    #@6f
    const-string/jumbo v2, "ER_OIERROR"

    #@72
    aput-object v2, v1, v3

    #@74
    .line 97
    const-string/jumbo v2, "IO \u9519\u8bef"

    #@77
    aput-object v2, v1, v4

    #@79
    .line 96
    const/4 v2, 0x7

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 99
    new-array v1, v5, [Ljava/lang/Object;

    #@7e
    const-string/jumbo v2, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    #@81
    aput-object v2, v1, v3

    #@83
    .line 100
    const-string/jumbo v2, "\u5728\u751f\u6210\u5b50\u8282\u70b9\u4e4b\u540e\u6216\u5728\u751f\u6210\u5143\u7d20\u4e4b\u524d\u65e0\u6cd5\u6dfb\u52a0\u5c5e\u6027 {0}\u3002\u5c06\u5ffd\u7565\u5c5e\u6027\u3002"

    #@86
    aput-object v2, v1, v4

    #@88
    .line 99
    const/16 v2, 0x8

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 107
    new-array v1, v5, [Ljava/lang/Object;

    #@8e
    const-string/jumbo v2, "ER_NAMESPACE_PREFIX"

    #@91
    aput-object v2, v1, v3

    #@93
    .line 108
    const-string/jumbo v2, "\u5c1a\u672a\u58f0\u660e\u524d\u7f00\u201c{0}\u201d\u7684\u540d\u79f0\u7a7a\u95f4\u3002"

    #@96
    aput-object v2, v1, v4

    #@98
    .line 107
    const/16 v2, 0x9

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 116
    new-array v1, v5, [Ljava/lang/Object;

    #@9e
    const-string/jumbo v2, "ER_STRAY_ATTRIBUTE"

    #@a1
    aput-object v2, v1, v3

    #@a3
    .line 117
    const-string/jumbo v2, "\u5c5e\u6027\u201c{0}\u201d\u5728\u5143\u7d20\u5916\u3002"

    #@a6
    aput-object v2, v1, v4

    #@a8
    .line 116
    const/16 v2, 0xa

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 126
    new-array v1, v5, [Ljava/lang/Object;

    #@ae
    const-string/jumbo v2, "ER_STRAY_NAMESPACE"

    #@b1
    aput-object v2, v1, v3

    #@b3
    .line 127
    const-string/jumbo v2, "\u540d\u79f0\u7a7a\u95f4\u58f0\u660e\u201c{0}\u201d=\u201c{1}\u201d\u5728\u5143\u7d20\u5916\u3002"

    #@b6
    aput-object v2, v1, v4

    #@b8
    .line 126
    const/16 v2, 0xb

    #@ba
    aput-object v1, v0, v2

    #@bc
    .line 129
    new-array v1, v5, [Ljava/lang/Object;

    #@be
    const-string/jumbo v2, "ER_COULD_NOT_LOAD_RESOURCE"

    #@c1
    aput-object v2, v1, v3

    #@c3
    .line 130
    const-string/jumbo v2, "\u65e0\u6cd5\u88c5\u5165\u201c{0}\u201d\uff08\u68c0\u67e5 CLASSPATH\uff09\uff0c\u73b0\u5728\u53ea\u4f7f\u7528\u7f3a\u7701\u503c"

    #@c6
    aput-object v2, v1, v4

    #@c8
    .line 129
    const/16 v2, 0xc

    #@ca
    aput-object v1, v0, v2

    #@cc
    .line 132
    new-array v1, v5, [Ljava/lang/Object;

    #@ce
    const-string/jumbo v2, "ER_ILLEGAL_CHARACTER"

    #@d1
    aput-object v2, v1, v3

    #@d3
    .line 133
    const-string/jumbo v2, "\u5c1d\u8bd5\u8f93\u51fa\u6574\u6570\u503c {0}\uff08\u5b83\u4e0d\u662f\u4ee5\u6307\u5b9a\u7684 {1} \u8f93\u51fa\u7f16\u7801\u8868\u793a\uff09\u7684\u5b57\u7b26\u3002"

    #@d6
    aput-object v2, v1, v4

    #@d8
    .line 132
    const/16 v2, 0xd

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 135
    new-array v1, v5, [Ljava/lang/Object;

    #@de
    const-string/jumbo v2, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    #@e1
    aput-object v2, v1, v3

    #@e3
    .line 136
    const-string/jumbo v2, "\u65e0\u6cd5\u4e3a\u8f93\u51fa\u65b9\u6cd5\u201c{1}\u201d\u88c5\u5165\u5c5e\u6027\u6587\u4ef6\u201c{0}\u201d\uff08\u68c0\u67e5 CLASSPATH\uff09"

    #@e6
    aput-object v2, v1, v4

    #@e8
    .line 135
    const/16 v2, 0xe

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 138
    new-array v1, v5, [Ljava/lang/Object;

    #@ee
    const-string/jumbo v2, "ER_INVALID_PORT"

    #@f1
    aput-object v2, v1, v3

    #@f3
    .line 139
    const-string/jumbo v2, "\u7aef\u53e3\u53f7\u65e0\u6548"

    #@f6
    aput-object v2, v1, v4

    #@f8
    .line 138
    const/16 v2, 0xf

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 141
    new-array v1, v5, [Ljava/lang/Object;

    #@fe
    const-string/jumbo v2, "ER_PORT_WHEN_HOST_NULL"

    #@101
    aput-object v2, v1, v3

    #@103
    .line 142
    const-string/jumbo v2, "\u4e3b\u673a\u4e3a\u7a7a\u65f6\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u7aef\u53e3"

    #@106
    aput-object v2, v1, v4

    #@108
    .line 141
    const/16 v2, 0x10

    #@10a
    aput-object v1, v0, v2

    #@10c
    .line 144
    new-array v1, v5, [Ljava/lang/Object;

    #@10e
    const-string/jumbo v2, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    #@111
    aput-object v2, v1, v3

    #@113
    .line 145
    const-string/jumbo v2, "\u4e3b\u673a\u4e0d\u662f\u683c\u5f0f\u6b63\u786e\u7684\u5730\u5740"

    #@116
    aput-object v2, v1, v4

    #@118
    .line 144
    const/16 v2, 0x11

    #@11a
    aput-object v1, v0, v2

    #@11c
    .line 147
    new-array v1, v5, [Ljava/lang/Object;

    #@11e
    const-string/jumbo v2, "ER_SCHEME_NOT_CONFORMANT"

    #@121
    aput-object v2, v1, v3

    #@123
    .line 148
    const-string/jumbo v2, "\u6a21\u5f0f\u4e0d\u4e00\u81f4\u3002"

    #@126
    aput-object v2, v1, v4

    #@128
    .line 147
    const/16 v2, 0x12

    #@12a
    aput-object v1, v0, v2

    #@12c
    .line 150
    new-array v1, v5, [Ljava/lang/Object;

    #@12e
    const-string/jumbo v2, "ER_SCHEME_FROM_NULL_STRING"

    #@131
    aput-object v2, v1, v3

    #@133
    .line 151
    const-string/jumbo v2, "\u65e0\u6cd5\u4ece\u7a7a\u5b57\u7b26\u4e32\u8bbe\u7f6e\u6a21\u5f0f"

    #@136
    aput-object v2, v1, v4

    #@138
    .line 150
    const/16 v2, 0x13

    #@13a
    aput-object v1, v0, v2

    #@13c
    .line 153
    new-array v1, v5, [Ljava/lang/Object;

    #@13e
    const-string/jumbo v2, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    #@141
    aput-object v2, v1, v3

    #@143
    .line 154
    const-string/jumbo v2, "\u8def\u5f84\u5305\u542b\u65e0\u6548\u7684\u8f6c\u4e49\u5e8f\u5217"

    #@146
    aput-object v2, v1, v4

    #@148
    .line 153
    const/16 v2, 0x14

    #@14a
    aput-object v1, v0, v2

    #@14c
    .line 156
    new-array v1, v5, [Ljava/lang/Object;

    #@14e
    const-string/jumbo v2, "ER_PATH_INVALID_CHAR"

    #@151
    aput-object v2, v1, v3

    #@153
    .line 157
    const-string/jumbo v2, "\u8def\u5f84\u5305\u542b\u65e0\u6548\u7684\u5b57\u7b26\uff1a{0}"

    #@156
    aput-object v2, v1, v4

    #@158
    .line 156
    const/16 v2, 0x15

    #@15a
    aput-object v1, v0, v2

    #@15c
    .line 159
    new-array v1, v5, [Ljava/lang/Object;

    #@15e
    const-string/jumbo v2, "ER_FRAG_INVALID_CHAR"

    #@161
    aput-object v2, v1, v3

    #@163
    .line 160
    const-string/jumbo v2, "\u7247\u6bb5\u5305\u542b\u65e0\u6548\u7684\u5b57\u7b26"

    #@166
    aput-object v2, v1, v4

    #@168
    .line 159
    const/16 v2, 0x16

    #@16a
    aput-object v1, v0, v2

    #@16c
    .line 162
    new-array v1, v5, [Ljava/lang/Object;

    #@16e
    const-string/jumbo v2, "ER_FRAG_WHEN_PATH_NULL"

    #@171
    aput-object v2, v1, v3

    #@173
    .line 163
    const-string/jumbo v2, "\u8def\u5f84\u4e3a\u7a7a\u65f6\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u7247\u6bb5"

    #@176
    aput-object v2, v1, v4

    #@178
    .line 162
    const/16 v2, 0x17

    #@17a
    aput-object v1, v0, v2

    #@17c
    .line 165
    new-array v1, v5, [Ljava/lang/Object;

    #@17e
    const-string/jumbo v2, "ER_FRAG_FOR_GENERIC_URI"

    #@181
    aput-object v2, v1, v3

    #@183
    .line 166
    const-string/jumbo v2, "\u53ea\u80fd\u4e3a\u7c7b\u5c5e URI \u8bbe\u7f6e\u7247\u6bb5"

    #@186
    aput-object v2, v1, v4

    #@188
    .line 165
    const/16 v2, 0x18

    #@18a
    aput-object v1, v0, v2

    #@18c
    .line 168
    new-array v1, v5, [Ljava/lang/Object;

    #@18e
    const-string/jumbo v2, "ER_NO_SCHEME_IN_URI"

    #@191
    aput-object v2, v1, v3

    #@193
    .line 169
    const-string/jumbo v2, "URI \u4e2d\u627e\u4e0d\u5230\u4efb\u4f55\u6a21\u5f0f"

    #@196
    aput-object v2, v1, v4

    #@198
    .line 168
    const/16 v2, 0x19

    #@19a
    aput-object v1, v0, v2

    #@19c
    .line 171
    new-array v1, v5, [Ljava/lang/Object;

    #@19e
    const-string/jumbo v2, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    #@1a1
    aput-object v2, v1, v3

    #@1a3
    .line 172
    const-string/jumbo v2, "\u4e0d\u80fd\u4ee5\u7a7a\u53c2\u6570\u521d\u59cb\u5316 URI"

    #@1a6
    aput-object v2, v1, v4

    #@1a8
    .line 171
    const/16 v2, 0x1a

    #@1aa
    aput-object v1, v0, v2

    #@1ac
    .line 174
    new-array v1, v5, [Ljava/lang/Object;

    #@1ae
    const-string/jumbo v2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    #@1b1
    aput-object v2, v1, v3

    #@1b3
    .line 175
    const-string/jumbo v2, "\u8def\u5f84\u548c\u7247\u6bb5\u4e2d\u90fd\u4e0d\u80fd\u6307\u5b9a\u7247\u6bb5"

    #@1b6
    aput-object v2, v1, v4

    #@1b8
    .line 174
    const/16 v2, 0x1b

    #@1ba
    aput-object v1, v0, v2

    #@1bc
    .line 177
    new-array v1, v5, [Ljava/lang/Object;

    #@1be
    const-string/jumbo v2, "ER_NO_QUERY_STRING_IN_PATH"

    #@1c1
    aput-object v2, v1, v3

    #@1c3
    .line 178
    const-string/jumbo v2, "\u8def\u5f84\u548c\u67e5\u8be2\u5b57\u7b26\u4e32\u4e2d\u4e0d\u80fd\u6307\u5b9a\u67e5\u8be2\u5b57\u7b26\u4e32"

    #@1c6
    aput-object v2, v1, v4

    #@1c8
    .line 177
    const/16 v2, 0x1c

    #@1ca
    aput-object v1, v0, v2

    #@1cc
    .line 180
    new-array v1, v5, [Ljava/lang/Object;

    #@1ce
    const-string/jumbo v2, "ER_NO_PORT_IF_NO_HOST"

    #@1d1
    aput-object v2, v1, v3

    #@1d3
    .line 181
    const-string/jumbo v2, "\u5982\u679c\u6ca1\u6709\u6307\u5b9a\u4e3b\u673a\uff0c\u5219\u4e0d\u53ef\u4ee5\u6307\u5b9a\u7aef\u53e3"

    #@1d6
    aput-object v2, v1, v4

    #@1d8
    .line 180
    const/16 v2, 0x1d

    #@1da
    aput-object v1, v0, v2

    #@1dc
    .line 183
    new-array v1, v5, [Ljava/lang/Object;

    #@1de
    const-string/jumbo v2, "ER_NO_USERINFO_IF_NO_HOST"

    #@1e1
    aput-object v2, v1, v3

    #@1e3
    .line 184
    const-string/jumbo v2, "\u5982\u679c\u6ca1\u6709\u6307\u5b9a\u4e3b\u673a\uff0c\u5219\u4e0d\u53ef\u4ee5\u6307\u5b9a\u7528\u6237\u4fe1\u606f"

    #@1e6
    aput-object v2, v1, v4

    #@1e8
    .line 183
    const/16 v2, 0x1e

    #@1ea
    aput-object v1, v0, v2

    #@1ec
    .line 185
    new-array v1, v5, [Ljava/lang/Object;

    #@1ee
    const-string/jumbo v2, "ER_XML_VERSION_NOT_SUPPORTED"

    #@1f1
    aput-object v2, v1, v3

    #@1f3
    .line 186
    const-string/jumbo v2, "\u8b66\u544a\uff1a\u8981\u6c42\u8f93\u51fa\u6587\u6863\u7684\u7248\u672c\u662f\u201c{0}\u201d\u3002\u4e0d\u652f\u6301\u6b64 XML \u7248\u672c\u3002\u8f93\u51fa\u6587\u6863\u7684\u7248\u672c\u5c06\u4f1a\u662f\u201c1.0\u201d\u3002"

    #@1f6
    aput-object v2, v1, v4

    #@1f8
    .line 185
    const/16 v2, 0x1f

    #@1fa
    aput-object v1, v0, v2

    #@1fc
    .line 188
    new-array v1, v5, [Ljava/lang/Object;

    #@1fe
    const-string/jumbo v2, "ER_SCHEME_REQUIRED"

    #@201
    aput-object v2, v1, v3

    #@203
    .line 189
    const-string/jumbo v2, "\u6a21\u5f0f\u662f\u5fc5\u9700\u7684\uff01"

    #@206
    aput-object v2, v1, v4

    #@208
    .line 188
    const/16 v2, 0x20

    #@20a
    aput-object v1, v0, v2

    #@20c
    .line 196
    new-array v1, v5, [Ljava/lang/Object;

    #@20e
    const-string/jumbo v2, "ER_FACTORY_PROPERTY_MISSING"

    #@211
    aput-object v2, v1, v3

    #@213
    .line 197
    const-string/jumbo v2, "\u4f20\u9012\u7ed9 SerializerFactory \u7684 Properties \u5bf9\u8c61\u4e0d\u5177\u6709\u5c5e\u6027\u201c{0}\u201d\u3002"

    #@216
    aput-object v2, v1, v4

    #@218
    .line 196
    const/16 v2, 0x21

    #@21a
    aput-object v1, v0, v2

    #@21c
    .line 199
    new-array v1, v5, [Ljava/lang/Object;

    #@21e
    const-string/jumbo v2, "FEATURE_NOT_FOUND"

    #@221
    aput-object v2, v1, v3

    #@223
    .line 200
    const-string/jumbo v2, "\u672a\u8bc6\u522b\u51fa\u53c2\u6570\u201c{0}\u201d\u3002"

    #@226
    aput-object v2, v1, v4

    #@228
    .line 199
    const/16 v2, 0x22

    #@22a
    aput-object v1, v0, v2

    #@22c
    .line 202
    new-array v1, v5, [Ljava/lang/Object;

    #@22e
    const-string/jumbo v2, "FEATURE_NOT_SUPPORTED"

    #@231
    aput-object v2, v1, v3

    #@233
    .line 203
    const-string/jumbo v2, "\u5df2\u8bc6\u522b\u51fa\u53c2\u6570\u201c{0}\u201d\uff0c\u4f46\u65e0\u6cd5\u8bbe\u7f6e\u8bf7\u6c42\u7684\u503c\u3002"

    #@236
    aput-object v2, v1, v4

    #@238
    .line 202
    const/16 v2, 0x23

    #@23a
    aput-object v1, v0, v2

    #@23c
    .line 205
    new-array v1, v5, [Ljava/lang/Object;

    #@23e
    const-string/jumbo v2, "DOMSTRING_SIZE_ERR"

    #@241
    aput-object v2, v1, v3

    #@243
    .line 206
    const-string/jumbo v2, "\u4ea7\u751f\u7684\u5b57\u7b26\u4e32\u8fc7\u957f\u4e0d\u80fd\u88c5\u5165 DOMString\uff1a\u201c{0}\u201d\u3002"

    #@246
    aput-object v2, v1, v4

    #@248
    .line 205
    const/16 v2, 0x24

    #@24a
    aput-object v1, v0, v2

    #@24c
    .line 208
    new-array v1, v5, [Ljava/lang/Object;

    #@24e
    const-string/jumbo v2, "TYPE_MISMATCH_ERR"

    #@251
    aput-object v2, v1, v3

    #@253
    .line 209
    const-string/jumbo v2, "\u6b64\u53c2\u6570\u540d\u79f0\u7684\u503c\u7c7b\u578b\u4e0e\u671f\u671b\u7684\u503c\u7c7b\u578b\u4e0d\u517c\u5bb9\u3002"

    #@256
    aput-object v2, v1, v4

    #@258
    .line 208
    const/16 v2, 0x25

    #@25a
    aput-object v1, v0, v2

    #@25c
    .line 211
    new-array v1, v5, [Ljava/lang/Object;

    #@25e
    const-string/jumbo v2, "no-output-specified"

    #@261
    aput-object v2, v1, v3

    #@263
    .line 212
    const-string/jumbo v2, "\u5c06\u8981\u5199\u5165\u6570\u636e\u7684\u8f93\u51fa\u76ee\u6807\u4e3a\u7a7a\u3002"

    #@266
    aput-object v2, v1, v4

    #@268
    .line 211
    const/16 v2, 0x26

    #@26a
    aput-object v1, v0, v2

    #@26c
    .line 214
    new-array v1, v5, [Ljava/lang/Object;

    #@26e
    const-string/jumbo v2, "unsupported-encoding"

    #@271
    aput-object v2, v1, v3

    #@273
    .line 215
    const-string/jumbo v2, "\u9047\u5230\u4e0d\u53d7\u652f\u6301\u7684\u7f16\u7801\u3002"

    #@276
    aput-object v2, v1, v4

    #@278
    .line 214
    const/16 v2, 0x27

    #@27a
    aput-object v1, v0, v2

    #@27c
    .line 217
    new-array v1, v5, [Ljava/lang/Object;

    #@27e
    const-string/jumbo v2, "ER_UNABLE_TO_SERIALIZE_NODE"

    #@281
    aput-object v2, v1, v3

    #@283
    .line 218
    const-string/jumbo v2, "\u65e0\u6cd5\u5c06\u8282\u70b9\u5e8f\u5217\u5316\u3002 "

    #@286
    aput-object v2, v1, v4

    #@288
    .line 217
    const/16 v2, 0x28

    #@28a
    aput-object v1, v0, v2

    #@28c
    .line 220
    new-array v1, v5, [Ljava/lang/Object;

    #@28e
    const-string/jumbo v2, "cdata-sections-splitted"

    #@291
    aput-object v2, v1, v3

    #@293
    .line 221
    const-string/jumbo v2, "CDATA \u90e8\u5206\u5305\u542b\u4e00\u4e2a\u6216\u591a\u4e2a\u7ec8\u6b62\u6807\u8bb0\u201c]]>\u201d\u3002"

    #@296
    aput-object v2, v1, v4

    #@298
    .line 220
    const/16 v2, 0x29

    #@29a
    aput-object v1, v0, v2

    #@29c
    .line 223
    new-array v1, v5, [Ljava/lang/Object;

    #@29e
    const-string/jumbo v2, "ER_WARNING_WF_NOT_CHECKED"

    #@2a1
    aput-object v2, v1, v3

    #@2a3
    .line 224
    const-string/jumbo v2, "\u65e0\u6cd5\u521b\u5efa\u683c\u5f0f\u6b63\u786e\u6027\u68c0\u67e5\u5668\u7684\u5b9e\u4f8b\u3002\u201c\u683c\u5f0f\u6b63\u786e\u201d\u53c2\u6570\u5df2\u8bbe\u7f6e\u4e3a true\uff0c\u4f46\u65e0\u6cd5\u6267\u884c\u683c\u5f0f\u6b63\u786e\u6027\u68c0\u67e5\u3002"

    #@2a6
    aput-object v2, v1, v4

    #@2a8
    .line 223
    const/16 v2, 0x2a

    #@2aa
    aput-object v1, v0, v2

    #@2ac
    .line 227
    new-array v1, v5, [Ljava/lang/Object;

    #@2ae
    const-string/jumbo v2, "wf-invalid-character"

    #@2b1
    aput-object v2, v1, v3

    #@2b3
    .line 228
    const-string/jumbo v2, "\u8282\u70b9\u201c{0}\u201d\u5305\u542b\u65e0\u6548\u7684 XML \u5b57\u7b26\u3002"

    #@2b6
    aput-object v2, v1, v4

    #@2b8
    .line 227
    const/16 v2, 0x2b

    #@2ba
    aput-object v1, v0, v2

    #@2bc
    .line 231
    new-array v1, v5, [Ljava/lang/Object;

    #@2be
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    #@2c1
    aput-object v2, v1, v3

    #@2c3
    .line 232
    const-string/jumbo v2, "\u5728\u6ce8\u91ca\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    #@2c6
    aput-object v2, v1, v4

    #@2c8
    .line 231
    const/16 v2, 0x2c

    #@2ca
    aput-object v1, v0, v2

    #@2cc
    .line 235
    new-array v1, v5, [Ljava/lang/Object;

    #@2ce
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_PI"

    #@2d1
    aput-object v2, v1, v3

    #@2d3
    .line 236
    const-string/jumbo v2, "\u5728\u5904\u7406\u6307\u4ee4\u6570\u636e\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    #@2d6
    aput-object v2, v1, v4

    #@2d8
    .line 235
    const/16 v2, 0x2d

    #@2da
    aput-object v1, v0, v2

    #@2dc
    .line 239
    new-array v1, v5, [Ljava/lang/Object;

    #@2de
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    #@2e1
    aput-object v2, v1, v3

    #@2e3
    .line 240
    const-string/jumbo v2, "\u5728 CDATA \u90e8\u5206\u7684\u5185\u5bb9\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    #@2e6
    aput-object v2, v1, v4

    #@2e8
    .line 239
    const/16 v2, 0x2e

    #@2ea
    aput-object v1, v0, v2

    #@2ec
    .line 243
    new-array v1, v5, [Ljava/lang/Object;

    #@2ee
    const-string/jumbo v2, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    #@2f1
    aput-object v2, v1, v3

    #@2f3
    .line 244
    const-string/jumbo v2, "\u5728\u8282\u70b9\u7684\u5b57\u7b26\u6570\u636e\u5185\u5bb9\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    #@2f6
    aput-object v2, v1, v4

    #@2f8
    .line 243
    const/16 v2, 0x2f

    #@2fa
    aput-object v1, v0, v2

    #@2fc
    .line 247
    new-array v1, v5, [Ljava/lang/Object;

    #@2fe
    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    #@301
    aput-object v2, v1, v3

    #@303
    .line 248
    const-string/jumbo v2, "\u540d\u79f0\u4e3a\u201c{1})\u201d\u7684\u201c{0})\u201d\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26\u3002"

    #@306
    aput-object v2, v1, v4

    #@308
    .line 247
    const/16 v2, 0x30

    #@30a
    aput-object v1, v0, v2

    #@30c
    .line 251
    new-array v1, v5, [Ljava/lang/Object;

    #@30e
    const-string/jumbo v2, "ER_WF_DASH_IN_COMMENT"

    #@311
    aput-object v2, v1, v3

    #@313
    .line 252
    const-string/jumbo v2, "\u6ce8\u91ca\u4e2d\u4e0d\u5141\u8bb8\u6709\u5b57\u7b26\u4e32\u201c--\u201d\u3002"

    #@316
    aput-object v2, v1, v4

    #@318
    .line 251
    const/16 v2, 0x31

    #@31a
    aput-object v1, v0, v2

    #@31c
    .line 255
    new-array v1, v5, [Ljava/lang/Object;

    #@31e
    const-string/jumbo v2, "ER_WF_LT_IN_ATTVAL"

    #@321
    aput-object v2, v1, v3

    #@323
    .line 256
    const-string/jumbo v2, "\u4e0e\u5143\u7d20\u7c7b\u578b\u201c{0}\u201d\u5173\u8054\u7684\u5c5e\u6027\u201c{1}\u201d\u7684\u503c\u4e0d\u5f97\u5305\u542b\u201c<\u201d\u5b57\u7b26\u3002"

    #@326
    aput-object v2, v1, v4

    #@328
    .line 255
    const/16 v2, 0x32

    #@32a
    aput-object v1, v0, v2

    #@32c
    .line 259
    new-array v1, v5, [Ljava/lang/Object;

    #@32e
    const-string/jumbo v2, "ER_WF_REF_TO_UNPARSED_ENT"

    #@331
    aput-object v2, v1, v3

    #@333
    .line 260
    const-string/jumbo v2, "\u4e0d\u5141\u8bb8\u6709\u672a\u89e3\u6790\u7684\u5b9e\u4f53\u5f15\u7528\u201c&{0};\u201d\u3002"

    #@336
    aput-object v2, v1, v4

    #@338
    .line 259
    const/16 v2, 0x33

    #@33a
    aput-object v1, v0, v2

    #@33c
    .line 263
    new-array v1, v5, [Ljava/lang/Object;

    #@33e
    const-string/jumbo v2, "ER_WF_REF_TO_EXTERNAL_ENT"

    #@341
    aput-object v2, v1, v3

    #@343
    .line 264
    const-string/jumbo v2, "\u5c5e\u6027\u503c\u4e2d\u4e0d\u5141\u8bb8\u6709\u5916\u90e8\u5b9e\u4f53\u5f15\u7528\u201c&{0};\u201d\u3002"

    #@346
    aput-object v2, v1, v4

    #@348
    .line 263
    const/16 v2, 0x34

    #@34a
    aput-object v1, v0, v2

    #@34c
    .line 267
    new-array v1, v5, [Ljava/lang/Object;

    #@34e
    const-string/jumbo v2, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    #@351
    aput-object v2, v1, v3

    #@353
    .line 268
    const-string/jumbo v2, "\u524d\u7f00\u201c{0}\u201d\u4e0d\u80fd\u7ed1\u5b9a\u5230\u540d\u79f0\u7a7a\u95f4\u201c{1}\u201d\u3002"

    #@356
    aput-object v2, v1, v4

    #@358
    .line 267
    const/16 v2, 0x35

    #@35a
    aput-object v1, v0, v2

    #@35c
    .line 271
    new-array v1, v5, [Ljava/lang/Object;

    #@35e
    const-string/jumbo v2, "ER_NULL_LOCAL_ELEMENT_NAME"

    #@361
    aput-object v2, v1, v3

    #@363
    .line 272
    const-string/jumbo v2, "\u5143\u7d20\u201c{0}\u201d\u7684\u5c40\u90e8\u540d\u4e3a\u7a7a\u3002"

    #@366
    aput-object v2, v1, v4

    #@368
    .line 271
    const/16 v2, 0x36

    #@36a
    aput-object v1, v0, v2

    #@36c
    .line 275
    new-array v1, v5, [Ljava/lang/Object;

    #@36e
    const-string/jumbo v2, "ER_NULL_LOCAL_ATTR_NAME"

    #@371
    aput-object v2, v1, v3

    #@373
    .line 276
    const-string/jumbo v2, "\u5c5e\u6027\u201c{0}\u201d\u7684\u5c40\u90e8\u540d\u4e3a\u7a7a\u3002"

    #@376
    aput-object v2, v1, v4

    #@378
    .line 275
    const/16 v2, 0x37

    #@37a
    aput-object v1, v0, v2

    #@37c
    .line 279
    new-array v1, v5, [Ljava/lang/Object;

    #@37e
    const-string/jumbo v2, "unbound-prefix-in-entity-reference"

    #@381
    aput-object v2, v1, v3

    #@383
    .line 280
    const-string/jumbo v2, "\u5b9e\u4f53\u8282\u70b9\u201c{0}\u201d\u7684\u66ff\u4ee3\u6587\u672c\u4e2d\u5305\u542b\u5143\u7d20\u8282\u70b9\u201c{1}\u201d\uff0c\u8be5\u8282\u70b9\u5177\u6709\u672a\u7ed1\u5b9a\u7684\u524d\u7f00\u201c{2}\u201d\u3002"

    #@386
    aput-object v2, v1, v4

    #@388
    .line 279
    const/16 v2, 0x38

    #@38a
    aput-object v1, v0, v2

    #@38c
    .line 283
    new-array v1, v5, [Ljava/lang/Object;

    #@38e
    const-string/jumbo v2, "unbound-prefix-in-entity-reference"

    #@391
    aput-object v2, v1, v3

    #@393
    .line 284
    const-string/jumbo v2, "\u5b9e\u4f53\u8282\u70b9\u201c{0}\u201d\u7684\u66ff\u4ee3\u6587\u672c\u4e2d\u5305\u542b\u5c5e\u6027\u8282\u70b9\u201c{1}\u201d\uff0c\u8be5\u8282\u70b9\u5177\u6709\u672a\u7ed1\u5b9a\u7684\u524d\u7f00\u201c{2}\u201d\u3002"

    #@396
    aput-object v2, v1, v4

    #@398
    .line 283
    const/16 v2, 0x39

    #@39a
    aput-object v1, v0, v2

    #@39c
    .line 289
    .local v0, "contents":[[Ljava/lang/Object;
    return-object v0
.end method
