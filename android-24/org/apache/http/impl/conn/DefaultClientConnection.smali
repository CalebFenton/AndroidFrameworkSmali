.class public Lorg/apache/http/impl/conn/DefaultClientConnection;
.super Lorg/apache/http/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lorg/apache/http/conn/OperatedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private connSecure:Z

.field private final headerLog:Lorg/apache/commons/logging/Log;

.field private final log:Lorg/apache/commons/logging/Log;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lorg/apache/http/HttpHost;

.field private final wireLog:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;-><init>()V

    #@3
    .line 74
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 75
    const-string/jumbo v0, "org.apache.http.headers"

    #@10
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@16
    .line 76
    const-string/jumbo v0, "org.apache.http.wire"

    #@19
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    #@1f
    .line 90
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "Connection closed"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@8
    .line 166
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->close()V

    #@b
    .line 164
    return-void
.end method

.method protected createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 208
    new-instance v0, Lorg/apache/http/impl/conn/DefaultResponseParser;

    #@2
    .line 209
    const/4 v1, 0x0

    #@3
    .line 208
    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/conn/DefaultResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    #@6
    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    #@6
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 180
    new-instance v1, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;

    #@e
    new-instance v2, Lorg/apache/http/impl/conn/Wire;

    #@10
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    #@12
    invoke-direct {v2, v3}, Lorg/apache/http/impl/conn/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    #@15
    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;)V

    #@18
    .end local v0    # "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    .local v1, "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    move-object v0, v1

    #@19
    .line 182
    .end local v1    # "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    .restart local v0    # "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    :cond_0
    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    #@6
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 196
    new-instance v1, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;

    #@e
    new-instance v2, Lorg/apache/http/impl/conn/Wire;

    #@10
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    #@12
    invoke-direct {v2, v3}, Lorg/apache/http/impl/conn/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    #@15
    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/impl/conn/Wire;)V

    #@18
    .end local v0    # "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    .local v1, "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    move-object v0, v1

    #@19
    .line 198
    .end local v1    # "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    .restart local v0    # "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    :cond_0
    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    #@2
    return v0
.end method

.method public openCompleted(ZLorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "secure"    # Z
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    #@3
    .line 129
    if-nez p2, :cond_0

    #@5
    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 131
    const-string/jumbo v1, "Parameters must not be null."

    #@a
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 133
    :cond_0
    iput-boolean p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    #@10
    .line 134
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    #@12
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    #@15
    .line 127
    return-void
.end method

.method public opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    #@3
    .line 115
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    #@5
    .line 116
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    #@7
    .line 119
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 120
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    #@e
    .line 122
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "Connection already shutdown"

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 113
    :cond_0
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    #@3
    move-result-object v2

    #@4
    .line 241
    .local v2, "response":Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@6
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 242
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "<< "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@2d
    .line 243
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    #@30
    move-result-object v1

    #@31
    .line 244
    .local v1, "headers":[Lorg/apache/http/Header;
    const/4 v3, 0x0

    #@32
    array-length v4, v1

    #@33
    :goto_0
    if-ge v3, v4, :cond_0

    #@35
    aget-object v0, v1, v3

    #@37
    .line 245
    .local v0, "header":Lorg/apache/http/Header;
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "<< "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@54
    .line 244
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_0

    #@57
    .line 248
    .end local v0    # "header":Lorg/apache/http/Header;
    .end local v1    # "headers":[Lorg/apache/http/Header;
    :cond_0
    return-object v2
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    invoke-super {p0, p1}, Lorg/apache/http/impl/SocketHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    #@3
    .line 255
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@5
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 256
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, ">> "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@2c
    .line 257
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    #@2f
    move-result-object v1

    #@30
    .line 258
    .local v1, "headers":[Lorg/apache/http/Header;
    const/4 v2, 0x0

    #@31
    array-length v3, v1

    #@32
    :goto_0
    if-ge v2, v3, :cond_0

    #@34
    aget-object v0, v1, v2

    #@36
    .line 259
    .local v0, "header":Lorg/apache/http/Header;
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, ">> "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@53
    .line 258
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_0

    #@56
    .line 253
    .end local v0    # "header":Lorg/apache/http/Header;
    .end local v1    # "headers":[Lorg/apache/http/Header;
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v2, "Connection shut down"

    #@5
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@8
    .line 153
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    #@b
    .line 155
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->shutdown()V

    #@e
    .line 156
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    #@10
    .line 157
    .local v0, "sock":Ljava/net/Socket;
    if-eqz v0, :cond_0

    #@12
    .line 158
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@15
    .line 151
    :cond_0
    return-void
.end method

.method public update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "secure"    # Z
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertOpen()V

    #@3
    .line 219
    if-nez p2, :cond_0

    #@5
    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 221
    const-string/jumbo v1, "Target host must not be null."

    #@a
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 223
    :cond_0
    if-nez p4, :cond_1

    #@10
    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 225
    const-string/jumbo v1, "Parameters must not be null."

    #@15
    .line 224
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 228
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    .line 229
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    #@1d
    .line 230
    invoke-virtual {p0, p1, p4}, Lorg/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    #@20
    .line 232
    :cond_2
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    #@22
    .line 233
    iput-boolean p3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    #@24
    .line 216
    return-void
.end method
