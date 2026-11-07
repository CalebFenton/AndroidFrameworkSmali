.class abstract Lcom/android/org/conscrypt/AbstractConscryptSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "AbstractConscryptSocket.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist autoClose:Z

.field private final blacklist listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist peerHostname:Ljava/lang/String;

.field private final blacklist peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

.field private final blacklist peerPort:I

.field private blacklist readTimeoutMilliseconds:I

.field final blacklist socket:Ljava/net/Socket;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 90
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 94
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 98
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 99
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 100
    iput p2, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 102
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 115
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 116
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 117
    iput p2, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 119
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 106
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 110
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 124
    iput-object p0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 128
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket$1;-><init>(Lcom/android/org/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 132
    const-string v0, "socket"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 133
    iput-object p2, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 134
    iput p3, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 135
    iput-boolean p4, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    .line 136
    return-void
.end method

.method private blacklist isDelegating()Z
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist test-api addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 238
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Provided listener is null"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_f

    .line 165
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 167
    :goto_f
    return-void
.end method

.method final blacklist checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 586
    return-void

    .line 584
    :cond_7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 173
    iget-boolean v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->autoClose:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_21

    .line 177
    :cond_18
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 178
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 181
    :cond_21
    :goto_21
    return-void
.end method

.method public final whitelist test-api connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 141
    return-void
.end method

.method public final whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .registers 4
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-nez v0, :cond_11

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_11

    .line 149
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 150
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 153
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 154
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_20

    .line 156
    :cond_1d
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 158
    :goto_20
    return-void
.end method

.method abstract blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract blacklist getActiveSession()Ljavax/net/ssl/SSLSession;
.end method

.method abstract greylist-max-q getAlpnSelectedProtocol()[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist test-api getApplicationProtocol()Ljava/lang/String;
.end method

.method abstract greylist-max-q getApplicationProtocols()[Ljava/lang/String;
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-r getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public greylist-max-o test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 252
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 255
    :cond_d
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method greylist-max-r getHostname()Ljava/lang/String;
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-r getHostnameOrIP()Ljava/lang/String;
    .registers 3

    .line 545
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 546
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-object v0

    .line 549
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 550
    .local v0, "peerAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_12

    .line 551
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 554
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 185
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 188
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 304
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 399
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0

    .line 401
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 193
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 196
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLocalPort()I
    .registers 2

    .line 201
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 204
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 217
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 218
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 220
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 310
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 312
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPort()I
    .registers 3

    .line 225
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 226
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 229
    :cond_d
    iget v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 231
    iget v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerPort:I

    return v0

    .line 233
    :cond_15
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 382
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0

    .line 384
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 209
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 210
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 212
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 432
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0

    .line 435
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 363
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0

    .line 365
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0

    .line 346
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0

    .line 275
    :cond_d
    iget v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    return v0
.end method

.method greylist-max-r getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0

    .line 329
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method abstract greylist-max-o getTlsUnique()[B
.end method

.method public whitelist test-api getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 416
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0

    .line 418
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 466
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 467
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0

    .line 469
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 2

    .line 474
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 475
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0

    .line 477
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isConnected()Z
    .registers 2

    .line 458
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 459
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0

    .line 461
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isInputShutdown()Z
    .registers 2

    .line 482
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 483
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0

    .line 485
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isOutputShutdown()Z
    .registers 2

    .line 490
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 491
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0

    .line 493
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method final blacklist notifyHandshakeCompletedListeners()V
    .registers 8

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 602
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/HandshakeCompletedListener;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 604
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getActiveSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 605
    .local v1, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 607
    .local v3, "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_26
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 616
    goto :goto_36

    .line 608
    :catch_2a
    move-exception v4

    .line 614
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 615
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 617
    .end local v3    # "listener":Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "thread":Ljava/lang/Thread;
    :goto_36
    goto :goto_1a

    .line 619
    .end local v1    # "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    :cond_37
    return-void
.end method

.method final greylist-max-o peerInfoProvider()Lcom/android/org/conscrypt/PeerInfoProvider;
    .registers 2

    .line 589
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    return-object v0
.end method

.method public whitelist test-api removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .line 244
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Provided listener is null"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 248
    return-void

    .line 246
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract greylist-max-q setAlpnProtocols([B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract greylist-max-q setAlpnProtocols([Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract greylist-max-o setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
.end method

.method abstract blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
.end method

.method abstract greylist-max-q setApplicationProtocols([Ljava/lang/String;)V
.end method

.method abstract greylist-max-r setChannelIdEnabled(Z)V
.end method

.method abstract greylist-max-r setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method greylist-max-r setHandshakeTimeout(I)V
    .registers 4
    .param p1, "handshakeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method setHandshakeTimeout() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-q setHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 535
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 536
    return-void
.end method

.method public whitelist test-api setKeepAlive(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 390
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    goto :goto_f

    .line 392
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    .line 394
    :goto_f
    return-void
.end method

.method public final whitelist test-api setOOBInline(Z)V
    .registers 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method setOOBInline() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setPerformancePreferences(III)V
    .registers 5
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 498
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 499
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    goto :goto_f

    .line 501
    :cond_c
    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    .line 503
    :goto_f
    return-void
.end method

.method public whitelist test-api setReceiveBufferSize(I)V
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 372
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_f

    .line 374
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    .line 376
    :goto_f
    return-void
.end method

.method public whitelist test-api setReuseAddress(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 424
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    goto :goto_f

    .line 426
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    .line 428
    :goto_f
    return-void
.end method

.method public whitelist test-api setSendBufferSize(I)V
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 353
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto :goto_f

    .line 355
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    .line 357
    :goto_f
    return-void
.end method

.method public whitelist test-api setSoLinger(ZI)V
    .registers 4
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 335
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_f

    .line 337
    :cond_c
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    .line 339
    :goto_f
    return-void
.end method

.method public final whitelist test-api setSoTimeout(I)V
    .registers 3
    .param p1, "readTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_11

    .line 264
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 265
    iput p1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    .line 267
    :goto_11
    return-void
.end method

.method greylist-max-r setSoWriteTimeout(I)V
    .registers 4
    .param p1, "writeTimeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method setSoWriteTimeout() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTcpNoDelay(Z)V
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 318
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    goto :goto_f

    .line 320
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    .line 322
    :goto_f
    return-void
.end method

.method public whitelist test-api setTrafficClass(I)V
    .registers 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 407
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    goto :goto_f

    .line 409
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    .line 411
    :goto_f
    return-void
.end method

.method abstract greylist-max-q setUseSessionTickets(Z)V
.end method

.method public whitelist test-api shutdownInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 441
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_f

    .line 443
    :cond_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    .line 445
    :goto_f
    return-void
.end method

.method public whitelist test-api shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 450
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    goto :goto_f

    .line 452
    :cond_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    .line 454
    :goto_f
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSL socket over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 509
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 511
    :cond_17
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
