.class public abstract Ljavax/net/ssl/SSLSocket;
.super Ljava/net/Socket;
.source "SSLSocket.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 753
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 772
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #@3
    .line 771
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0
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

    #@0
    .prologue
    .line 813
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    #@3
    .line 812
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 789
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@3
    .line 788
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 835
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    #@3
    .line 834
    return-void
.end method


# virtual methods
.method public abstract addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    .line 1013
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@2
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@5
    .line 1014
    .local v0, "p":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@c
    .line 1015
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@13
    .line 1016
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    #@1a
    .line 1017
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    #@21
    .line 1018
    return-object v0
.end method

.method public abstract getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
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
    .locals 4
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1031
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1032
    .local v0, "cipherSuites":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1033
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    #@a
    .line 1035
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1036
    .local v1, "protocols":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    .line 1037
    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    #@13
    .line 1039
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 1040
    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    #@1c
    .line 1030
    :goto_0
    return-void

    #@1d
    .line 1041
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 1042
    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    #@26
    goto :goto_0

    #@27
    .line 1044
    :cond_3
    const/4 v2, 0x0

    #@28
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    #@2b
    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract startHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
