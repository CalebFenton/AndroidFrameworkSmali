.class public final Lcom/android/okhttp/internal/http/Http2xStream;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist ENCODING:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist HOST:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TE:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist UPGRADE:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field private final blacklist framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private blacklist stream:Lcom/android/okhttp/internal/framed/FramedStream;

.field private final blacklist streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 55
    const-string v0, "connection"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    .line 56
    const-string v0, "host"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    sput-object v2, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    .line 57
    const-string v0, "keep-alive"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    sput-object v3, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    .line 58
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    sput-object v4, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    .line 59
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v6

    sput-object v6, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    .line 60
    const-string v0, "te"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->TE:Lcom/android/okhttp/okio/ByteString;

    .line 61
    const-string v5, "encoding"

    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v12

    sput-object v12, Lcom/android/okhttp/internal/http/Http2xStream;->ENCODING:Lcom/android/okhttp/okio/ByteString;

    .line 62
    const-string v5, "upgrade"

    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v13

    sput-object v13, Lcom/android/okhttp/internal/http/Http2xStream;->UPGRADE:Lcom/android/okhttp/okio/ByteString;

    .line 65
    sget-object v9, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    sget-object v7, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    sget-object v8, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    move-object v5, v6

    move-object v6, v9

    sget-object v9, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    sget-object v11, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    filled-new-array/range {v1 .. v11}, [Lcom/android/okhttp/okio/ByteString;

    move-result-object v14

    invoke-static {v14}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sput-object v14, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 77
    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/android/okhttp/okio/ByteString;

    move-result-object v14

    invoke-static {v14}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sput-object v14, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    move-object v14, v11

    move-object v11, v8

    move-object v8, v13

    move-object v13, v10

    move-object v10, v7

    move-object v7, v12

    move-object v12, v9

    move-object v9, v6

    move-object v6, v5

    move-object v5, v0

    .line 85
    filled-new-array/range {v1 .. v14}, [Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    move-object v15, v6

    move-object v6, v5

    move-object v5, v15

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    move-object v15, v6

    move-object v6, v5

    move-object v5, v15

    .line 100
    filled-new-array/range {v1 .. v8}, [Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V
    .registers 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 117
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/Http2xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object p0
.end method

.method public static blacklist http2HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result p0

    :goto_58
    if-ge v5, p0, :cond_7f

    .line 211
    invoke-virtual {v0, v5}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    .line 212
    sget-object v3, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 213
    new-instance v3, Lcom/android/okhttp/internal/framed/Header;

    invoke-virtual {v0, v5}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_7f
    return-object v1
.end method

.method private static blacklist joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readHttp2HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)",
            "Lcom/android/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 259
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_3d

    .line 260
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 262
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/internal/framed/Header;

    iget-object v5, v5, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 263
    sget-object v6, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v4, v6}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move-object v2, v5

    goto :goto_3a

    .line 265
    :cond_2b
    sget-object v6, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 266
    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_3d
    if-eqz v2, :cond_74

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    .line 272
    new-instance v1, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Response$Builder;-><init>()V

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    .line 273
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 274
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 275
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    .line 276
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    .line 269
    :cond_74
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist readSpdy3HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)",
            "Lcom/android/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 224
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HTTP/1.1"

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v1, :cond_63

    .line 225
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/internal/framed/Header;

    iget-object v6, v6, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 227
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/okhttp/internal/framed/Header;

    iget-object v7, v7, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v7}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    move v8, v4

    .line 228
    :goto_25
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_60

    .line 229
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_36

    .line 231
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 233
    :cond_36
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 234
    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    move-object v2, v8

    goto :goto_5d

    .line 236
    :cond_44
    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    move-object v3, v8

    goto :goto_5d

    .line 238
    :cond_4e
    sget-object v10, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 239
    invoke-virtual {v6}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    :cond_5d
    :goto_5d
    add-int/lit8 v8, v9, 0x1

    goto :goto_25

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_63
    if-eqz v2, :cond_9d

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object p0

    .line 247
    new-instance v1, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Response$Builder;-><init>()V

    sget-object v2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    .line 248
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 249
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 250
    invoke-virtual {v1, p0}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    .line 251
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    .line 244
    :cond_9d
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist spdy3HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 171
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    move v3, v5

    :goto_6a
    if-ge v3, v2, :cond_ca

    .line 173
    invoke-virtual {v0, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    .line 176
    sget-object v6, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    goto :goto_c7

    .line 179
    :cond_83
    invoke-virtual {v0, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 181
    new-instance v7, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v7, v4, v6}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    :cond_96
    move v7, v5

    .line 186
    :goto_97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c7

    .line 187
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/okhttp/internal/framed/Header;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v8, v4}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 188
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/okhttp/internal/framed/Header;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v8}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/okhttp/internal/http/Http2xStream;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    new-instance v8, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v8, v4, v6}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    :cond_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_ca
    return-object v1
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 2

    .line 285
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    :cond_9
    return-void
.end method

.method public blacklist createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public blacklist finishRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->close()V

    return-void
.end method

.method public blacklist openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->getSource()Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;-><init>(Lcom/android/okhttp/internal/http/Http2xStream;Lcom/android/okhttp/okio/Source;)V

    .line 281
    new-instance p0, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object p1

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    return-object p0
.end method

.method public blacklist readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_15

    .line 152
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/Http2xStream;->readHttp2HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    .line 153
    :cond_15
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/http/Http2xStream;->readSpdy3HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    return-void
.end method

.method public blacklist writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    return-void
.end method

.method public blacklist writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz v0, :cond_5

    return-void

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 132
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_1f

    .line 134
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http2xStream;->http2HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;

    move-result-object p1

    goto :goto_23

    .line 135
    :cond_1f
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http2xStream;->spdy3HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;

    move-result-object p1

    :goto_23
    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 138
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 139
    iget-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    return-void
.end method
