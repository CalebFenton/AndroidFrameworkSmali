.class public final Lcom/android/okhttp/internal/http/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/Transport;


# instance fields
.field private final httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

.field private final httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/internal/http/HttpConnection;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "httpConnection"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@5
    .line 33
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@7
    .line 31
    return-void
.end method

.method private getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;
    .locals 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpEngine;->hasBody(Lcom/android/okhttp/Response;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 116
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@8
    const-wide/16 v4, 0x0

    #@a
    invoke-virtual {v2, v4, v5}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 119
    :cond_0
    const-string/jumbo v2, "chunked"

    #@12
    const-string/jumbo v3, "Transfer-Encoding"

    #@15
    invoke-virtual {p1, v3}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 120
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@21
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@23
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/HttpConnection;->newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 123
    :cond_1
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    #@2b
    move-result-wide v0

    #@2c
    .line 124
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    #@2e
    cmp-long v2, v0, v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 125
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@34
    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    #@37
    move-result-object v2

    #@38
    return-object v2

    #@39
    .line 131
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@3b
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->newUnknownLengthSource()Lcom/android/okhttp/okio/Source;

    #@3e
    move-result-object v2

    #@3f
    return-object v2
.end method


# virtual methods
.method public canReuseConnection()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 93
    const-string/jumbo v0, "close"

    #@4
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@6
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getRequest()Lcom/android/okhttp/Request;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "Connection"

    #@d
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 94
    return v3

    #@18
    .line 98
    :cond_0
    const-string/jumbo v0, "close"

    #@1b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@1d
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, "Connection"

    #@24
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 99
    return v3

    #@2f
    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@31
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->isClosed()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 103
    return v3

    #@38
    .line 106
    :cond_2
    const/4 v0, 0x1

    #@39
    return v0
.end method

.method public createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "chunked"

    #@3
    const-string/jumbo v1, "Transfer-Encoding"

    #@6
    invoke-virtual {p1, v1}, Lcom/android/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 39
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@12
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->newChunkedSink()Lcom/android/okhttp/okio/Sink;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 42
    :cond_0
    const-wide/16 v0, -0x1

    #@19
    cmp-long v0, p2, v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 44
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@1f
    invoke-virtual {v0, p2, p3}, Lcom/android/okhttp/internal/http/HttpConnection;->newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    .line 48
    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    #@29
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method public disconnect(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpConnection;->closeIfOwnedBy(Ljava/lang/Object;)V

    #@5
    .line 134
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
    .line 52
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->flush()V

    #@5
    .line 51
    return-void
.end method

.method public openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .locals 4
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpTransport;->getTransferStream(Lcom/android/okhttp/Response;)Lcom/android/okhttp/okio/Source;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/internal/http/RealResponseBody;

    #@6
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@9
    move-result-object v2

    #@a
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    #@11
    return-object v1
.end method

.method public readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->readResponse()Lcom/android/okhttp/Response$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public releaseConnectionOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpTransport;->canReuseConnection()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 85
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->poolOnIdle()V

    #@b
    .line 83
    :goto_0
    return-void

    #@c
    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@e
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->closeOnIdle()V

    #@11
    goto :goto_0
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
    .line 56
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V

    #@5
    .line 55
    return-void
.end method

.method public writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    #@5
    .line 74
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@7
    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lcom/android/okhttp/Connection;->getRoute()Lcom/android/okhttp/Route;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@16
    move-result-object v1

    #@17
    .line 75
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@19
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Lcom/android/okhttp/Connection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@20
    move-result-object v2

    #@21
    .line 73
    invoke-static {p1, v1, v2}, Lcom/android/okhttp/internal/http/RequestLine;->get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;Lcom/android/okhttp/Protocol;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 76
    .local v0, "requestLine":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpTransport;->httpConnection:Lcom/android/okhttp/internal/http/HttpConnection;

    #@27
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2, v0}, Lcom/android/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    #@2e
    .line 71
    return-void
.end method
