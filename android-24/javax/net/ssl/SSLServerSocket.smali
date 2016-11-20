.class public abstract Ljavax/net/ssl/SSLServerSocket;
.super Ljava/net/ServerSocket;
.source "SSLServerSocket.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    #@3
    .line 70
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    #@3
    .line 99
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    #@3
    .line 135
    return-void
.end method

.method protected constructor <init>(IILjava/net/InetAddress;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@3
    .line 180
    return-void
.end method


# virtual methods
.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 469
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@3
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@6
    .line 471
    .local v0, "parameters":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@d
    .line 472
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@14
    .line 473
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getNeedClientAuth()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 474
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    #@1d
    .line 479
    :cond_0
    :goto_0
    return-object v0

    #@1e
    .line 475
    :cond_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getWantClientAuth()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 476
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    #@27
    goto :goto_0
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 3
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 508
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 509
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 510
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@a
    .line 513
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 514
    if-eqz v0, :cond_1

    #@10
    .line 515
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    #@13
    .line 518
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 519
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    #@1c
    .line 506
    :goto_0
    return-void

    #@1d
    .line 520
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 521
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    #@26
    goto :goto_0

    #@27
    .line 523
    :cond_3
    const/4 v1, 0x0

    #@28
    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    #@2b
    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method
