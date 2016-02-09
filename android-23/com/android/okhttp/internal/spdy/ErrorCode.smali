.class public final enum Lcom/android/okhttp/internal/spdy/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/internal/spdy/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum CONNECT_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum ENHANCE_YOUR_CALM:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum FRAME_TOO_LARGE:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum HTTP_1_1_REQUIRED:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum STREAM_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field public static final enum UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/spdy/ErrorCode;


# instance fields
.field public final httpCode:I

.field public final spdyGoAwayCode:I

.field public final spdyRstCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    #@0
    .prologue
    const/4 v15, 0x3

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v14, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v4, -0x1

    #@5
    .line 20
    new-instance v0, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@7
    const-string/jumbo v1, "NO_ERROR"

    #@a
    move v3, v2

    #@b
    move v5, v2

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@f
    .line 21
    sput-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@11
    .line 23
    new-instance v5, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@13
    const-string/jumbo v6, "PROTOCOL_ERROR"

    #@16
    move v8, v7

    #@17
    move v9, v7

    #@18
    move v10, v7

    #@19
    invoke-direct/range {v5 .. v10}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@1c
    sput-object v5, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@1e
    .line 25
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@20
    const-string/jumbo v9, "INVALID_STREAM"

    #@23
    move v10, v14

    #@24
    move v11, v7

    #@25
    move v12, v14

    #@26
    move v13, v4

    #@27
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@2a
    .line 26
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2c
    .line 28
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2e
    const-string/jumbo v9, "UNSUPPORTED_VERSION"

    #@31
    .line 29
    const/4 v12, 0x4

    #@32
    move v10, v15

    #@33
    move v11, v7

    #@34
    move v13, v4

    #@35
    .line 28
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@38
    .line 29
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3a
    .line 31
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3c
    const-string/jumbo v9, "STREAM_IN_USE"

    #@3f
    const/4 v10, 0x4

    #@40
    .line 32
    const/16 v12, 0x8

    #@42
    move v11, v7

    #@43
    move v13, v4

    #@44
    .line 31
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@47
    .line 32
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@49
    .line 34
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@4b
    const-string/jumbo v9, "STREAM_ALREADY_CLOSED"

    #@4e
    const/4 v10, 0x5

    #@4f
    .line 35
    const/16 v12, 0x9

    #@51
    move v11, v7

    #@52
    move v13, v4

    #@53
    .line 34
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@56
    .line 35
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@58
    .line 37
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@5a
    const-string/jumbo v9, "INTERNAL_ERROR"

    #@5d
    const/4 v10, 0x6

    #@5e
    const/4 v12, 0x6

    #@5f
    move v11, v14

    #@60
    move v13, v14

    #@61
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@64
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@66
    .line 39
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@68
    const-string/jumbo v9, "FLOW_CONTROL_ERROR"

    #@6b
    const/4 v10, 0x7

    #@6c
    const/4 v12, 0x7

    #@6d
    move v11, v15

    #@6e
    move v13, v4

    #@6f
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@72
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@74
    .line 41
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@76
    const-string/jumbo v9, "STREAM_CLOSED"

    #@79
    const/16 v10, 0x8

    #@7b
    const/4 v11, 0x5

    #@7c
    move v12, v4

    #@7d
    move v13, v4

    #@7e
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@81
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@83
    .line 43
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@85
    const-string/jumbo v9, "FRAME_TOO_LARGE"

    #@88
    const/16 v10, 0x9

    #@8a
    const/4 v11, 0x6

    #@8b
    const/16 v12, 0xb

    #@8d
    move v13, v4

    #@8e
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@91
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->FRAME_TOO_LARGE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@93
    .line 45
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@95
    const-string/jumbo v9, "REFUSED_STREAM"

    #@98
    const/16 v10, 0xa

    #@9a
    const/4 v11, 0x7

    #@9b
    move v12, v15

    #@9c
    move v13, v4

    #@9d
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@a0
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@a2
    .line 47
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@a4
    const-string/jumbo v9, "CANCEL"

    #@a7
    const/16 v10, 0xb

    #@a9
    const/16 v11, 0x8

    #@ab
    const/4 v12, 0x5

    #@ac
    move v13, v4

    #@ad
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@b0
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@b2
    .line 49
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@b4
    const-string/jumbo v9, "COMPRESSION_ERROR"

    #@b7
    const/16 v10, 0xc

    #@b9
    const/16 v11, 0x9

    #@bb
    move v12, v4

    #@bc
    move v13, v4

    #@bd
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@c0
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->COMPRESSION_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@c2
    .line 51
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@c4
    const-string/jumbo v9, "CONNECT_ERROR"

    #@c7
    const/16 v10, 0xd

    #@c9
    const/16 v11, 0xa

    #@cb
    move v12, v4

    #@cc
    move v13, v4

    #@cd
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@d0
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->CONNECT_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@d2
    .line 53
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@d4
    const-string/jumbo v9, "ENHANCE_YOUR_CALM"

    #@d7
    const/16 v10, 0xe

    #@d9
    const/16 v11, 0xb

    #@db
    move v12, v4

    #@dc
    move v13, v4

    #@dd
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@e0
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@e2
    .line 55
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@e4
    const-string/jumbo v9, "INADEQUATE_SECURITY"

    #@e7
    const/16 v10, 0xf

    #@e9
    const/16 v11, 0xc

    #@eb
    move v12, v4

    #@ec
    move v13, v4

    #@ed
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@f0
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INADEQUATE_SECURITY:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@f2
    .line 57
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@f4
    const-string/jumbo v9, "HTTP_1_1_REQUIRED"

    #@f7
    const/16 v10, 0x10

    #@f9
    const/16 v11, 0xd

    #@fb
    move v12, v4

    #@fc
    move v13, v4

    #@fd
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@100
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->HTTP_1_1_REQUIRED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@102
    .line 59
    new-instance v8, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@104
    const-string/jumbo v9, "INVALID_CREDENTIALS"

    #@107
    const/16 v10, 0x11

    #@109
    const/16 v12, 0xa

    #@10b
    move v11, v4

    #@10c
    move v13, v4

    #@10d
    invoke-direct/range {v8 .. v13}, Lcom/android/okhttp/internal/spdy/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    #@110
    sput-object v8, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_CREDENTIALS:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@112
    .line 19
    const/16 v0, 0x12

    #@114
    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@116
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@118
    aput-object v1, v0, v2

    #@11a
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@11c
    aput-object v1, v0, v7

    #@11e
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@120
    aput-object v1, v0, v14

    #@122
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@124
    aput-object v1, v0, v15

    #@126
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@128
    const/4 v2, 0x4

    #@129
    aput-object v1, v0, v2

    #@12b
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@12d
    const/4 v2, 0x5

    #@12e
    aput-object v1, v0, v2

    #@130
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@132
    const/4 v2, 0x6

    #@133
    aput-object v1, v0, v2

    #@135
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@137
    const/4 v2, 0x7

    #@138
    aput-object v1, v0, v2

    #@13a
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_CLOSED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@13c
    const/16 v2, 0x8

    #@13e
    aput-object v1, v0, v2

    #@140
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->FRAME_TOO_LARGE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@142
    const/16 v2, 0x9

    #@144
    aput-object v1, v0, v2

    #@146
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@148
    const/16 v2, 0xa

    #@14a
    aput-object v1, v0, v2

    #@14c
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@14e
    const/16 v2, 0xb

    #@150
    aput-object v1, v0, v2

    #@152
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->COMPRESSION_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@154
    const/16 v2, 0xc

    #@156
    aput-object v1, v0, v2

    #@158
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CONNECT_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@15a
    const/16 v2, 0xd

    #@15c
    aput-object v1, v0, v2

    #@15e
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@160
    const/16 v2, 0xe

    #@162
    aput-object v1, v0, v2

    #@164
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->INADEQUATE_SECURITY:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@166
    const/16 v2, 0xf

    #@168
    aput-object v1, v0, v2

    #@16a
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->HTTP_1_1_REQUIRED:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@16c
    const/16 v2, 0x10

    #@16e
    aput-object v1, v0, v2

    #@170
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_CREDENTIALS:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@172
    const/16 v2, 0x11

    #@174
    aput-object v1, v0, v2

    #@176
    sput-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->$VALUES:[Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@178
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "httpCode"    # I
    .param p4, "spdyRstCode"    # I
    .param p5, "spdyGoAwayCode"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 66
    iput p3, p0, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    #@5
    .line 67
    iput p4, p0, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    #@7
    .line 68
    iput p5, p0, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    #@9
    .line 65
    return-void
.end method

.method public static fromHttp2(I)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    #@0
    .prologue
    .line 79
    invoke-static {}, Lcom/android/okhttp/internal/spdy/ErrorCode;->values()[Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 80
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    iget v4, v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->httpCode:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    return-object v0

    #@f
    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 82
    .end local v0    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static fromSpdy3Rst(I)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    #@0
    .prologue
    .line 72
    invoke-static {}, Lcom/android/okhttp/internal/spdy/ErrorCode;->values()[Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 73
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    iget v4, v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    return-object v0

    #@f
    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 75
    .end local v0    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static fromSpdyGoAway(I)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    #@0
    .prologue
    .line 86
    invoke-static {}, Lcom/android/okhttp/internal/spdy/ErrorCode;->values()[Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 87
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    iget v4, v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    return-object v0

    #@f
    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 89
    .end local v0    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    const-class v0, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1

    #@0
    .prologue
    .line 19
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->$VALUES:[Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2
    return-object v0
.end method
