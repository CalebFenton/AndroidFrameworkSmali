.class public Lcom/android/org/conscrypt/OpenSSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv11;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv1;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$SSLv3;
    }
.end annotation


# static fields
.field private static DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;


# instance fields
.field private final algorithms:[Ljava/lang/String;

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field protected sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method protected constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    #@3
    .line 71
    const-class v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@5
    monitor-enter v8

    #@6
    .line 72
    const/4 v1, 0x0

    #@7
    :try_start_0
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    #@9
    .line 73
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@b
    if-nez v1, :cond_0

    #@d
    .line 74
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext;

    #@f
    invoke-direct {v1}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@14
    .line 75
    new-instance v1, Lcom/android/org/conscrypt/ServerSessionContext;

    #@16
    invoke-direct {v1}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    #@19
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@1b
    .line 76
    move-object v0, p0

    #@1c
    check-cast v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@1e
    move-object v1, v0

    #@1f
    sput-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@21
    .line 81
    :goto_0
    new-instance v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@23
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@25
    invoke-virtual {v2}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@28
    move-result-object v2

    #@29
    .line 82
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@2b
    invoke-virtual {v3}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@2e
    move-result-object v3

    #@2f
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@31
    .line 83
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@33
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    #@35
    .line 82
    const/4 v4, 0x0

    #@36
    .line 81
    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    #@39
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit v8

    #@3c
    .line 70
    return-void

    #@3d
    .line 78
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@3f
    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@45
    .line 79
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    #@47
    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 71
    :catchall_0
    move-exception v1

    #@4f
    monitor-exit v8

    #@50
    throw v1
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithms"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    #@5
    .line 60
    new-instance v0, Lcom/android/org/conscrypt/ClientSessionContext;

    #@7
    invoke-direct {v0}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@c
    .line 61
    new-instance v0, Lcom/android/org/conscrypt/ServerSessionContext;

    #@e
    invoke-direct {v0}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@13
    .line 58
    return-void
.end method

.method public static getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .locals 1

    #@0
    .prologue
    .line 55
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;

    #@2
    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 3

    #@0
    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "SSLContext is not initialized."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@f
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@15
    .line 136
    .local v0, "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    #@19
    .line 137
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    #@1b
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    #@1e
    return-object v1
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "SSLContext is not initialized."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@f
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@15
    .line 126
    .local v0, "p":Lcom/android/org/conscrypt/SSLParametersImpl;
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    #@19
    .line 127
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    #@1b
    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    #@1e
    return-object v1
.end method

.method public engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@2
    return-object v0
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@2
    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "SSLContext is not initialized."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 117
    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    #@f
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@11
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    #@14
    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "SSLContext is not initialized."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 109
    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    #@f
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@11
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    #@14
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@2
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@4
    .line 101
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@6
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    .line 100
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    #@e
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@10
    .line 99
    return-void
.end method
