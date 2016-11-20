.class abstract Lsun/security/ssl/BaseSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "BaseSSLSocketImpl.java"


# static fields
.field private static final PROP_NAME:Ljava/lang/String; = "com.sun.net.ssl.requireCloseNotify"

.field static final requireCloseNotify:Z


# instance fields
.field final self:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "com.sun.net.ssl.requireCloseNotify"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 85
    sput-boolean v0, Lsun/security/ssl/BaseSSLSocketImpl;->requireCloseNotify:Z

    #@a
    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    #@3
    .line 62
    iput-object p0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@5
    .line 60
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@5
    .line 65
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 114
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    #@7
    .line 109
    return-void

    #@8
    .line 117
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@a
    .line 118
    const-string/jumbo v1, "Underlying socket should already be connected"

    #@d
    .line 117
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@4
    .line 159
    return-void
.end method

.method protected final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 265
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@6
    .line 247
    :goto_0
    return-void

    #@7
    .line 250
    :catch_0
    move-exception v0

    #@8
    .line 252
    .local v0, "e1":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    if-ne v2, p0, :cond_0

    #@c
    .line 253
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 265
    :cond_0
    :goto_1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@12
    goto :goto_0

    #@13
    .line 258
    .end local v0    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@14
    .line 265
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    #@17
    .line 258
    throw v2

    #@18
    .line 255
    .restart local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@19
    .local v1, "e2":Ljava/io/IOException;
    goto :goto_1
.end method

.method public final getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 99
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 101
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 278
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 280
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 472
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 474
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 292
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 294
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 314
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 316
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 128
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 130
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final getPort()I
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 303
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 305
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 448
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 450
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 140
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 142
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public final getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 522
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 524
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 432
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 434
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 370
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 372
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 416
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoTimeout()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 418
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 345
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 347
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 498
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 500
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final isBound()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 181
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 183
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 169
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 171
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 222
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 224
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 234
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 236
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@b
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "This method is not supported by SSLSockets"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 460
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    #@7
    .line 458
    :goto_0
    return-void

    #@8
    .line 462
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    #@d
    goto :goto_0
.end method

.method public final setOOBInline(Z)V
    .locals 2
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    new-instance v0, Ljava/net/SocketException;

    #@2
    const-string/jumbo v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    #@5
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 536
    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    #@7
    .line 534
    :goto_0
    return-void

    #@8
    .line 539
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    #@d
    goto :goto_0
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 440
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    #@7
    .line 438
    :goto_0
    return-void

    #@8
    .line 442
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    #@d
    goto :goto_0
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 510
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    #@7
    .line 508
    :goto_0
    return-void

    #@8
    .line 512
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    #@d
    goto :goto_0
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 424
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    #@7
    .line 422
    :goto_0
    return-void

    #@8
    .line 426
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    #@d
    goto :goto_0
.end method

.method public final setSoLinger(ZI)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 358
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    #@7
    .line 356
    :goto_0
    return-void

    #@8
    .line 360
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    #@d
    goto :goto_0
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 330
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    #@7
    .line 328
    :goto_0
    return-void

    #@8
    .line 332
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    #@d
    goto :goto_0
.end method

.method public final setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 485
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    #@7
    .line 483
    :goto_0
    return-void

    #@8
    .line 487
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    #@a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    #@d
    goto :goto_0
.end method

.method public final shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "The method shutdownInput() is not supported in SSLSocket"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "The method shutdownOutput() is not supported in SSLSocket"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
