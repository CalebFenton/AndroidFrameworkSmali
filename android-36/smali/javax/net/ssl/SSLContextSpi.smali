.class public abstract Ljavax/net/ssl/SSLContextSpi;
.super Ljava/lang/Object;
.source "SSLContextSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o getDefaultSocket()Ljavax/net/ssl/SSLSocket;
    .registers 4

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 143
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 144
    .end local v0    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_b
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Could not obtain parameters"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract whitelist test-api engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract whitelist test-api engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract whitelist test-api engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected whitelist test-api engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 168
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;->getDefaultSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 169
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    return-object v1
.end method

.method protected abstract whitelist test-api engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract whitelist test-api engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
.end method

.method protected abstract whitelist test-api engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method protected whitelist test-api engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 4

    .line 192
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;->getDefaultSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 193
    .local v0, "socket":Ljavax/net/ssl/SSLSocket;
    new-instance v1, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v1}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 194
    .local v1, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 196
    return-object v1
.end method

.method protected abstract whitelist test-api engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method
