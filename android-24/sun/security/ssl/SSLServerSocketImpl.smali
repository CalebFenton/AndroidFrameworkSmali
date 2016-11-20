.class final Lsun/security/ssl/SSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "SSLServerSocketImpl.java"


# instance fields
.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private checkedEnabled:Z

.field private doClientAuth:B

.field private enableSessionCreation:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field private identificationProtocol:Ljava/lang/String;

.field private sslContext:Lsun/security/ssl/SSLContextImpl;

.field private useServerMode:Z


# direct methods
.method constructor <init>(IILjava/net/InetAddress;Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 134
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@6
    .line 72
    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@8
    .line 75
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@a
    .line 78
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    #@c
    .line 81
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@e
    .line 84
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@10
    .line 87
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    #@12
    .line 90
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@14
    .line 93
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@16
    .line 135
    invoke-direct {p0, p4}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    #@19
    .line 132
    return-void
.end method

.method constructor <init>(IILsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 107
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    #@6
    .line 72
    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@8
    .line 75
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@a
    .line 78
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    #@c
    .line 81
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@e
    .line 84
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@10
    .line 87
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    #@12
    .line 90
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@14
    .line 93
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@16
    .line 108
    invoke-direct {p0, p3}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    #@19
    .line 105
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 143
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    #@6
    .line 72
    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@8
    .line 75
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@a
    .line 78
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    #@c
    .line 81
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@e
    .line 84
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@10
    .line 87
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    #@12
    .line 90
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@14
    .line 93
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@16
    .line 144
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    #@19
    .line 142
    return-void
.end method

.method private initServer(Lsun/security/ssl/SSLContextImpl;)V
    .locals 2
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 152
    if-nez p1, :cond_0

    #@3
    .line 153
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@5
    const-string/jumbo v1, "No Authentication context given"

    #@8
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 155
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@e
    .line 156
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@10
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@16
    .line 157
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@18
    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@1e
    .line 151
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@4
    iget-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@6
    .line 314
    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@8
    iget-byte v4, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@a
    iget-boolean v5, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    #@c
    .line 315
    iget-object v6, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@e
    iget-object v7, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@10
    iget-object v8, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@12
    .line 313
    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;ZLsun/security/ssl/CipherSuiteList;BZLsun/security/ssl/ProtocolList;Ljava/lang/String;Ljava/security/AlgorithmConstraints;)V

    #@15
    .line 317
    .local v0, "s":Lsun/security/ssl/SSLSocketImpl;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    #@18
    .line 318
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    #@1b
    .line 319
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    .line 280
    iget-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    #@2
    return v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 180
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@3
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 213
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@3
    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public getNeedClientAuth()Z
    .locals 2

    #@0
    .prologue
    .line 226
    iget-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 287
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@4
    move-result-object v0

    #@5
    .line 290
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    #@a
    .line 291
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    #@c
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 293
    return-object v0

    #@11
    .end local v0    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    #@0
    .prologue
    .line 263
    iget-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public getWantClientAuth()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 239
    iget-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 272
    iput-boolean p1, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    #@2
    .line 271
    return-void
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    #@3
    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    #@8
    .line 192
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 190
    return-void

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 209
    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    #@3
    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 208
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 221
    if-eqz p1, :cond_0

    #@2
    .line 222
    const/4 v0, 0x2

    #@3
    .line 221
    :goto_0
    iput-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@5
    .line 220
    return-void

    #@6
    .line 222
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 300
    :try_start_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLServerSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    #@4
    .line 303
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    #@a
    .line 304
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 299
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public setUseClientMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 254
    iget-boolean v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@4
    if-eqz p1, :cond_1

    #@6
    move v0, v1

    #@7
    :goto_0
    if-eq v3, v0, :cond_0

    #@9
    .line 255
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@b
    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@d
    invoke-virtual {v0, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    #@10
    move-result v0

    #@11
    .line 254
    if-eqz v0, :cond_0

    #@13
    .line 256
    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    #@15
    if-eqz p1, :cond_2

    #@17
    move v0, v1

    #@18
    :goto_1
    invoke-virtual {v3, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    #@1e
    .line 259
    :cond_0
    if-eqz p1, :cond_3

    #@20
    :goto_2
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    #@22
    .line 248
    return-void

    #@23
    :cond_1
    move v0, v2

    #@24
    .line 254
    goto :goto_0

    #@25
    :cond_2
    move v0, v2

    #@26
    .line 256
    goto :goto_1

    #@27
    :cond_3
    move v1, v2

    #@28
    .line 259
    goto :goto_2
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 234
    if-eqz p1, :cond_0

    #@2
    .line 235
    const/4 v0, 0x1

    #@3
    .line 234
    :goto_0
    iput-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    #@5
    .line 233
    return-void

    #@6
    .line 235
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[SSL: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "]"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
