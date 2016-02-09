.class public Lorg/apache/http/impl/SocketHttpClientConnection;
.super Lorg/apache/http/impl/AbstractHttpClientConnection;
.source "SocketHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpInetConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile open:Z

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@6
    .line 68
    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .locals 2

    #@0
    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Connection is already open"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 72
    :cond_0
    return-void
.end method

.method protected assertOpen()V
    .locals 2

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Connection is not open"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 78
    :cond_0
    return-void
.end method

.method protected bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    if-nez p1, :cond_0

    #@2
    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Socket may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 104
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "HTTP parameters may not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 107
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@18
    .line 109
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    #@1b
    move-result v0

    #@1c
    .line 112
    .local v0, "buffersize":I
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    #@1f
    move-result-object v1

    #@20
    .line 113
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    #@23
    move-result-object v2

    #@24
    .line 111
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V

    #@27
    .line 116
    const/4 v1, 0x1

    #@28
    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@2a
    .line 100
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
    .line 193
    iget-boolean v2, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 194
    return-void

    #@5
    .line 196
    :cond_0
    const/4 v2, 0x0

    #@6
    iput-boolean v2, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@8
    .line 197
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->doFlush()V

    #@b
    .line 200
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@d
    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 204
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@12
    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    .line 210
    :goto_1
    iget-object v2, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@17
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    #@1a
    .line 192
    return-void

    #@1b
    .line 207
    :catch_0
    move-exception v1

    #@1c
    .local v1, "ignore":Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    #@1d
    .line 205
    .end local v1    # "ignore":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    #@1e
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_1

    #@1f
    .line 201
    .end local v0    # "ignore":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@20
    .restart local v0    # "ignore":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 1
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
    .line 88
    new-instance v0, Lorg/apache/http/impl/io/SocketInputBuffer;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    #@5
    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 1
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
    .line 95
    new-instance v0, Lorg/apache/http/impl/io/SocketOutputBuffer;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    #@5
    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 129
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 131
    :cond_0
    return-object v1
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 139
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 144
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 147
    :cond_0
    return-object v1
.end method

.method public getRemotePort()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 153
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 155
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 173
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 176
    :catch_0
    move-exception v0

    #@d
    .line 177
    .local v0, "ignore":Ljava/net/SocketException;
    return v2

    #@e
    .line 180
    .end local v0    # "ignore":Ljava/net/SocketException;
    :cond_0
    return v2
.end method

.method public isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@2
    return v0
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->assertOpen()V

    #@3
    .line 161
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@9
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 159
    :cond_0
    :goto_0
    return-void

    #@d
    .line 164
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
    .line 185
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    #@3
    .line 186
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    #@5
    .line 187
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    #@7
    .line 188
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@a
    .line 184
    :cond_0
    return-void
.end method
