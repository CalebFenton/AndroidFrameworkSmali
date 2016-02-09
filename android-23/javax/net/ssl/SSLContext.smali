.class public Ljavax/net/ssl/SSLContext;
.super Ljava/lang/Object;
.source "SSLContext.java"


# static fields
.field private static DEFAULT:Ljavax/net/ssl/SSLContext; = null

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "SSLContext"


# instance fields
.field private final protocol:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/SSLContextSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "SSLContext"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 33
    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextSpi"    # Ljavax/net/ssl/SSLContextSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 293
    iput-object p2, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    #@5
    .line 294
    iput-object p3, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    #@7
    .line 295
    iput-object p1, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@9
    .line 292
    return-void
.end method

.method public static getDefault()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@2
    monitor-enter v1

    #@3
    .line 59
    :try_start_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 60
    const-string/jumbo v0, "Default"

    #@a
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    #@10
    .line 62
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    .line 58
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 135
    if-nez p0, :cond_0

    #@3
    .line 136
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "protocol == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 138
    :cond_0
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 139
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/net/ssl/SSLContext;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    if-nez p1, :cond_0

    #@2
    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Provider is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Provider is empty"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 241
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@1d
    move-result-object v0

    #@1e
    .line 242
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@20
    .line 243
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@22
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 245
    :cond_2
    invoke-static {p0, v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 266
    if-nez p1, :cond_0

    #@3
    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider is null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 269
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 270
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "protocol == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 272
    :cond_1
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 273
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLContext;

    #@1f
    check-cast v0, Ljavax/net/ssl/SSLContextSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method

.method public static setDefault(Ljavax/net/ssl/SSLContext;)V
    .locals 2
    .param p0, "sslContext"    # Ljavax/net/ssl/SSLContext;

    #@0
    .prologue
    .line 74
    if-nez p0, :cond_0

    #@2
    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "sslContext == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 77
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@d
    monitor-enter v0

    #@e
    .line 78
    :try_start_0
    sput-object p0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v0

    #@11
    .line 73
    return-void

    #@12
    .line 77
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method


# virtual methods
.method public final createSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContextSpi;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@5
    .line 348
    return-void
.end method
