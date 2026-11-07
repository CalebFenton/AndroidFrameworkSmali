.class public abstract Ljavax/net/ssl/SSLSocket;
.super Ljava/net/Socket;
.source "SSLSocket.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 905
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 988
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
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

    .line 1019
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getEnableSessionCreation()Z
.end method

.method public abstract whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getEnabledProtocols()[Ljava/lang/String;
.end method

.method public whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1492
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 1187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getNeedClientAuth()Z
.end method

.method public whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 4

    .line 1386
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 1387
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 1390
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    goto :goto_27

    .line 1391
    :cond_1e
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1392
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    .line 1394
    :cond_27
    :goto_27
    return-object v0
.end method

.method public abstract whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getUseClientMode()Z
.end method

.method public abstract whitelist test-api getWantClientAuth()Z
.end method

.method public abstract whitelist test-api removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract whitelist test-api setEnableSessionCreation(Z)V
.end method

.method public abstract whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public whitelist test-api setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1558
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLSocket;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api setNeedClientAuth(Z)V
.end method

.method public whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 5
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .line 1424
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1426
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1428
    :cond_9
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 1429
    if-eqz v0, :cond_12

    .line 1430
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1432
    :cond_12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 1433
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    goto :goto_2b

    .line 1434
    :cond_1d
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1435
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    goto :goto_2b

    .line 1437
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 1439
    :goto_2b
    return-void
.end method

.method public abstract whitelist test-api setUseClientMode(Z)V
.end method

.method public abstract whitelist test-api setWantClientAuth(Z)V
.end method

.method public abstract whitelist test-api startHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
