.class public Lorg/apache/http/impl/SocketHttpServerConnection;
.super Lorg/apache/http/impl/AbstractHttpServerConnection;
.source "SocketHttpServerConnection.java"

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
    invoke-direct {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

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
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

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
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

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
    .line 99
    if-nez p1, :cond_0

    #@2
    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Socket may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 102
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "HTTP parameters may not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 105
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@18
    .line 107
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    #@1b
    move-result v0

    #@1c
    .line 110
    .local v0, "buffersize":I
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->createHttpDataReceiver(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    #@1f
    move-result-object v1

    #@20
    .line 111
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->createHttpDataTransmitter(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    #@23
    move-result-object v2

    #@24
    .line 109
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V

    #@27
    .line 114
    const/4 v1, 0x1

    #@28
    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    #@2a
    .line 98
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 192
    return-void

    #@5
    .line 194
    :cond_0
    const/4 v1, 0x0

    #@6
    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    #@8
    .line 195
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpServerConnection;->doFlush()V

    #@b
    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@d
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 201
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@12
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@15
    .line 204
    :goto_1
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@17
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    #@1a
    .line 190
    return-void

    #@1b
    .line 202
    :catch_0
    move-exception v0

    #@1c
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_1

    #@1d
    .line 198
    .end local v0    # "ignore":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@1e
    .restart local v0    # "ignore":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected createHttpDataReceiver(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
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

.method protected createHttpDataTransmitter(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
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
    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 127
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 129
    :cond_0
    return-object v1
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 137
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
    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 143
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 145
    :cond_0
    return-object v1
.end method

.method public getRemotePort()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 151
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@6
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 153
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 171
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@7
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 174
    :catch_0
    move-exception v0

    #@d
    .line 175
    .local v0, "ignore":Ljava/net/SocketException;
    return v2

    #@e
    .line 178
    .end local v0    # "ignore":Ljava/net/SocketException;
    :cond_0
    return v2
.end method

.method public isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    #@2
    return v0
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpServerConnection;->assertOpen()V

    #@3
    .line 159
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@9
    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 157
    :cond_0
    :goto_0
    return-void

    #@d
    .line 162
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
    .line 183
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    #@3
    .line 184
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    #@5
    .line 185
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    #@7
    .line 186
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@a
    .line 182
    :cond_0
    return-void
.end method
