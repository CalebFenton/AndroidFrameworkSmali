.class public Lorg/apache/http/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

.field private handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

.field private params:Lorg/apache/http/params/HttpParams;

.field private processor:Lorg/apache/http/protocol/HttpProcessor;

.field private responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 1
    .param p1, "proc"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p2, "connStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 69
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@6
    .line 70
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    #@8
    .line 71
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    #@a
    .line 72
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    #@c
    .line 73
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@e
    .line 74
    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    #@10
    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpService;->setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V

    #@13
    .line 89
    invoke-virtual {p0, p2}, Lorg/apache/http/protocol/HttpService;->setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    #@16
    .line 90
    invoke-virtual {p0, p3}, Lorg/apache/http/protocol/HttpService;->setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V

    #@19
    .line 86
    return-void
.end method


# virtual methods
.method protected doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    const/4 v0, 0x0

    #@1
    .line 243
    .local v0, "handler":Lorg/apache/http/protocol/HttpRequestHandler;
    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 244
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 245
    .local v1, "requestURI":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    #@f
    invoke-interface {v2, v1}, Lorg/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;

    #@12
    move-result-object v0

    #@13
    .line 247
    .end local v0    # "handler":Lorg/apache/http/protocol/HttpRequestHandler;
    .end local v1    # "requestURI":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    #@15
    .line 248
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    #@18
    .line 241
    :goto_0
    return-void

    #@19
    .line 250
    :cond_1
    const/16 v2, 0x1f5

    #@1b
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    #@1e
    goto :goto_0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@2
    return-object v0
.end method

.method protected handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "ex"    # Lorg/apache/http/HttpException;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    #@0
    .prologue
    .line 223
    instance-of v2, p1, Lorg/apache/http/MethodNotSupportedException;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 224
    const/16 v2, 0x1f5

    #@6
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    #@9
    .line 232
    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-static {v2}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@10
    move-result-object v1

    #@11
    .line 233
    .local v1, "msg":[B
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    #@13
    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    #@16
    .line 234
    .local v0, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string/jumbo v2, "text/plain; charset=US-ASCII"

    #@19
    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    #@1c
    .line 235
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    #@1f
    .line 222
    return-void

    #@20
    .line 225
    .end local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v1    # "msg":[B
    :cond_0
    instance-of v2, p1, Lorg/apache/http/UnsupportedHttpVersionException;

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 226
    const/16 v2, 0x1f9

    #@26
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    #@29
    goto :goto_0

    #@2a
    .line 227
    :cond_1
    instance-of v2, p1, Lorg/apache/http/ProtocolException;

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 228
    const/16 v2, 0x190

    #@30
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    #@33
    goto :goto_0

    #@34
    .line 230
    :cond_2
    const/16 v2, 0x1f4

    #@36
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    #@39
    goto :goto_0
.end method

.method public handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11
    .param p1, "conn"    # Lorg/apache/http/HttpServerConnection;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x1f4

    #@2
    const/16 v9, 0xc8

    #@4
    .line 134
    const-string/jumbo v6, "http.connection"

    #@7
    invoke-interface {p2, v6, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@a
    .line 136
    const/4 v4, 0x0

    #@b
    .line 140
    .local v4, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->receiveRequestHeader()Lorg/apache/http/HttpRequest;

    #@e
    move-result-object v3

    #@f
    .line 142
    .local v3, "request":Lorg/apache/http/HttpRequest;
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    #@11
    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@14
    move-result-object v7

    #@15
    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@17
    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@1a
    .line 141
    invoke-interface {v3, v6}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@1d
    .line 145
    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@24
    move-result-object v5

    #@25
    .line 146
    .local v5, "ver":Lorg/apache/http/ProtocolVersion;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@27
    invoke-virtual {v5, v6}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_0

    #@2d
    .line 148
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@2f
    .line 151
    :cond_0
    instance-of v6, v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@31
    if-eqz v6, :cond_2

    #@33
    .line 153
    move-object v0, v3

    #@34
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@36
    move-object v6, v0

    #@37
    invoke-interface {v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_6

    #@3d
    .line 154
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@3f
    .line 155
    const/16 v7, 0x64

    #@41
    .line 154
    invoke-interface {v6, v5, v7, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@44
    move-result-object v4

    #@45
    .line 157
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    #@47
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    #@4a
    move-result-object v7

    #@4b
    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@4d
    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@50
    .line 156
    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@53
    .line 159
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    #@55
    if-eqz v6, :cond_1

    #@57
    .line 161
    :try_start_1
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    #@59
    invoke-interface {v6, v3, v4, p2}, Lorg/apache/http/protocol/HttpExpectationVerifier;->verify(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    .line 170
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@5f
    move-result-object v6

    #@60
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@63
    move-result v6

    #@64
    if-ge v6, v9, :cond_2

    #@66
    .line 173
    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    #@69
    .line 174
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    #@6c
    .line 175
    const/4 v4, 0x0

    #@6d
    .line 176
    .local v4, "response":Lorg/apache/http/HttpResponse;
    move-object v0, v3

    #@6e
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@70
    move-object v6, v0

    #@71
    invoke-interface {p1, v6}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    #@74
    .line 183
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    #@76
    .line 184
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@78
    const/16 v7, 0xc8

    #@7a
    invoke-interface {v6, v5, v7, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@7d
    move-result-object v4

    #@7e
    .line 186
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    #@80
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    #@83
    move-result-object v7

    #@84
    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@86
    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@89
    .line 185
    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@8c
    .line 188
    const-string/jumbo v6, "http.request"

    #@8f
    invoke-interface {p2, v6, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@92
    .line 189
    const-string/jumbo v6, "http.response"

    #@95
    invoke-interface {p2, v6, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@98
    .line 191
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    #@9a
    invoke-interface {v6, v3, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    #@9d
    .line 192
    invoke-virtual {p0, v3, v4, p2}, Lorg/apache/http/protocol/HttpService;->doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    #@a0
    .line 196
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    instance-of v6, v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@a2
    if-eqz v6, :cond_4

    #@a4
    .line 197
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@a6
    .end local v3    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@a9
    move-result-object v1

    #@aa
    .line 198
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_4

    #@ac
    .line 199
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    #@af
    .line 212
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    #@b1
    invoke-interface {v6, v4, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    #@b4
    .line 213
    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    #@b7
    .line 214
    invoke-interface {p1, v4}, Lorg/apache/http/HttpServerConnection;->sendResponseEntity(Lorg/apache/http/HttpResponse;)V

    #@ba
    .line 215
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    #@bd
    .line 217
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    #@bf
    invoke-interface {v6, v4, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    #@c2
    move-result v6

    #@c3
    if-nez v6, :cond_5

    #@c5
    .line 218
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->close()V

    #@c8
    .line 132
    :cond_5
    return-void

    #@c9
    .line 162
    .restart local v3    # "request":Lorg/apache/http/HttpRequest;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :catch_0
    move-exception v2

    #@ca
    .line 163
    .local v2, "ex":Lorg/apache/http/HttpException;
    :try_start_3
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@cc
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@ce
    .line 164
    const/16 v8, 0x1f4

    #@d0
    .line 163
    invoke-interface {v6, v7, v8, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@d3
    move-result-object v4

    #@d4
    .line 166
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    #@d6
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    #@d9
    move-result-object v7

    #@da
    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@dc
    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@df
    .line 165
    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@e2
    .line 167
    invoke-virtual {p0, v2, v4}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    #@e5
    goto/16 :goto_0

    #@e7
    .line 203
    .end local v2    # "ex":Lorg/apache/http/HttpException;
    .end local v3    # "request":Lorg/apache/http/HttpRequest;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :catch_1
    move-exception v2

    #@e8
    .line 204
    .restart local v2    # "ex":Lorg/apache/http/HttpException;
    iget-object v6, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@ea
    .line 205
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@ec
    .line 204
    invoke-interface {v6, v7, v10, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    #@ef
    move-result-object v4

    #@f0
    .line 208
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    #@f2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    #@f5
    move-result-object v7

    #@f6
    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@f8
    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@fb
    .line 207
    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    #@fe
    .line 209
    invoke-virtual {p0, v2, v4}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V

    #@101
    goto :goto_2

    #@102
    .line 179
    .end local v2    # "ex":Lorg/apache/http/HttpException;
    .restart local v3    # "request":Lorg/apache/http/HttpRequest;
    .local v4, "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "ver":Lorg/apache/http/ProtocolVersion;
    :cond_6
    :try_start_4
    move-object v0, v3

    #@103
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #@105
    move-object v6, v0

    #@106
    invoke-interface {p1, v6}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    #@109
    goto/16 :goto_1
.end method

.method public setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .locals 2
    .param p1, "connStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;

    #@0
    .prologue
    .line 101
    if-nez p1, :cond_0

    #@2
    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Connection reuse strategy may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 104
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    #@d
    .line 100
    return-void
.end method

.method public setExpectationVerifier(Lorg/apache/http/protocol/HttpExpectationVerifier;)V
    .locals 0
    .param p1, "expectationVerifier"    # Lorg/apache/http/protocol/HttpExpectationVerifier;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    #@2
    .line 118
    return-void
.end method

.method public setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0
    .param p1, "handlerResolver"    # Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    #@0
    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    #@2
    .line 114
    return-void
.end method

.method public setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V
    .locals 2
    .param p1, "processor"    # Lorg/apache/http/protocol/HttpProcessor;

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP processor may not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    #@d
    .line 93
    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    #@2
    .line 126
    return-void
.end method

.method public setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V
    .locals 2
    .param p1, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    #@0
    .prologue
    .line 108
    if-nez p1, :cond_0

    #@2
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Response factory may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 111
    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    #@d
    .line 107
    return-void
.end method
