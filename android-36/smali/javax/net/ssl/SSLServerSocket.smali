.class public abstract Ljavax/net/ssl/SSLServerSocket;
.super Ljava/net/ServerSocket;
.source "SSLServerSocket.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    return-void
.end method

.method protected constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-void
.end method

.method protected constructor whitelist test-api <init>(II)V
    .registers 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-void
.end method

.method protected constructor whitelist test-api <init>(IILjava/net/InetAddress;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getEnableSessionCreation()Z
.end method

.method public abstract whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNeedClientAuth()Z
.end method

.method public whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 4

    .line 485
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 487
    .local v0, "parameters":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getNeedClientAuth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 490
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    goto :goto_27

    .line 491
    :cond_1e
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 492
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    .line 495
    :cond_27
    :goto_27
    return-object v0
.end method

.method public abstract whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getUseClientMode()Z
.end method

.method public abstract whitelist test-api getWantClientAuth()Z
.end method

.method public abstract whitelist test-api setEnableSessionCreation(Z)V
.end method

.method public abstract whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api setNeedClientAuth(Z)V
.end method

.method public whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 5
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .line 528
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 530
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 533
    :cond_9
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_12

    .line 535
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 538
    :cond_12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 539
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    goto :goto_2b

    .line 540
    :cond_1d
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 541
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    goto :goto_2b

    .line 543
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 545
    :goto_2b
    return-void
.end method

.method public abstract whitelist test-api setUseClientMode(Z)V
.end method

.method public abstract whitelist test-api setWantClientAuth(Z)V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/ServerSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
