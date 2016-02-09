.class public abstract Ljavax/net/ssl/SSLContextSpi;
.super Ljava/lang/Object;
.source "SSLContextSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private createSSLParameters(Z)Ljavax/net/ssl/SSLParameters;
    .locals 7
    .param p1, "supported"    # Z

    #@0
    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Ljavax/net/ssl/SSLSocket;

    #@a
    .line 140
    .local v4, "s":Ljavax/net/ssl/SSLSocket;
    new-instance v2, Ljavax/net/ssl/SSLParameters;

    #@c
    invoke-direct {v2}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@f
    .line 143
    .local v2, "p":Ljavax/net/ssl/SSLParameters;
    if-eqz p1, :cond_0

    #@11
    .line 144
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 145
    .local v0, "cipherSuites":[Ljava/lang/String;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 150
    .local v3, "protocols":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@1c
    .line 151
    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@1f
    .line 152
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    #@22
    move-result v5

    #@23
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    #@26
    .line 153
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    #@29
    move-result v5

    #@2a
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    #@2d
    .line 154
    return-object v2

    #@2e
    .line 147
    .end local v0    # "cipherSuites":[Ljava/lang/String;
    .end local v3    # "protocols":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 148
    .restart local v0    # "cipherSuites":[Ljava/lang/String;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    move-result-object v3

    #@36
    .restart local v3    # "protocols":[Ljava/lang/String;
    goto :goto_0

    #@37
    .line 155
    .end local v0    # "cipherSuites":[Ljava/lang/String;
    .end local v2    # "p":Ljavax/net/ssl/SSLParameters;
    .end local v3    # "protocols":[Ljava/lang/String;
    .end local v4    # "s":Ljavax/net/ssl/SSLSocket;
    :catch_0
    move-exception v1

    #@38
    .line 161
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@3a
    const-string/jumbo v6, "Could not access supported SSL parameters"

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5
.end method


# virtual methods
.method protected abstract engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLContextSpi;->createSSLParameters(Z)Ljavax/net/ssl/SSLParameters;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected abstract engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
.end method

.method protected abstract engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method protected engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLContextSpi;->createSSLParameters(Z)Ljavax/net/ssl/SSLParameters;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected abstract engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method
