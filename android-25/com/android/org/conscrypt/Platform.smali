.class Lcom/android/org/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Platform$NoPreloadHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    #@3
    return-void
.end method

.method public static blockGuardOnNetwork()V
    .locals 1

    #@0
    .prologue
    .line 300
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 299
    return-void
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    .locals 7
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/android/org/conscrypt/OpenSSLEngineImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v6, p0

    #@5
    .line 189
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@7
    .line 190
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    #@a
    .line 187
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 191
    :cond_1
    const-string/jumbo v0, "checkClientTrusted"

    #@e
    const-class v4, Ljavax/net/ssl/SSLEngine;

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    move-object v5, p3

    #@14
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 192
    const-string/jumbo v0, "checkClientTrusted"

    #@1d
    const-class v4, Ljava/lang/String;

    #@1f
    .line 193
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    .line 192
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 194
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 7
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v6, p0

    #@5
    .line 165
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@7
    .line 166
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    #@a
    .line 163
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 167
    :cond_1
    const-string/jumbo v0, "checkClientTrusted"

    #@e
    const-class v4, Ljava/net/Socket;

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    move-object v5, p3

    #@14
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 168
    const-string/jumbo v0, "checkClientTrusted"

    #@1d
    const-class v4, Ljava/lang/String;

    #@1f
    .line 169
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    .line 168
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 170
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    .locals 7
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/android/org/conscrypt/OpenSSLEngineImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v6, p0

    #@5
    .line 201
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@7
    .line 202
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    #@a
    .line 199
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 203
    :cond_1
    const-string/jumbo v0, "checkServerTrusted"

    #@e
    const-class v4, Ljavax/net/ssl/SSLEngine;

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    move-object v5, p3

    #@14
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 204
    const-string/jumbo v0, "checkServerTrusted"

    #@1d
    const-class v4, Ljava/lang/String;

    #@1f
    .line 205
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    .line 204
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 206
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 7
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v6, p0

    #@5
    .line 177
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    #@7
    .line 178
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    #@a
    .line 175
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 179
    :cond_1
    const-string/jumbo v0, "checkServerTrusted"

    #@e
    const-class v4, Ljava/net/Socket;

    #@10
    move-object v1, p0

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    move-object v5, p3

    #@14
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 180
    const-string/jumbo v0, "checkServerTrusted"

    #@1d
    const-class v4, Ljava/lang/String;

    #@1f
    .line 181
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move-object v3, p2

    #@2a
    .line 180
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 182
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@33
    goto :goto_0
.end method

.method private static checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 9
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "authType"    # Ljava/lang/String;
    .param p5, "argumentInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509TrustManager;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .local p4, "argumentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 146
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v3

    #@6
    const/4 v4, 0x3

    #@7
    new-array v4, v4, [Ljava/lang/Class;

    #@9
    .line 147
    const-class v5, [Ljava/security/cert/X509Certificate;

    #@b
    const/4 v6, 0x0

    #@c
    aput-object v5, v4, v6

    #@e
    .line 148
    const-class v5, Ljava/lang/String;

    #@10
    const/4 v6, 0x1

    #@11
    aput-object v5, v4, v6

    #@13
    .line 149
    const/4 v5, 0x2

    #@14
    aput-object p4, v4, v5

    #@16
    .line 146
    invoke-virtual {v3, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v2

    #@1a
    .line 150
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    #@1b
    new-array v3, v3, [Ljava/lang/Object;

    #@1d
    const/4 v4, 0x0

    #@1e
    aput-object p2, v3, v4

    #@20
    const/4 v4, 0x1

    #@21
    aput-object p3, v3, v4

    #@23
    const/4 v4, 0x2

    #@24
    aput-object p5, v3, v4

    #@26
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 151
    return v8

    #@2a
    .line 153
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@2b
    .line 154
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@2e
    move-result-object v3

    #@2f
    instance-of v3, v3, Ljava/security/cert/CertificateException;

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 155
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/security/cert/CertificateException;

    #@39
    throw v3

    #@3a
    .line 157
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@3c
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@43
    throw v3

    #@44
    .line 152
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@45
    .line 159
    .local v1, "ignored":Ljava/lang/ReflectiveOperationException;
    return v7
.end method

.method public static closeGuardClose(Ljava/lang/Object;)V
    .locals 1
    .param p0, "guardObj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p0

    #@1
    .line 286
    check-cast v0, Ldalvik/system/CloseGuard;

    #@3
    .line 287
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 285
    return-void
.end method

.method public static closeGuardGet()Ldalvik/system/CloseGuard;
    .locals 1

    #@0
    .prologue
    .line 277
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "guardObj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    move-object v0, p0

    #@1
    .line 281
    check-cast v0, Ldalvik/system/CloseGuard;

    #@3
    .line 282
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@6
    .line 280
    return-void
.end method

.method public static closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .locals 1
    .param p0, "guardObj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p0

    #@1
    .line 291
    check-cast v0, Ldalvik/system/CloseGuard;

    #@3
    .line 292
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@6
    .line 290
    return-void
.end method

.method public static fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;
    .locals 4
    .param p0, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 258
    instance-of v1, p0, Ljavax/crypto/spec/GCMParameterSpec;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 259
    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    #@7
    .line 260
    .local v0, "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    new-instance v1, Lcom/android/org/conscrypt/GCMParameters;

    #@9
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    #@c
    move-result v2

    #@d
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    #@10
    move-result-object v3

    #@11
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/GCMParameters;-><init>(I[B)V

    #@14
    return-object v1

    #@15
    .line 262
    .end local v0    # "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_0
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "s"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;
    .locals 6
    .param p0, "openSSLSocketImpl"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@0
    .prologue
    .line 84
    :try_start_0
    const-class v4, Ljava/net/Socket;

    #@2
    const-string/jumbo v5, "impl"

    #@5
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8
    move-result-object v2

    #@9
    .line 85
    .local v2, "f_impl":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    #@a
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@d
    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 87
    .local v3, "socketImpl":Ljava/lang/Object;
    const-class v4, Ljava/net/SocketImpl;

    #@13
    const-string/jumbo v5, "fd"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@19
    move-result-object v1

    #@1a
    .line 88
    .local v1, "f_fd":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    #@1b
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1e
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    return-object v4

    #@25
    .line 90
    .end local v1    # "f_fd":Ljava/lang/reflect/Field;
    .end local v2    # "f_impl":Ljava/lang/reflect/Field;
    .end local v3    # "socketImpl":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@26
    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@28
    const-string/jumbo v5, "Can\'t get FileDescriptor from socket"

    #@2b
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v4
.end method

.method public static getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 327
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 2
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@0
    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    #@7
    .line 130
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    #@e
    .line 131
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 133
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    #@20
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    #@27
    .line 132
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    #@2e
    .line 128
    :cond_0
    return-void
.end method

.method public static isLiteralIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 243
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 12
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    :try_start_0
    const-string/jumbo v8, "android.os.Process"

    #@3
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v4

    #@7
    .line 224
    .local v4, "processClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    .line 225
    .local v5, "processInstance":Ljava/lang/Object;
    const-string/jumbo v9, "myUid"

    #@e
    const/4 v8, 0x0

    #@f
    check-cast v8, [Ljava/lang/Class;

    #@11
    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v3

    #@15
    .line 226
    .local v3, "myUidMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    #@16
    new-array v8, v8, [Ljava/lang/Object;

    #@18
    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v8

    #@1c
    check-cast v8, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v6

    #@22
    .line 228
    .local v6, "uid":I
    const-string/jumbo v8, "android.util.EventLog"

    #@25
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@28
    move-result-object v1

    #@29
    .line 229
    .local v1, "eventLogClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    .line 230
    .local v2, "eventLogInstance":Ljava/lang/Object;
    const-string/jumbo v8, "writeEvent"

    #@30
    .line 231
    const/4 v9, 0x2

    #@31
    new-array v9, v9, [Ljava/lang/Class;

    #@33
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@35
    const/4 v11, 0x0

    #@36
    aput-object v10, v9, v11

    #@38
    const-class v10, [Ljava/lang/Object;

    #@3a
    const/4 v11, 0x1

    #@3b
    aput-object v10, v9, v11

    #@3d
    .line 230
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@40
    move-result-object v7

    #@41
    .line 232
    .local v7, "writeEventMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    #@42
    new-array v8, v8, [Ljava/lang/Object;

    #@44
    const v9, 0x534e4554

    #@47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v9

    #@4b
    const/4 v10, 0x0

    #@4c
    aput-object v9, v8, v10

    #@4e
    .line 233
    const/4 v9, 0x3

    #@4f
    new-array v9, v9, [Ljava/lang/Object;

    #@51
    const-string/jumbo v10, "conscrypt"

    #@54
    const/4 v11, 0x0

    #@55
    aput-object v10, v9, v11

    #@57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v10

    #@5b
    const/4 v11, 0x1

    #@5c
    aput-object v10, v9, v11

    #@5e
    const/4 v10, 0x2

    #@5f
    aput-object p0, v9, v10

    #@61
    const/4 v10, 0x1

    #@62
    aput-object v9, v8, v10

    #@64
    .line 232
    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 221
    .end local v1    # "eventLogClass":Ljava/lang/Class;
    .end local v2    # "eventLogInstance":Ljava/lang/Object;
    .end local v3    # "myUidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "processClass":Ljava/lang/Class;
    .end local v5    # "processInstance":Ljava/lang/Object;
    .end local v6    # "uid":I
    .end local v7    # "writeEventMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    #@68
    .line 234
    :catch_0
    move-exception v0

    #@69
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 309
    :catch_0
    move-exception v0

    #@a
    .line 310
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object p0
.end method

.method private ping()V
    .locals 0

    #@0
    .prologue
    .line 72
    return-void
.end method

.method public static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 0
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    #@3
    .line 99
    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 4
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@0
    .prologue
    .line 114
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    #@7
    .line 115
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    #@a
    move-result v3

    #@b
    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    #@e
    .line 116
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 117
    .local v2, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v2, :cond_1

    #@14
    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "serverName$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljavax/net/ssl/SNIServerName;

    #@24
    .line 119
    .local v0, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_0

    #@2a
    .line 120
    check-cast v0, Ljavax/net/ssl/SNIHostName;

    #@2c
    .end local v0    # "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p2, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    #@33
    .line 113
    .end local v1    # "serverName$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .locals 5
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    #@3
    move-result-object v1

    #@4
    .line 106
    .local v1, "tv":Landroid/system/StructTimeval;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@7
    move-result-object v2

    #@8
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@a
    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    #@c
    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 103
    return-void

    #@10
    .line 107
    :catch_0
    move-exception v0

    #@11
    .line 108
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@14
    move-result-object v2

    #@15
    throw v2
.end method

.method public static setup()V
    .locals 1

    #@0
    .prologue
    .line 66
    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    #@2
    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    #@5
    .line 65
    return-void
.end method

.method public static toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .param p0, "tagLenInBits"    # I
    .param p1, "iv"    # [B

    #@0
    .prologue
    .line 269
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    #@2
    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    #@5
    return-object v0
.end method

.method public static wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static wrapSSLSession(Lcom/android/org/conscrypt/OpenSSLSessionImpl;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p0, "sslSession"    # Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@0
    .prologue
    .line 319
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;-><init>(Lcom/android/org/conscrypt/OpenSSLSessionImpl;)V

    #@5
    return-object v0
.end method

.method public static wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .param p0, "factory"    # Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    #@0
    .prologue
    .line 251
    return-object p0
.end method
