.class public Ljavax/net/ssl/SSLContext;
.super Ljava/lang/Object;
.source "SSLContext.java"


# static fields
.field private static greylist-max-o defaultContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field private final greylist-max-o contextSpi:Ljavax/net/ssl/SSLContextSpi;

.field private final greylist-max-o protocol:Ljava/lang/String;

.field private final greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "contextSpi"    # Ljavax/net/ssl/SSLContextSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "protocol"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    .line 108
    iput-object p2, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    .line 109
    iput-object p3, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static declared-synchronized whitelist test-api getDefault()Ljavax/net/ssl/SSLContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Ljavax/net/ssl/SSLContext;

    monitor-enter v0

    .line 133
    :try_start_3
    sget-object v1, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_f

    .line 134
    const-string v1, "Default"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;

    .line 136
    :cond_f
    sget-object v1, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .registers 5
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 199
    const-class v0, Ljavax/net/ssl/SSLContextSpi;

    .line 200
    const-string v1, "SSLContext"

    invoke-static {v1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 201
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/net/ssl/SSLContext;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .registers 6
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 242
    const-class v0, Ljavax/net/ssl/SSLContextSpi;

    .line 243
    const-string v1, "SSLContext"

    invoke-static {v1, v0, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 244
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/net/ssl/SSLContext;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .registers 6
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 279
    const-class v0, Ljavax/net/ssl/SSLContextSpi;

    .line 280
    const-string v1, "SSLContext"

    invoke-static {v1, v0, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 281
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/net/ssl/SSLContext;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized whitelist test-api setDefault(Ljavax/net/ssl/SSLContext;)V
    .registers 5
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;

    const-class v0, Ljavax/net/ssl/SSLContext;

    monitor-enter v0

    .line 158
    if-eqz p0, :cond_1b

    .line 161
    :try_start_5
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 162
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_15

    .line 163
    new-instance v2, Ljavax/net/ssl/SSLPermission;

    const-string v3, "setDefaultSSLContext"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 165
    :cond_15
    sput-object p0, Ljavax/net/ssl/SSLContext;->defaultContext:Ljavax/net/ssl/SSLContext;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    .line 166
    monitor-exit v0

    return-void

    .line 157
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "context":Ljavax/net/ssl/SSLContext;
    :catchall_19
    move-exception p0

    goto :goto_21

    .line 159
    .restart local p0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 157
    .end local p0    # "context":Ljavax/net/ssl/SSLContext;
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_19

    throw p0
.end method


# virtual methods
.method public final whitelist test-api createSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 5

    .line 373
    :try_start_0
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 374
    :catch_7
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 377
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t support this operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "unsup":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 380
    throw v1
.end method

.method public final whitelist test-api createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 7
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    .line 405
    :try_start_0
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 406
    :catch_7
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support this operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "unsup":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v1, v0}, Ljava/lang/UnsupportedOperationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 412
    throw v1
.end method

.method public final whitelist test-api getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 447
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 463
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 304
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 430
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 2

    .line 350
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 338
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 480
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->contextSpi:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContextSpi;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 327
    return-void
.end method
