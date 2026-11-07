.class public abstract Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.super Lcom/android/org/conscrypt/AbstractConscryptSocket;
.source "OpenSSLSocketImpl.java"


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>()V

    .line 38
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 51
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 46
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 57
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->close()V

    return-void
.end method

.method public final greylist-max-q test-api getAlpnSelectedProtocol()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toProtocolBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-r getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public greylist-max-o test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 88
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method public greylist-max-r getHostname()Ljava/lang/String;
    .registers 2

    .line 67
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .line 83
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getLocalPort()I
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final greylist test-api getNpnSelectedProtocol()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public greylist-max-r getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 101
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getSoWriteTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api isBound()Z
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api isClosed()Z
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api isConnected()Z
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api isInputShutdown()Z
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api isOutputShutdown()Z
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public final greylist-max-q test-api setAlpnProtocols([B)V
    .registers 3
    .param p1, "protocols"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    if-nez p1, :cond_5

    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public final greylist-max-q test-api setAlpnProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "alpnProtocols"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    if-nez p1, :cond_5

    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public abstract greylist-max-r setChannelIdEnabled(Z)V
.end method

.method public abstract greylist-max-r test-api setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method public greylist-max-r test-api setHandshakeTimeout(I)V
    .registers 2
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 108
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHandshakeTimeout(I)V

    .line 109
    return-void
.end method

.method public greylist-max-q test-api setHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 77
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public bridge synthetic whitelist test-api setKeepAlive(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setKeepAlive(Z)V

    return-void
.end method

.method public final greylist test-api setNpnProtocols([B)V
    .registers 2
    .param p1, "npnProtocols"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    return-void
.end method

.method public bridge synthetic whitelist test-api setPerformancePreferences(III)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setPerformancePreferences(III)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setReceiveBufferSize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setReuseAddress(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setSendBufferSize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setSendBufferSize(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setSoLinger(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setSoLinger(ZI)V

    return-void
.end method

.method public greylist-max-r test-api setSoWriteTimeout(I)V
    .registers 2
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setSoWriteTimeout(I)V

    .line 96
    return-void
.end method

.method public bridge synthetic whitelist test-api setTcpNoDelay(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setTrafficClass(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setTrafficClass(I)V

    return-void
.end method

.method public abstract greylist-max-q test-api setUseSessionTickets(Z)V
.end method

.method public bridge synthetic whitelist test-api shutdownInput()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->shutdownInput()V

    return-void
.end method

.method public bridge synthetic whitelist test-api shutdownOutput()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->shutdownOutput()V

    return-void
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
