.class public Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;
.super Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.source "OpenSSLSocketImplWrapper.java"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    #@3
    .line 36
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 37
    new-instance v0, Ljava/net/SocketException;

    #@b
    const-string/jumbo v1, "Socket is not connected."

    #@e
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 39
    :cond_0
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@14
    .line 34
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "sockaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Underlying socket is already connected."

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "sockaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Underlying socket is already connected."

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "sockaddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Underlying socket is already connected."

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    #@5
    .line 99
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    #@5
    .line 120
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    #@5
    .line 94
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    #@5
    .line 115
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    #@5
    .line 84
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    #@5
    .line 111
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoTimeout(I)V

    #@8
    .line 109
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    #@5
    .line 89
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    #@5
    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SSL socket over "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->socket:Ljava/net/Socket;

    #@e
    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
