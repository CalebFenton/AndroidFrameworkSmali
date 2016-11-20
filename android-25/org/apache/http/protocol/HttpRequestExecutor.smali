.class public Lorg/apache/http/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    return-void
.end method


# virtual methods
.method protected canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    const-string/jumbo v2, "HEAD"

    #@4
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 88
    return v1

    #@13
    .line 90
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@1a
    move-result v0

    #@1b
    .line 91
    .local v0, "status":I
    const/16 v2, 0xc8

    #@1d
    if-lt v0, v2, :cond_1

    #@1f
    .line 92
    const/16 v2, 0xcc

    #@21
    if-eq v0, v2, :cond_1

    #@23
    .line 93
    const/16 v2, 0x130

    #@25
    if-eq v0, v2, :cond_1

    #@27
    .line 94
    const/16 v2, 0xcd

    #@29
    if-eq v0, v2, :cond_1

    #@2b
    const/4 v1, 0x1

    #@2c
    .line 91
    :cond_1
    return v1
.end method

.method protected doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    if-nez p1, :cond_0

    #@2
    .line 270
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "HTTP request may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 272
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 273
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "HTTP connection may not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 275
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v3, "HTTP context may not be null"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 279
    :cond_2
    const/4 v0, 0x0

    #@22
    .line 280
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    #@23
    .line 282
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    .local v1, "statuscode":I
    :goto_0
    if-eqz v0, :cond_3

    #@25
    const/16 v2, 0xc8

    #@27
    if-ge v1, v2, :cond_5

    #@29
    .line 284
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    #@2c
    move-result-object v0

    #@2d
    .line 285
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_4

    #@33
    .line 286
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    #@36
    .line 288
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@3d
    move-result v1

    #@3e
    goto :goto_0

    #@3f
    .line 292
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    return-object v0
.end method

.method protected doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    if-nez p1, :cond_0

    #@2
    .line 194
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "HTTP request may not be null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 196
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 197
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v6, "HTTP connection may not be null"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 199
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 200
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v6, "HTTP context may not be null"

    #@1d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 203
    :cond_2
    const/4 v0, 0x0

    #@22
    .line 204
    .local v0, "response":Lorg/apache/http/HttpResponse;
    const-string/jumbo v5, "http.request_sent"

    #@25
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@27
    invoke-interface {p3, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@2a
    .line 206
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    #@2d
    .line 207
    instance-of v5, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@2f
    if-eqz v5, :cond_4

    #@31
    .line 211
    const/4 v1, 0x1

    #@32
    .line 213
    .local v1, "sendentity":Z
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@35
    move-result-object v5

    #@36
    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@39
    move-result-object v4

    #@3a
    .local v4, "ver":Lorg/apache/http/ProtocolVersion;
    move-object v5, p1

    #@3b
    .line 214
    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@3d
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_3

    #@43
    .line 215
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@45
    invoke-virtual {v4, v5}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_5

    #@4b
    .line 241
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    #@4d
    .line 242
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@4f
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p2, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@52
    .line 245
    .end local v1    # "sendentity":Z
    .end local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    #@55
    .line 246
    const-string/jumbo v5, "http.request_sent"

    #@58
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@5a
    invoke-interface {p3, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@5d
    .line 247
    return-object v0

    #@5e
    .line 217
    .restart local v0    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "sendentity":Z
    .restart local v4    # "ver":Lorg/apache/http/ProtocolVersion;
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_5
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->flush()V

    #@61
    .line 220
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@64
    move-result-object v5

    #@65
    .line 221
    const-string/jumbo v6, "http.protocol.wait-for-continue"

    #@68
    const/16 v7, 0x7d0

    #@6a
    .line 220
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@6d
    move-result v3

    #@6e
    .line 223
    .local v3, "tms":I
    invoke-interface {p2, v3}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    #@71
    move-result v5

    #@72
    if-eqz v5, :cond_3

    #@74
    .line 224
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    #@77
    move-result-object v0

    #@78
    .line 225
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    #@7b
    move-result v5

    #@7c
    if-eqz v5, :cond_6

    #@7e
    .line 226
    invoke-interface {p2, v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    #@81
    .line 228
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@84
    move-result-object v5

    #@85
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@88
    move-result v2

    #@89
    .line 229
    .local v2, "status":I
    const/16 v5, 0xc8

    #@8b
    if-ge v2, v5, :cond_8

    #@8d
    .line 230
    const/16 v5, 0x64

    #@8f
    if-eq v2, v5, :cond_7

    #@91
    .line 231
    new-instance v5, Ljava/net/ProtocolException;

    #@93
    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v7, "Unexpected response: "

    #@9b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v6

    #@ab
    .line 231
    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v5

    #@af
    .line 235
    :cond_7
    const/4 v0, 0x0

    #@b0
    .local v0, "response":Lorg/apache/http/HttpResponse;
    goto :goto_0

    #@b1
    .line 237
    .local v0, "response":Lorg/apache/http/HttpResponse;
    :cond_8
    const/4 v1, 0x0

    #@b2
    goto :goto_0
.end method

.method public execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "conn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    if-nez p1, :cond_0

    #@2
    .line 114
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "HTTP request may not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 116
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 117
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "Client connection may not be null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 119
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v5, "HTTP context may not be null"

    #@1d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4

    #@21
    .line 124
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@24
    move-result-object v3

    #@25
    .line 125
    .local v3, "response":Lorg/apache/http/HttpResponse;
    if-nez v3, :cond_3

    #@27
    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->doReceiveResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object v3

    #@2b
    .line 128
    :cond_3
    return-object v3

    #@2c
    .line 135
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    #@2d
    .line 136
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    #@30
    .line 137
    throw v1

    #@31
    .line 132
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    #@32
    .line 133
    .local v2, "ex":Lorg/apache/http/HttpException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    #@35
    .line 134
    throw v2

    #@36
    .line 129
    .end local v2    # "ex":Lorg/apache/http/HttpException;
    :catch_2
    move-exception v0

    #@37
    .line 130
    .local v0, "ex":Ljava/io/IOException;
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    #@3a
    .line 131
    throw v0
.end method

.method public postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    if-nez p1, :cond_0

    #@2
    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP response may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 318
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "HTTP processor may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 321
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "HTTP context may not be null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 324
    :cond_2
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    #@24
    .line 314
    return-void
.end method

.method public preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    if-nez p1, :cond_0

    #@2
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP request may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 159
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "HTTP processor may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 162
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "HTTP context may not be null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 165
    :cond_2
    invoke-interface {p2, p1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    #@24
    .line 155
    return-void
.end method
