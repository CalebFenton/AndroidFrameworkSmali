.class public final Lcom/android/okhttp/internal/http/SpdyTransport;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/Transport;


# static fields
.field private static final HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private final spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field private stream:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 51
    const/4 v0, 0x5

    #@6
    new-array v0, v0, [Lcom/android/okhttp/okio/ByteString;

    #@8
    .line 52
    const-string/jumbo v1, "connection"

    #@b
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@e
    move-result-object v1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 53
    const-string/jumbo v1, "host"

    #@14
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@17
    move-result-object v1

    #@18
    aput-object v1, v0, v3

    #@1a
    .line 54
    const-string/jumbo v1, "keep-alive"

    #@1d
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@20
    move-result-object v1

    #@21
    aput-object v1, v0, v4

    #@23
    .line 55
    const-string/jumbo v1, "proxy-connection"

    #@26
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@29
    move-result-object v1

    #@2a
    aput-object v1, v0, v5

    #@2c
    .line 56
    const-string/jumbo v1, "transfer-encoding"

    #@2f
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@32
    move-result-object v1

    #@33
    aput-object v1, v0, v6

    #@35
    .line 51
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@38
    move-result-object v0

    #@39
    sput-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    #@3b
    .line 59
    const/16 v0, 0x8

    #@3d
    new-array v0, v0, [Lcom/android/okhttp/okio/ByteString;

    #@3f
    .line 60
    const-string/jumbo v1, "connection"

    #@42
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@45
    move-result-object v1

    #@46
    aput-object v1, v0, v2

    #@48
    .line 61
    const-string/jumbo v1, "host"

    #@4b
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@4e
    move-result-object v1

    #@4f
    aput-object v1, v0, v3

    #@51
    .line 62
    const-string/jumbo v1, "keep-alive"

    #@54
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@57
    move-result-object v1

    #@58
    aput-object v1, v0, v4

    #@5a
    .line 63
    const-string/jumbo v1, "proxy-connection"

    #@5d
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@60
    move-result-object v1

    #@61
    aput-object v1, v0, v5

    #@63
    .line 64
    const-string/jumbo v1, "te"

    #@66
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@69
    move-result-object v1

    #@6a
    aput-object v1, v0, v6

    #@6c
    .line 65
    const-string/jumbo v1, "transfer-encoding"

    #@6f
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@72
    move-result-object v1

    #@73
    const/4 v2, 0x5

    #@74
    aput-object v1, v0, v2

    #@76
    .line 66
    const-string/jumbo v1, "encoding"

    #@79
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@7c
    move-result-object v1

    #@7d
    const/4 v2, 0x6

    #@7e
    aput-object v1, v0, v2

    #@80
    .line 67
    const-string/jumbo v1, "upgrade"

    #@83
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@86
    move-result-object v1

    #@87
    const/4 v2, 0x7

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 59
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@8d
    move-result-object v0

    #@8e
    sput-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    #@90
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/spdy/SpdyConnection;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "spdyConnection"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    .line 75
    iput-object p2, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@7
    .line 73
    return-void
.end method

.method private static isProhibitedHeader(Lcom/android/okhttp/Protocol;Lcom/android/okhttp/okio/ByteString;)Z
    .locals 1
    .param p0, "protocol"    # Lcom/android/okhttp/Protocol;
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 224
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 225
    sget-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->SPDY_3_PROHIBITED_HEADERS:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 226
    :cond_0
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@d
    if-ne p0, v0, :cond_1

    #@f
    .line 227
    sget-object v0, Lcom/android/okhttp/internal/http/SpdyTransport;->HTTP_2_PROHIBITED_HEADERS:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1b
    throw v0
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static readNameValueBlock(Ljava/util/List;Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;
    .locals 13
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/Protocol;",
            ")",
            "Lcom/android/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v6, 0x0

    #@1
    .line 174
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v10, "HTTP/1.1"

    #@4
    .line 176
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    #@6
    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@9
    .line 177
    .local v1, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    sget-object v11, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    #@b
    invoke-virtual {p1}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    #@e
    move-result-object v12

    #@f
    invoke-virtual {v1, v11, v12}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@12
    .line 178
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@16
    move-result v4

    #@17
    .end local v6    # "status":Ljava/lang/String;
    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_5

    #@19
    .line 179
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v11

    #@1d
    check-cast v11, Lcom/android/okhttp/internal/spdy/Header;

    #@1f
    iget-object v3, v11, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@21
    .line 180
    .local v3, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v11

    #@25
    check-cast v11, Lcom/android/okhttp/internal/spdy/Header;

    #@27
    iget-object v11, v11, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@29
    invoke-virtual {v11}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    .line 181
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    #@2e
    .local v5, "start":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@31
    move-result v11

    #@32
    if-ge v5, v11, :cond_4

    #@34
    .line 182
    const/4 v11, 0x0

    #@35
    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    #@38
    move-result v0

    #@39
    .line 183
    .local v0, "end":I
    const/4 v11, -0x1

    #@3a
    if-ne v0, v11, :cond_0

    #@3c
    .line 184
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@3f
    move-result v0

    #@40
    .line 186
    :cond_0
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    .line 187
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@46
    invoke-virtual {v3, v11}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v11

    #@4a
    if-eqz v11, :cond_2

    #@4c
    .line 188
    move-object v6, v8

    #@4d
    .line 194
    :cond_1
    :goto_2
    add-int/lit8 v5, v0, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 189
    :cond_2
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    #@52
    invoke-virtual {v3, v11}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v11

    #@56
    if-eqz v11, :cond_3

    #@58
    .line 190
    move-object v10, v8

    #@59
    goto :goto_2

    #@5a
    .line 191
    :cond_3
    invoke-static {p1, v3}, Lcom/android/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/android/okhttp/Protocol;Lcom/android/okhttp/okio/ByteString;)Z

    #@5d
    move-result v11

    #@5e
    if-nez v11, :cond_1

    #@60
    .line 192
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@63
    move-result-object v11

    #@64
    invoke-virtual {v1, v11, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@67
    goto :goto_2

    #@68
    .line 178
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 197
    .end local v3    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    #@6d
    new-instance v11, Ljava/net/ProtocolException;

    #@6f
    const-string/jumbo v12, "Expected \':status\' header not present"

    #@72
    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@75
    throw v11

    #@76
    .line 199
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v11

    #@7f
    const-string/jumbo v12, " "

    #@82
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v11

    #@86
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v11

    #@8a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v11

    #@8e
    invoke-static {v11}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    #@91
    move-result-object v7

    #@92
    .line 200
    .local v7, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v11, Lcom/android/okhttp/Response$Builder;

    #@94
    invoke-direct {v11}, Lcom/android/okhttp/Response$Builder;-><init>()V

    #@97
    invoke-virtual {v11, p1}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@9a
    move-result-object v11

    #@9b
    .line 202
    iget v12, v7, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@9d
    .line 200
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    #@a0
    move-result-object v11

    #@a1
    .line 203
    iget-object v12, v7, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@a3
    .line 200
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@a6
    move-result-object v11

    #@a7
    .line 204
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@aa
    move-result-object v12

    #@ab
    .line 200
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@ae
    move-result-object v11

    #@af
    return-object v11
.end method

.method public static writeNameValueBlock(Lcom/android/okhttp/Request;Lcom/android/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            "Lcom/android/okhttp/Protocol;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@3
    move-result-object v1

    #@4
    .line 115
    .local v1, "headers":Lcom/android/okhttp/Headers;
    new-instance v7, Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    #@9
    move-result v10

    #@a
    add-int/lit8 v10, v10, 0xa

    #@c
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 116
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@11
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    #@13
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@16
    move-result-object v12

    #@17
    invoke-direct {v10, v11, v12}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@1a
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 117
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@1f
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    #@21
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@24
    move-result-object v12

    #@25
    invoke-static {v12}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    #@28
    move-result-object v12

    #@29
    invoke-direct {v10, v11, v12}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@2c
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 118
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@32
    move-result-object v10

    #@33
    invoke-static {v10}, Lcom/android/okhttp/internal/http/HttpEngine;->hostHeader(Ljava/net/URL;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 119
    .local v2, "host":Ljava/lang/String;
    sget-object v10, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@39
    if-ne v10, p1, :cond_1

    #@3b
    .line 120
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@3d
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    #@3f
    invoke-direct {v10, v11, p2}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@42
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 121
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@47
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    #@49
    invoke-direct {v10, v11, v2}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@4c
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 127
    :goto_0
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@51
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    #@53
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->url()Ljava/net/URL;

    #@56
    move-result-object v12

    #@57
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@5a
    move-result-object v12

    #@5b
    invoke-direct {v10, v11, v12}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@5e
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@61
    .line 129
    new-instance v6, Ljava/util/LinkedHashSet;

    #@63
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    #@66
    .line 130
    .local v6, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v3, 0x0

    #@67
    .local v3, "i":I
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    #@6a
    move-result v8

    #@6b
    .local v8, "size":I
    :goto_1
    if-ge v3, v8, :cond_6

    #@6d
    .line 132
    invoke-virtual {v1, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@73
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@76
    move-result-object v10

    #@77
    invoke-static {v10}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@7a
    move-result-object v5

    #@7b
    .line 133
    .local v5, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {v1, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    .line 136
    .local v9, "value":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/okhttp/internal/http/SpdyTransport;->isProhibitedHeader(Lcom/android/okhttp/Protocol;Lcom/android/okhttp/okio/ByteString;)Z

    #@82
    move-result v10

    #@83
    if-eqz v10, :cond_3

    #@85
    .line 130
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@87
    goto :goto_1

    #@88
    .line 122
    .end local v3    # "i":I
    .end local v5    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .end local v8    # "size":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@8a
    if-ne v10, p1, :cond_2

    #@8c
    .line 123
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@8e
    sget-object v11, Lcom/android/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    #@90
    invoke-direct {v10, v11, v2}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@93
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@96
    goto :goto_0

    #@97
    .line 125
    :cond_2
    new-instance v10, Ljava/lang/AssertionError;

    #@99
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@9c
    throw v10

    #@9d
    .line 139
    .restart local v3    # "i":I
    .restart local v5    # "name":Lcom/android/okhttp/okio/ByteString;
    .restart local v6    # "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    .restart local v8    # "size":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    #@9f
    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v10

    #@a3
    if-nez v10, :cond_0

    #@a5
    .line 140
    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    #@a7
    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v10

    #@ab
    .line 139
    if-nez v10, :cond_0

    #@ad
    .line 141
    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    #@af
    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v10

    #@b3
    .line 139
    if-nez v10, :cond_0

    #@b5
    .line 142
    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    #@b7
    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v10

    #@bb
    .line 139
    if-nez v10, :cond_0

    #@bd
    .line 143
    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    #@bf
    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v10

    #@c3
    .line 139
    if-nez v10, :cond_0

    #@c5
    .line 144
    sget-object v10, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    #@c7
    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v10

    #@cb
    .line 139
    if-nez v10, :cond_0

    #@cd
    .line 149
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d0
    move-result v10

    #@d1
    if-eqz v10, :cond_4

    #@d3
    .line 150
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@d5
    invoke-direct {v10, v5, v9}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@d8
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@db
    goto :goto_2

    #@dc
    .line 155
    :cond_4
    const/4 v4, 0x0

    #@dd
    .local v4, "j":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@e0
    move-result v10

    #@e1
    if-ge v4, v10, :cond_0

    #@e3
    .line 156
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e6
    move-result-object v10

    #@e7
    check-cast v10, Lcom/android/okhttp/internal/spdy/Header;

    #@e9
    iget-object v10, v10, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@eb
    invoke-virtual {v10, v5}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result v10

    #@ef
    if-eqz v10, :cond_5

    #@f1
    .line 157
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f4
    move-result-object v10

    #@f5
    check-cast v10, Lcom/android/okhttp/internal/spdy/Header;

    #@f7
    iget-object v10, v10, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@f9
    invoke-virtual {v10}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@fc
    move-result-object v10

    #@fd
    invoke-static {v10, v9}, Lcom/android/okhttp/internal/http/SpdyTransport;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@100
    move-result-object v0

    #@101
    .line 158
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v10, Lcom/android/okhttp/internal/spdy/Header;

    #@103
    invoke-direct {v10, v5, v0}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    #@106
    invoke-interface {v7, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@109
    goto/16 :goto_2

    #@10b
    .line 155
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@10d
    goto :goto_3

    #@10e
    .line 163
    .end local v4    # "j":I
    .end local v5    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v9    # "value":Ljava/lang/String;
    :cond_6
    return-object v7
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 1

    #@0
    .prologue
    .line 219
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .locals 1
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSink()Lcom/android/okhttp/okio/Sink;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public disconnect(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 2
    .param p1, "engine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@6
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@b
    .line 214
    :cond_0
    return-void
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSink()Lcom/android/okhttp/okio/Sink;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    #@9
    .line 99
    return-void
.end method

.method public openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .locals 3
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    new-instance v0, Lcom/android/okhttp/internal/http/RealResponseBody;

    #@2
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSource()Lcom/android/okhttp/okio/Source;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    #@13
    return-object v0
.end method

.method public readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getResponseHeaders()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@8
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/SpdyTransport;->readNameValueBlock(Ljava/util/List;Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 0

    #@0
    .prologue
    .line 211
    return-void
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getSink()Lcom/android/okhttp/okio/Sink;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    #@9
    .line 95
    return-void
.end method

.method public writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .locals 7
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    if-eqz v3, :cond_0

    #@4
    return-void

    #@5
    .line 85
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    #@a
    .line 86
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@c
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    #@f
    move-result v1

    #@10
    .line 87
    .local v1, "permitsRequestBody":Z
    const/4 v0, 0x1

    #@11
    .line 88
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@13
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Lcom/android/okhttp/Connection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Lcom/android/okhttp/internal/http/RequestLine;->version(Lcom/android/okhttp/Protocol;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 89
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@21
    .line 90
    iget-object v4, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->spdyConnection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@23
    invoke-virtual {v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@26
    move-result-object v4

    #@27
    invoke-static {p1, v4, v2}, Lcom/android/okhttp/internal/http/SpdyTransport;->writeNameValueBlock(Lcom/android/okhttp/Request;Lcom/android/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    #@2a
    move-result-object v4

    #@2b
    .line 89
    invoke-virtual {v3, v4, v1, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@31
    .line 92
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->stream:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@33
    invoke-virtual {v3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout()Lcom/android/okhttp/okio/Timeout;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p0, Lcom/android/okhttp/internal/http/SpdyTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@39
    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    #@3b
    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    #@3e
    move-result v4

    #@3f
    int-to-long v4, v4

    #@40
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@42
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    #@45
    .line 82
    return-void
.end method
