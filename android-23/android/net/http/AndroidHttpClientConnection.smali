.class public Landroid/net/http/AndroidHttpClientConnection;
.super Ljava/lang/Object;
.source "AndroidHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpInetConnection;
.implements Lorg/apache/http/HttpConnection;


# instance fields
.field private final entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

.field private inbuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private maxHeaderCount:I

.field private maxLineLength:I

.field private metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private volatile open:Z

.field private outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

.field private requestWriter:Lorg/apache/http/io/HttpMessageWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@6
    .line 65
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@8
    .line 72
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    #@a
    .line 73
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@c
    .line 75
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@e
    .line 78
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    #@10
    .line 79
    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    #@12
    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    #@15
    .line 78
    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    #@18
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    #@1a
    .line 77
    return-void
.end method

.method private assertNotOpen()V
    .locals 2

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Connection is already open"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 139
    :cond_0
    return-void
.end method

.method private assertOpen()V
    .locals 2

    #@0
    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Connection is not open"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 145
    :cond_0
    return-void
.end method

.method private determineLength(Landroid/net/http/Headers;)J
    .locals 8
    .param p1, "headers"    # Landroid/net/http/Headers;

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 411
    invoke-virtual {p1}, Landroid/net/http/Headers;->getTransferEncoding()J

    #@5
    move-result-wide v2

    #@6
    .line 414
    .local v2, "transferEncoding":J
    const-wide/16 v4, 0x0

    #@8
    cmp-long v4, v2, v4

    #@a
    if-gez v4, :cond_0

    #@c
    .line 415
    return-wide v2

    #@d
    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    #@10
    move-result-wide v0

    #@11
    .line 418
    .local v0, "contentlen":J
    cmp-long v4, v0, v6

    #@13
    if-lez v4, :cond_1

    #@15
    .line 419
    return-wide v0

    #@16
    .line 421
    :cond_1
    return-wide v6
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .locals 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 91
    if-nez p1, :cond_0

    #@6
    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "Socket may not be null"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 94
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "HTTP parameters may not be null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 97
    :cond_1
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertNotOpen()V

    #@1d
    .line 98
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    #@20
    move-result v4

    #@21
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    #@24
    .line 99
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    #@27
    move-result v4

    #@28
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    #@2b
    .line 101
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    #@2e
    move-result v1

    #@2f
    .line 102
    .local v1, "linger":I
    if-ltz v1, :cond_3

    #@31
    .line 103
    if-lez v1, :cond_2

    #@33
    move v2, v3

    #@34
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    #@37
    .line 105
    :cond_3
    iput-object p1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@39
    .line 107
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    #@3c
    move-result v0

    #@3d
    .line 108
    .local v0, "buffersize":I
    new-instance v2, Lorg/apache/http/impl/io/SocketInputBuffer;

    #@3f
    invoke-direct {v2, p1, v0, p2}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    #@42
    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@44
    .line 109
    new-instance v2, Lorg/apache/http/impl/io/SocketOutputBuffer;

    #@46
    invoke-direct {v2, p1, v0, p2}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    #@49
    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@4b
    .line 112
    const-string/jumbo v2, "http.connection.max-header-count"

    #@4e
    .line 111
    invoke-interface {p2, v2, v6}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@51
    move-result v2

    #@52
    iput v2, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    #@54
    .line 114
    const-string/jumbo v2, "http.connection.max-line-length"

    #@57
    .line 113
    invoke-interface {p2, v2, v6}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@5a
    move-result v2

    #@5b
    iput v2, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    #@5d
    .line 116
    new-instance v2, Lorg/apache/http/impl/io/HttpRequestWriter;

    #@5f
    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@61
    invoke-direct {v2, v4, v5, p2}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    #@64
    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    #@66
    .line 118
    new-instance v2, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@68
    .line 119
    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@6a
    invoke-interface {v4}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    #@6d
    move-result-object v4

    #@6e
    .line 120
    iget-object v5, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@70
    invoke-interface {v5}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    #@73
    move-result-object v5

    #@74
    .line 118
    invoke-direct {v2, v4, v5}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    #@77
    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@79
    .line 122
    iput-boolean v3, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@7b
    .line 90
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget-boolean v2, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 223
    return-void

    #@5
    .line 225
    :cond_0
    const/4 v2, 0x0

    #@6
    iput-boolean v2, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@8
    .line 226
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->doFlush()V

    #@b
    .line 229
    :try_start_0
    iget-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@d
    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 233
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@12
    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    .line 239
    :goto_1
    iget-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@17
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    #@1a
    .line 221
    return-void

    #@1b
    .line 236
    :catch_0
    move-exception v1

    #@1c
    .local v1, "ignore":Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    #@1d
    .line 234
    .end local v1    # "ignore":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    #@1e
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_1

    #@1f
    .line 230
    .end local v0    # "ignore":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@20
    .restart local v0    # "ignore":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected doFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@2
    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    #@5
    .line 279
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@3
    .line 285
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->doFlush()V

    #@6
    .line 283
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 157
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 158
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 160
    :cond_0
    return-object v1
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 166
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 168
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@2
    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 173
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 174
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 176
    :cond_0
    return-object v1
.end method

.method public getRemotePort()I
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 182
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 184
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method public getSocketTimeout()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 202
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 205
    :catch_0
    move-exception v0

    #@d
    .line 206
    .local v0, "ignore":Ljava/net/SocketException;
    return v2

    #@e
    .line 209
    .end local v0    # "ignore":Ljava/net/SocketException;
    :cond_0
    return v2
.end method

.method public isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@a
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public isStale()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 442
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@4
    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-interface {v1, v2}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 445
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 446
    :catch_0
    move-exception v0

    #@d
    .line 447
    .local v0, "ex":Ljava/io/IOException;
    return v3
.end method

.method public parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;
    .locals 14
    .param p1, "headers"    # Landroid/net/http/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@3
    .line 300
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    #@5
    const/16 v10, 0x40

    #@7
    invoke-direct {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@a
    .line 302
    .local v1, "current":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v10, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@c
    invoke-interface {v10, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@f
    move-result v10

    #@10
    const/4 v11, -0x1

    #@11
    if-ne v10, v11, :cond_0

    #@13
    .line 303
    new-instance v10, Lorg/apache/http/NoHttpResponseException;

    #@15
    const-string/jumbo v11, "The target server failed to respond"

    #@18
    invoke-direct {v10, v11}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v10

    #@1c
    .line 307
    :cond_0
    sget-object v10, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    #@1e
    .line 308
    new-instance v11, Lorg/apache/http/message/ParserCursor;

    #@20
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@23
    move-result v12

    #@24
    const/4 v13, 0x0

    #@25
    invoke-direct {v11, v13, v12}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@28
    .line 307
    invoke-virtual {v10, v1, v11}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    #@2b
    move-result-object v9

    #@2c
    .line 311
    .local v9, "statusline":Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@2f
    move-result v8

    #@30
    .line 314
    .local v8, "statusCode":I
    const/4 v6, 0x0

    #@31
    .line 315
    .local v6, "previous":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v3, 0x0

    #@32
    .line 317
    .end local v1    # "current":Lorg/apache/http/util/CharArrayBuffer;
    .end local v6    # "previous":Lorg/apache/http/util/CharArrayBuffer;
    .local v3, "headerNumber":I
    :cond_1
    if-nez v1, :cond_5

    #@34
    .line 318
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    #@36
    const/16 v10, 0x40

    #@38
    invoke-direct {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@3b
    .line 323
    :goto_0
    iget-object v10, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@3d
    invoke-interface {v10, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@40
    move-result v4

    #@41
    .line 324
    .local v4, "l":I
    const/4 v10, -0x1

    #@42
    if-eq v4, v10, :cond_2

    #@44
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@47
    move-result v10

    #@48
    const/4 v11, 0x1

    #@49
    if-ge v10, v11, :cond_6

    #@4b
    .line 364
    :cond_2
    if-eqz v6, :cond_3

    #@4d
    .line 365
    invoke-virtual {p1, v6}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    #@50
    .line 368
    :cond_3
    const/16 v10, 0xc8

    #@52
    if-lt v8, v10, :cond_4

    #@54
    .line 369
    iget-object v10, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@56
    invoke-virtual {v10}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    #@59
    .line 371
    :cond_4
    return-object v9

    #@5a
    .line 321
    .end local v4    # "l":I
    :cond_5
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    #@5d
    goto :goto_0

    #@5e
    .line 331
    .restart local v4    # "l":I
    :cond_6
    const/4 v10, 0x0

    #@5f
    invoke-virtual {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@62
    move-result v2

    #@63
    .line 332
    .local v2, "first":C
    const/16 v10, 0x20

    #@65
    if-eq v2, v10, :cond_7

    #@67
    const/16 v10, 0x9

    #@69
    if-ne v2, v10, :cond_b

    #@6b
    :cond_7
    if-eqz v6, :cond_b

    #@6d
    .line 335
    const/4 v7, 0x0

    #@6e
    .line 336
    .local v7, "start":I
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@71
    move-result v5

    #@72
    .line 337
    .local v5, "length":I
    :goto_1
    if-ge v7, v5, :cond_8

    #@74
    .line 338
    invoke-virtual {v1, v7}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@77
    move-result v0

    #@78
    .line 339
    .local v0, "ch":C
    const/16 v10, 0x20

    #@7a
    if-eq v0, v10, :cond_9

    #@7c
    const/16 v10, 0x9

    #@7e
    if-eq v0, v10, :cond_9

    #@80
    .line 344
    .end local v0    # "ch":C
    :cond_8
    iget v10, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    #@82
    if-lez v10, :cond_a

    #@84
    .line 345
    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@87
    move-result v10

    #@88
    add-int/lit8 v10, v10, 0x1

    #@8a
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@8d
    move-result v11

    #@8e
    add-int/2addr v10, v11

    #@8f
    sub-int/2addr v10, v7

    #@90
    .line 346
    iget v11, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    #@92
    .line 345
    if-le v10, v11, :cond_a

    #@94
    .line 347
    new-instance v10, Ljava/io/IOException;

    #@96
    const-string/jumbo v11, "Maximum line length limit exceeded"

    #@99
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v10

    #@9d
    .line 342
    .restart local v0    # "ch":C
    :cond_9
    add-int/lit8 v7, v7, 0x1

    #@9f
    goto :goto_1

    #@a0
    .line 349
    .end local v0    # "ch":C
    :cond_a
    const/16 v10, 0x20

    #@a2
    invoke-virtual {v6, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@a5
    .line 350
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@a8
    move-result v10

    #@a9
    sub-int/2addr v10, v7

    #@aa
    invoke-virtual {v6, v1, v7, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    #@ad
    .line 359
    .end local v5    # "length":I
    .end local v7    # "start":I
    :goto_2
    iget v10, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    #@af
    if-lez v10, :cond_1

    #@b1
    iget v10, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    #@b3
    if-lt v3, v10, :cond_1

    #@b5
    .line 360
    new-instance v10, Ljava/io/IOException;

    #@b7
    const-string/jumbo v11, "Maximum header count exceeded"

    #@ba
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v10

    #@be
    .line 352
    :cond_b
    if-eqz v6, :cond_c

    #@c0
    .line 353
    invoke-virtual {p1, v6}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    #@c3
    .line 355
    :cond_c
    add-int/lit8 v3, v3, 0x1

    #@c5
    .line 356
    move-object v6, v1

    #@c6
    .line 357
    .local v6, "previous":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v1, 0x0

    #@c7
    .local v1, "current":Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_2
.end method

.method public receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;
    .locals 11
    .param p1, "headers"    # Landroid/net/http/Headers;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const-wide/16 v8, -0x1

    #@3
    .line 380
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@6
    .line 381
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    #@8
    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    #@b
    .line 383
    .local v2, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClientConnection;->determineLength(Landroid/net/http/Headers;)J

    #@e
    move-result-wide v4

    #@f
    .line 384
    .local v4, "len":J
    const-wide/16 v6, -0x2

    #@11
    cmp-long v3, v4, v6

    #@13
    if-nez v3, :cond_2

    #@15
    .line 385
    const/4 v3, 0x1

    #@16
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    #@19
    .line 386
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    #@1c
    .line 387
    new-instance v3, Lorg/apache/http/impl/io/ChunkedInputStream;

    #@1e
    iget-object v6, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@20
    invoke-direct {v3, v6}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    #@23
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    #@26
    .line 398
    :goto_0
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 399
    .local v1, "contentTypeHeader":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@2c
    .line 400
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    #@2f
    .line 402
    :cond_0
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentEncoding()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 403
    .local v0, "contentEncodingHeader":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@35
    .line 404
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    #@38
    .line 407
    :cond_1
    return-object v2

    #@39
    .line 388
    .end local v0    # "contentEncodingHeader":Ljava/lang/String;
    .end local v1    # "contentTypeHeader":Ljava/lang/String;
    :cond_2
    cmp-long v3, v4, v8

    #@3b
    if-nez v3, :cond_3

    #@3d
    .line 389
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    #@40
    .line 390
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    #@43
    .line 391
    new-instance v3, Lorg/apache/http/impl/io/IdentityInputStream;

    #@45
    iget-object v6, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@47
    invoke-direct {v3, v6}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    #@4a
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    #@4d
    goto :goto_0

    #@4e
    .line 393
    :cond_3
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    #@51
    .line 394
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    #@54
    .line 395
    new-instance v3, Lorg/apache/http/impl/io/ContentLengthInputStream;

    #@56
    iget-object v6, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@58
    invoke-direct {v3, v6, v4, v5}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    #@5b
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    #@5e
    goto :goto_0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    if-nez p1, :cond_0

    #@2
    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP request may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 269
    :cond_0
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@e
    .line 270
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@11
    move-result-object v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 271
    return-void

    #@15
    .line 273
    :cond_1
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    #@17
    .line 274
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@19
    .line 276
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@1c
    move-result-object v2

    #@1d
    .line 273
    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    #@20
    .line 265
    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    if-nez p1, :cond_0

    #@2
    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP request may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 253
    :cond_0
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@e
    .line 254
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    #@10
    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    #@13
    .line 255
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@15
    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    #@18
    .line 249
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    #@3
    .line 190
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@9
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 188
    :cond_0
    :goto_0
    return-void

    #@d
    .line 193
    :catch_0
    move-exception v0

    #@e
    .local v0, "ignore":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    #@3
    .line 215
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    #@5
    .line 216
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    #@7
    .line 217
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@a
    .line 213
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 128
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "["

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 129
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 130
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->getRemotePort()I

    #@20
    move-result v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    .line 134
    :goto_0
    const-string/jumbo v1, "]"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    .line 132
    :cond_0
    const-string/jumbo v1, "closed"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    goto :goto_0
.end method
