.class public abstract Ljavax/net/ssl/SSLContextSpi;
.super Ljava/lang/Object;
.source "SSLContextSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getDefaultSocket()Ljavax/net/ssl/SSLSocket;
    .locals 4

    #@0
    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v1

    #@4
    .line 144
    .local v1, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-object v2

    #@b
    .line 145
    .end local v1    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v0

    #@c
    .line 146
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@e
    const-string/jumbo v3, "Could not obtain parameters"

    #@11
    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v2
.end method


# virtual methods
.method protected abstract engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;->getDefaultSocket()Ljavax/net/ssl/SSLSocket;

    #@3
    move-result-object v0

    #@4
    .line 170
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method protected abstract engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
.end method

.method protected abstract engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method protected engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;->getDefaultSocket()Ljavax/net/ssl/SSLSocket;

    #@3
    move-result-object v1

    #@4
    .line 194
    .local v1, "socket":Ljavax/net/ssl/SSLSocket;
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    #@6
    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    #@9
    .line 195
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    #@10
    .line 196
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    #@17
    .line 197
    return-object v0
.end method

.method protected abstract engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method
