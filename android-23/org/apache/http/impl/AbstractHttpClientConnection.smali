.class public abstract Lorg/apache/http/impl/AbstractHttpClientConnection;
.super Ljava/lang/Object;
.source "AbstractHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

.field private final entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

.field private inbuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

.field private requestWriter:Lorg/apache/http/io/HttpMessageWriter;

.field private responseParser:Lorg/apache/http/io/HttpMessageParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 77
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@6
    .line 78
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@8
    .line 79
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    #@a
    .line 80
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    #@c
    .line 81
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@e
    .line 87
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createEntitySerializer()Lorg/apache/http/impl/entity/EntitySerializer;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    #@14
    .line 88
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createEntityDeserializer()Lorg/apache/http/impl/entity/EntityDeserializer;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

    #@1a
    .line 85
    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected createEntityDeserializer()Lorg/apache/http/impl/entity/EntityDeserializer;
    .locals 2

    #@0
    .prologue
    .line 94
    new-instance v0, Lorg/apache/http/impl/entity/EntityDeserializer;

    #@2
    new-instance v1, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    #@4
    invoke-direct {v1}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntityDeserializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    #@a
    return-object v0
.end method

.method protected createEntitySerializer()Lorg/apache/http/impl/entity/EntitySerializer;
    .locals 2

    #@0
    .prologue
    .line 98
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    #@2
    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    #@4
    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    #@7
    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    #@a
    return-object v0
.end method

.method protected createHttpResponseFactory()Lorg/apache/http/HttpResponseFactory;
    .locals 1

    #@0
    .prologue
    .line 102
    new-instance v0, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    #@5
    return-object v0
.end method

.method protected createRequestWriter(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageWriter;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 117
    new-instance v0, Lorg/apache/http/impl/io/HttpRequestWriter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1, p2}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    #@6
    return-object v0
.end method

.method protected createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 110
    new-instance v0, Lorg/apache/http/impl/io/HttpResponseParser;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/io/HttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    #@6
    return-object v0
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
    .line 174
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@2
    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    #@5
    .line 173
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
    .line 178
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    #@3
    .line 179
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->doFlush()V

    #@6
    .line 177
    return-void
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@2
    return-object v0
.end method

.method protected init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 124
    if-nez p1, :cond_0

    #@2
    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Input session buffer may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 127
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Output session buffer may not be null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 130
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@18
    .line 131
    iput-object p2, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@1a
    .line 134
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createHttpResponseFactory()Lorg/apache/http/HttpResponseFactory;

    #@1d
    move-result-object v0

    #@1e
    .line 132
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    #@24
    .line 136
    invoke-virtual {p0, p2, p3}, Lorg/apache/http/impl/AbstractHttpClientConnection;->createRequestWriter(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageWriter;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    #@2a
    .line 138
    new-instance v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@2c
    .line 139
    invoke-interface {p1}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    #@2f
    move-result-object v1

    #@30
    .line 140
    invoke-interface {p2}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    #@33
    move-result-object v2

    #@34
    .line 138
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    #@37
    iput-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@39
    .line 123
    return-void
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    #@3
    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@5
    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isStale()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 203
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->isOpen()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 204
    return v3

    #@8
    .line 209
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@a
    instance-of v1, v1, Lorg/apache/http/impl/io/SocketInputBuffer;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 210
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@10
    check-cast v1, Lorg/apache/http/impl/io/SocketInputBuffer;

    #@12
    invoke-virtual {v1}, Lorg/apache/http/impl/io/SocketInputBuffer;->isStale()Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 213
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-interface {v1, v2}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 214
    const/4 v1, 0x0

    #@1e
    return v1

    #@1f
    .line 215
    :catch_0
    move-exception v0

    #@20
    .line 216
    .local v0, "ex":Ljava/io/IOException;
    return v3
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    if-nez p1, :cond_0

    #@2
    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "HTTP response may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 197
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    #@e
    .line 198
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entitydeserializer:Lorg/apache/http/impl/entity/EntityDeserializer;

    #@10
    iget-object v2, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    #@12
    invoke-virtual {v1, v2, p1}, Lorg/apache/http/impl/entity/EntityDeserializer;->deserialize(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;

    #@15
    move-result-object v0

    #@16
    .line 199
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    #@19
    .line 193
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    #@3
    .line 185
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->responseParser:Lorg/apache/http/io/HttpMessageParser;

    #@5
    invoke-interface {v1}, Lorg/apache/http/io/HttpMessageParser;->parse()Lorg/apache/http/HttpMessage;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/http/HttpResponse;

    #@b
    .line 186
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@12
    move-result v1

    #@13
    const/16 v2, 0xc8

    #@15
    if-lt v1, v2, :cond_0

    #@17
    .line 187
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@19
    invoke-virtual {v1}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    #@1c
    .line 189
    :cond_0
    return-object v0
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
    .line 160
    if-nez p1, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP request may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    #@e
    .line 164
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@11
    move-result-object v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 165
    return-void

    #@15
    .line 167
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    #@17
    .line 168
    iget-object v1, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    #@19
    .line 170
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@1c
    move-result-object v2

    #@1d
    .line 167
    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    #@20
    .line 159
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
    .line 150
    if-nez p1, :cond_0

    #@2
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP request may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->assertOpen()V

    #@e
    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    #@10
    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    #@13
    .line 155
    iget-object v0, p0, Lorg/apache/http/impl/AbstractHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    #@15
    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    #@18
    .line 149
    return-void
.end method
