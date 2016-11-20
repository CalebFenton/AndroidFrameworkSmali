.class public Lorg/apache/http/impl/EnglishReasonPhraseCatalog;
.super Ljava/lang/Object;
.source "EnglishReasonPhraseCatalog.java"

# interfaces
.implements Lorg/apache/http/ReasonPhraseCatalog;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;

.field private static final REASON_PHRASES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/16 v3, 0x8

    #@3
    .line 67
    new-instance v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;

    #@5
    invoke-direct {v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;-><init>()V

    #@8
    .line 66
    sput-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;

    #@a
    .line 105
    const/4 v0, 0x6

    #@b
    new-array v0, v0, [[Ljava/lang/String;

    #@d
    .line 106
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 107
    new-array v1, v4, [Ljava/lang/String;

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 108
    new-array v1, v3, [Ljava/lang/String;

    #@18
    const/4 v2, 0x2

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 109
    new-array v1, v3, [Ljava/lang/String;

    #@1d
    aput-object v1, v0, v4

    #@1f
    .line 110
    const/16 v1, 0x19

    #@21
    new-array v1, v1, [Ljava/lang/String;

    #@23
    const/4 v2, 0x4

    #@24
    aput-object v1, v0, v2

    #@26
    .line 111
    new-array v1, v3, [Ljava/lang/String;

    #@28
    const/4 v2, 0x5

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 105
    sput-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    #@2d
    .line 136
    const-string/jumbo v0, "OK"

    #@30
    .line 135
    const/16 v1, 0xc8

    #@32
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@35
    .line 138
    const-string/jumbo v0, "Created"

    #@38
    .line 137
    const/16 v1, 0xc9

    #@3a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@3d
    .line 140
    const-string/jumbo v0, "Accepted"

    #@40
    .line 139
    const/16 v1, 0xca

    #@42
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@45
    .line 142
    const-string/jumbo v0, "No Content"

    #@48
    .line 141
    const/16 v1, 0xcc

    #@4a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@4d
    .line 144
    const-string/jumbo v0, "Moved Permanently"

    #@50
    .line 143
    const/16 v1, 0x12d

    #@52
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@55
    .line 146
    const-string/jumbo v0, "Moved Temporarily"

    #@58
    .line 145
    const/16 v1, 0x12e

    #@5a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@5d
    .line 148
    const-string/jumbo v0, "Not Modified"

    #@60
    .line 147
    const/16 v1, 0x130

    #@62
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@65
    .line 150
    const-string/jumbo v0, "Bad Request"

    #@68
    .line 149
    const/16 v1, 0x190

    #@6a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@6d
    .line 152
    const-string/jumbo v0, "Unauthorized"

    #@70
    .line 151
    const/16 v1, 0x191

    #@72
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@75
    .line 154
    const-string/jumbo v0, "Forbidden"

    #@78
    .line 153
    const/16 v1, 0x193

    #@7a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@7d
    .line 156
    const-string/jumbo v0, "Not Found"

    #@80
    .line 155
    const/16 v1, 0x194

    #@82
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@85
    .line 158
    const-string/jumbo v0, "Internal Server Error"

    #@88
    .line 157
    const/16 v1, 0x1f4

    #@8a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@8d
    .line 160
    const-string/jumbo v0, "Not Implemented"

    #@90
    .line 159
    const/16 v1, 0x1f5

    #@92
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@95
    .line 162
    const-string/jumbo v0, "Bad Gateway"

    #@98
    .line 161
    const/16 v1, 0x1f6

    #@9a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@9d
    .line 164
    const-string/jumbo v0, "Service Unavailable"

    #@a0
    .line 163
    const/16 v1, 0x1f7

    #@a2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@a5
    .line 168
    const-string/jumbo v0, "Continue"

    #@a8
    .line 167
    const/16 v1, 0x64

    #@aa
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@ad
    .line 170
    const-string/jumbo v0, "Temporary Redirect"

    #@b0
    .line 169
    const/16 v1, 0x133

    #@b2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@b5
    .line 172
    const-string/jumbo v0, "Method Not Allowed"

    #@b8
    .line 171
    const/16 v1, 0x195

    #@ba
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@bd
    .line 174
    const-string/jumbo v0, "Conflict"

    #@c0
    .line 173
    const/16 v1, 0x199

    #@c2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@c5
    .line 176
    const-string/jumbo v0, "Precondition Failed"

    #@c8
    .line 175
    const/16 v1, 0x19c

    #@ca
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@cd
    .line 178
    const-string/jumbo v0, "Request Too Long"

    #@d0
    .line 177
    const/16 v1, 0x19d

    #@d2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@d5
    .line 180
    const-string/jumbo v0, "Request-URI Too Long"

    #@d8
    .line 179
    const/16 v1, 0x19e

    #@da
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@dd
    .line 182
    const-string/jumbo v0, "Unsupported Media Type"

    #@e0
    .line 181
    const/16 v1, 0x19f

    #@e2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@e5
    .line 184
    const-string/jumbo v0, "Multiple Choices"

    #@e8
    .line 183
    const/16 v1, 0x12c

    #@ea
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@ed
    .line 186
    const-string/jumbo v0, "See Other"

    #@f0
    .line 185
    const/16 v1, 0x12f

    #@f2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@f5
    .line 188
    const-string/jumbo v0, "Use Proxy"

    #@f8
    .line 187
    const/16 v1, 0x131

    #@fa
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@fd
    .line 190
    const-string/jumbo v0, "Payment Required"

    #@100
    .line 189
    const/16 v1, 0x192

    #@102
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@105
    .line 192
    const-string/jumbo v0, "Not Acceptable"

    #@108
    .line 191
    const/16 v1, 0x196

    #@10a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@10d
    .line 194
    const-string/jumbo v0, "Proxy Authentication Required"

    #@110
    .line 193
    const/16 v1, 0x197

    #@112
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@115
    .line 196
    const-string/jumbo v0, "Request Timeout"

    #@118
    .line 195
    const/16 v1, 0x198

    #@11a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@11d
    .line 199
    const-string/jumbo v0, "Switching Protocols"

    #@120
    .line 198
    const/16 v1, 0x65

    #@122
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@125
    .line 201
    const-string/jumbo v0, "Non Authoritative Information"

    #@128
    .line 200
    const/16 v1, 0xcb

    #@12a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@12d
    .line 203
    const-string/jumbo v0, "Reset Content"

    #@130
    .line 202
    const/16 v1, 0xcd

    #@132
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@135
    .line 205
    const-string/jumbo v0, "Partial Content"

    #@138
    .line 204
    const/16 v1, 0xce

    #@13a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@13d
    .line 207
    const-string/jumbo v0, "Gateway Timeout"

    #@140
    .line 206
    const/16 v1, 0x1f8

    #@142
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@145
    .line 209
    const-string/jumbo v0, "Http Version Not Supported"

    #@148
    .line 208
    const/16 v1, 0x1f9

    #@14a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@14d
    .line 211
    const-string/jumbo v0, "Gone"

    #@150
    .line 210
    const/16 v1, 0x19a

    #@152
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@155
    .line 213
    const-string/jumbo v0, "Length Required"

    #@158
    .line 212
    const/16 v1, 0x19b

    #@15a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@15d
    .line 215
    const-string/jumbo v0, "Requested Range Not Satisfiable"

    #@160
    .line 214
    const/16 v1, 0x1a0

    #@162
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@165
    .line 217
    const-string/jumbo v0, "Expectation Failed"

    #@168
    .line 216
    const/16 v1, 0x1a1

    #@16a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@16d
    .line 221
    const-string/jumbo v0, "Processing"

    #@170
    .line 220
    const/16 v1, 0x66

    #@172
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@175
    .line 223
    const-string/jumbo v0, "Multi-Status"

    #@178
    .line 222
    const/16 v1, 0xcf

    #@17a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@17d
    .line 225
    const-string/jumbo v0, "Unprocessable Entity"

    #@180
    .line 224
    const/16 v1, 0x1a6

    #@182
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@185
    .line 227
    const-string/jumbo v0, "Insufficient Space On Resource"

    #@188
    .line 226
    const/16 v1, 0x1a3

    #@18a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@18d
    .line 229
    const-string/jumbo v0, "Method Failure"

    #@190
    .line 228
    const/16 v1, 0x1a4

    #@192
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@195
    .line 231
    const-string/jumbo v0, "Locked"

    #@198
    .line 230
    const/16 v1, 0x1a7

    #@19a
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@19d
    .line 233
    const-string/jumbo v0, "Insufficient Storage"

    #@1a0
    .line 232
    const/16 v1, 0x1fb

    #@1a2
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@1a5
    .line 235
    const-string/jumbo v0, "Failed Dependency"

    #@1a8
    .line 234
    const/16 v1, 0x1a8

    #@1aa
    invoke-static {v1, v0}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    #@1ad
    .line 56
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static setReason(ILjava/lang/String;)V
    .locals 3
    .param p0, "status"    # I
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    div-int/lit8 v0, p0, 0x64

    #@2
    .line 125
    .local v0, "category":I
    mul-int/lit8 v2, v0, 0x64

    #@4
    sub-int v1, p0, v2

    #@6
    .line 126
    .local v1, "subcode":I
    sget-object v2, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    #@8
    aget-object v2, v2, v0

    #@a
    aput-object p1, v2, v1

    #@c
    .line 123
    return-void
.end method


# virtual methods
.method public getReason(ILjava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "status"    # I
    .param p2, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/16 v3, 0x64

    #@2
    .line 88
    if-lt p1, v3, :cond_0

    #@4
    const/16 v3, 0x258

    #@6
    if-lt p1, v3, :cond_1

    #@8
    .line 89
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Unknown category for status code "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "."

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 89
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 93
    :cond_1
    div-int/lit8 v0, p1, 0x64

    #@2b
    .line 94
    .local v0, "category":I
    mul-int/lit8 v3, v0, 0x64

    #@2d
    sub-int v2, p1, v3

    #@2f
    .line 96
    .local v2, "subcode":I
    const/4 v1, 0x0

    #@30
    .line 97
    .local v1, "reason":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    #@32
    aget-object v3, v3, v0

    #@34
    array-length v3, v3

    #@35
    if-le v3, v2, :cond_2

    #@37
    .line 98
    sget-object v3, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    #@39
    aget-object v3, v3, v0

    #@3b
    aget-object v1, v3, v2

    #@3d
    .line 100
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    return-object v1
.end method
