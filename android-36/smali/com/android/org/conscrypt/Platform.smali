.class public final Lcom/android/org/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Platform$NoPreloadHolder;
    }
.end annotation


# static fields
.field static blacklist DEPRECATED_TLS_V1:Z

.field static blacklist ENABLED_TLS_V1:Z

.field private static blacklist FILTERED_TLS_V1:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    .line 93
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    .line 94
    sput-boolean v0, Lcom/android/org/conscrypt/Platform;->FILTERED_TLS_V1:Z

    .line 97
    sget-boolean v0, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    sget-boolean v1, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->setTlsV1DeprecationStatus(ZZ)V

    .line 98
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/Platform-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    return-void
.end method

.method static blacklist blockGuardOnNetwork()V
    .registers 1

    .line 433
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 434
    return-void
.end method

.method static blacklist checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 248
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_f

    .line 249
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 250
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 251
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    goto :goto_35

    :cond_f
    const-string v1, "checkClientTrusted"

    const-class v5, Ljava/net/Socket;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .local v2, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v3, "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "authType":Ljava/lang/String;
    .local v6, "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v4    # "authType":Ljava/lang/String;
    .local v1, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v2, "chain":[Ljava/security/cert/X509Certificate;
    .local v3, "authType":Ljava/lang/String;
    if-nez p0, :cond_35

    const-class v4, Ljava/lang/String;

    .line 253
    invoke-virtual {v6}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 252
    const-string v0, "checkClientTrusted"

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 254
    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 256
    :cond_35
    :goto_35
    return-void
.end method

.method static blacklist checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 272
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_f

    .line 273
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 274
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 275
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    goto :goto_35

    :cond_f
    const-string v1, "checkClientTrusted"

    const-class v5, Ljavax/net/ssl/SSLEngine;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    .local v2, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v3, "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "authType":Ljava/lang/String;
    .local v6, "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v4    # "authType":Ljava/lang/String;
    .local v1, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v2, "chain":[Ljava/security/cert/X509Certificate;
    .local v3, "authType":Ljava/lang/String;
    if-nez p0, :cond_35

    const-class v4, Ljava/lang/String;

    .line 277
    invoke-virtual {v6}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 276
    const-string v0, "checkClientTrusted"

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 278
    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 280
    :cond_35
    :goto_35
    return-void
.end method

.method static blacklist checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 260
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_f

    .line 261
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 262
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 263
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    goto :goto_35

    :cond_f
    const-string v1, "checkServerTrusted"

    const-class v5, Ljava/net/Socket;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .local v2, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v3, "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "authType":Ljava/lang/String;
    .local v6, "socket":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v4    # "authType":Ljava/lang/String;
    .local v1, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v2, "chain":[Ljava/security/cert/X509Certificate;
    .local v3, "authType":Ljava/lang/String;
    if-nez p0, :cond_35

    const-class v4, Ljava/lang/String;

    .line 265
    invoke-virtual {v6}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 264
    const-string v0, "checkServerTrusted"

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 266
    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 268
    :cond_35
    :goto_35
    return-void
.end method

.method static blacklist checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 284
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_f

    .line 285
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 286
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 287
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    goto :goto_35

    :cond_f
    const-string v1, "checkServerTrusted"

    const-class v5, Ljavax/net/ssl/SSLEngine;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p0    # "tm":Ljavax/net/ssl/X509TrustManager;
    .end local p1    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p2    # "authType":Ljava/lang/String;
    .end local p3    # "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    .local v2, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v3, "chain":[Ljava/security/cert/X509Certificate;
    .local v4, "authType":Ljava/lang/String;
    .local v6, "engine":Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v4    # "authType":Ljava/lang/String;
    .local v1, "tm":Ljavax/net/ssl/X509TrustManager;
    .local v2, "chain":[Ljava/security/cert/X509Certificate;
    .local v3, "authType":Ljava/lang/String;
    if-nez p0, :cond_35

    const-class v4, Ljava/lang/String;

    .line 289
    invoke-virtual {v6}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 288
    const-string v0, "checkServerTrusted"

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 290
    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 292
    :cond_35
    :goto_35
    return-void
.end method

.method private static blacklist checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 11
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
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 232
    .local p4, "argumentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/security/cert/X509Certificate;

    aput-object v3, v2, v0

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 234
    .local v1, "method":Ljava/lang/reflect/Method;
    filled-new-array {p2, p3, p5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1f} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1f} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 235
    return v4

    .line 237
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_20
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_30

    .line 239
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateException;

    throw v1

    .line 241
    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3a
    move-exception v1

    .line 242
    nop

    .line 243
    return v0
.end method

.method static blacklist closeGuardClose(Ljava/lang/Object;)V
    .registers 2
    .param p0, "guardObj"    # Ljava/lang/Object;

    .line 419
    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    .line 420
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 421
    return-void
.end method

.method static blacklist closeGuardGet()Ldalvik/system/CloseGuard;
    .registers 1

    .line 410
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method static blacklist closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "guardObj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 414
    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    .line 415
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method static blacklist closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .registers 2
    .param p0, "guardObj"    # Ljava/lang/Object;

    .line 424
    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    .line 425
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 426
    return-void
.end method

.method static blacklist createEngineSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 2
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 4
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 11
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "hostname":Ljava/lang/String;
    .end local p1    # "port":I
    .end local p2    # "clientAddress":Ljava/net/InetAddress;
    .end local p3    # "clientPort":I
    .end local p4    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v1, "hostname":Ljava/lang/String;
    .local v2, "port":I
    .local v3, "clientAddress":Ljava/net/InetAddress;
    .local v4, "clientPort":I
    .local v5, "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 11
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "address":Ljava/net/InetAddress;
    .end local p1    # "port":I
    .end local p2    # "clientAddress":Ljava/net/InetAddress;
    .end local p3    # "clientPort":I
    .end local p4    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v1, "address":Ljava/net/InetAddress;
    .local v2, "port":I
    .local v3, "clientAddress":Ljava/net/InetAddress;
    .local v4, "clientPort":I
    .local v5, "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 11
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "autoClose"    # Z
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "socket":Ljava/net/Socket;
    .end local p1    # "hostname":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "autoClose":Z
    .end local p4    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v1, "socket":Ljava/net/Socket;
    .local v2, "hostname":Ljava/lang/String;
    .local v3, "port":I
    .local v4, "autoClose":Z
    .local v5, "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 2
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 4
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 11
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "hostname":Ljava/lang/String;
    .end local p1    # "port":I
    .end local p2    # "clientAddress":Ljava/net/InetAddress;
    .end local p3    # "clientPort":I
    .end local p4    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v1, "hostname":Ljava/lang/String;
    .local v2, "port":I
    .local v3, "clientAddress":Ljava/net/InetAddress;
    .local v4, "clientPort":I
    .local v5, "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 11
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "address":Ljava/net/InetAddress;
    .end local p1    # "port":I
    .end local p2    # "clientAddress":Ljava/net/InetAddress;
    .end local p3    # "clientPort":I
    .end local p4    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v1, "address":Ljava/net/InetAddress;
    .local v2, "port":I
    .local v3, "clientAddress":Ljava/net/InetAddress;
    .local v4, "clientPort":I
    .local v5, "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 11
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "autoClose"    # Z
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "socket":Ljava/net/Socket;
    .end local p1    # "hostname":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "autoClose":Z
    .end local p4    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    .local v1, "socket":Ljava/net/Socket;
    .local v2, "hostname":Ljava/lang/String;
    .local v3, "port":I
    .local v4, "autoClose":Z
    .local v5, "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;
    .registers 5
    .param p0, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 380
    instance-of v0, p0, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v0, :cond_15

    .line 381
    move-object v0, p0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 382
    .local v0, "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    new-instance v1, Lcom/android/org/conscrypt/GCMParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v2

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/GCMParameters;-><init>(I[B)V

    return-object v1

    .line 384
    .end local v0    # "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "params"    # Ljava/security/AlgorithmParameters;

    .line 392
    :try_start_0
    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 393
    :catch_7
    move-exception v0

    .line 394
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 149
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getDefaultCertKeyStore()Ljava/security/KeyStore;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 515
    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 517
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_a} :catch_c

    .line 520
    nop

    .line 521
    return-object v0

    .line 518
    :catch_c
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist getDefaultHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 1

    .line 558
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/Conscrypt;->wrapHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultProviderName()Ljava/lang/String;
    .registers 1

    .line 124
    const-string v0, "AndroidOpenSSL"

    return-object v0
.end method

.method static blacklist getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "s"    # Ljava/net/Socket;

    .line 132
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;
    .registers 6
    .param p0, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 137
    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-string v1, "impl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 138
    .local v0, "f_impl":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, "socketImpl":Ljava/lang/Object;
    const-class v3, Ljava/net/SocketImpl;

    const-string v4, "fd"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 141
    .local v3, "f_fd":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-object v1

    .line 143
    .end local v0    # "f_impl":Ljava/lang/reflect/Field;
    .end local v2    # "socketImpl":Ljava/lang/Object;
    .end local v3    # "f_fd":Ljava/lang/reflect/Field;
    :catch_22
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t get FileDescriptor from socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 483
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getMillisSinceBoot()J
    .registers 2

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 456
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "holder"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 457
    .local v0, "getHolder":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 459
    const-string v3, "java.net.InetAddress$InetAddressHolder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOriginalHostName"

    new-array v5, v2, [Ljava/lang/Class;

    .line 460
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 461
    .local v3, "getOriginalHostName":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 463
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 464
    .local v1, "originalHostName":Ljava/lang/String;
    if-nez v1, :cond_35

    .line 465
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_34} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_34} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_34} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_34} :catch_36

    return-object v2

    .line 467
    :cond_35
    return-object v1

    .line 473
    .end local v0    # "getHolder":Ljava/lang/reflect/Method;
    .end local v1    # "originalHostName":Ljava/lang/String;
    .end local v3    # "getOriginalHostName":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v0

    goto :goto_3c

    .line 472
    :catch_38
    move-exception v0

    goto :goto_3b

    .line 470
    :catch_3a
    move-exception v0

    .line 474
    :goto_3b
    nop

    .line 475
    :goto_3c
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :catch_41
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get originalHostName"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 5
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 187
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 189
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 190
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    .line 191
    invoke-virtual {p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 193
    :cond_2e
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method static blacklist getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 5
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 214
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 216
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 217
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    .line 218
    invoke-virtual {p2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 220
    :cond_2e
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static blacklist getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;
    .registers 1

    .line 570
    invoke-static {}, Lcom/android/org/conscrypt/metrics/StatsLogImpl;->getInstance()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStatsSource()Lcom/android/org/conscrypt/metrics/Source;
    .registers 1

    .line 574
    sget-object v0, Lcom/android/org/conscrypt/metrics/Source;->SOURCE_MAINLINE:Lcom/android/org/conscrypt/metrics/Source;

    return-object v0
.end method

.method static blacklist getTargetSdkVersion()Ljava/lang/Object;
    .registers 6

    .line 607
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 608
    .local v1, "vmRuntimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getRuntime"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 609
    .local v2, "getRuntimeMethod":Ljava/lang/reflect/Method;
    const-string v4, "getTargetSdkVersion"

    new-array v5, v3, [Ljava/lang/Class;

    .line 610
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 611
    .local v4, "getTargetSdkVersionMethod":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 612
    .local v5, "vmRuntime":Ljava/lang/Object;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_24} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_24} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_24} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    return-object v0

    .line 616
    .end local v1    # "vmRuntimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getRuntimeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getTargetSdkVersionMethod":Ljava/lang/reflect/Method;
    .end local v5    # "vmRuntime":Ljava/lang/Object;
    :catch_25
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2c
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist getUids()[I
    .registers 1

    .line 578
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isCTVerificationRequired(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostname"    # Ljava/lang/String;

    .line 492
    invoke-static {}, Lcom/android/org/conscrypt/flags/Flags;->certificateTransparencyPlatform()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 493
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 494
    invoke-virtual {v0, p0}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    .line 493
    return v0

    .line 496
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isJavaxCertificateSupported()Z
    .registers 1

    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isPakeSupported()Z
    .registers 1

    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSdkGreater(I)Z
    .registers 8
    .param p0, "sdk"    # I

    .line 623
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 624
    .local v1, "vmRuntimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getRuntime"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 625
    .local v2, "getRuntimeMethod":Ljava/lang/reflect/Method;
    const-string v3, "getSdkVersion"

    new-array v4, v0, [Ljava/lang/Class;

    .line 626
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 627
    .local v3, "getSdkVersionMethod":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 628
    .local v4, "vmRuntime":Ljava/lang/Object;
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 629
    .local v5, "sdkVersion":Ljava/lang/Object;
    if-eqz v5, :cond_30

    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2d} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2d} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2d} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2d} :catch_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_31

    if-le v6, p0, :cond_30

    const/4 v0, 0x1

    :cond_30
    return v0

    .line 633
    .end local v1    # "vmRuntimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getRuntimeMethod":Ljava/lang/reflect/Method;
    .end local v3    # "getSdkVersionMethod":Ljava/lang/reflect/Method;
    .end local v4    # "vmRuntime":Ljava/lang/Object;
    .end local v5    # "sdkVersion":Ljava/lang/Object;
    :catch_31
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_38
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static blacklist isTlsV1Deprecated()Z
    .registers 1

    .line 586
    sget-boolean v0, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    return v0
.end method

.method public static blacklist isTlsV1Filtered()Z
    .registers 3

    .line 590
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getTargetSdkVersion()Ljava/lang/Object;

    move-result-object v0

    .line 591
    .local v0, "targetSdkVersion":Ljava/lang/Object;
    if-eqz v0, :cond_1e

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x23

    if-le v1, v2, :cond_1e

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    .line 592
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1e

    .line 593
    const/4 v1, 0x0

    return v1

    .line 594
    :cond_1e
    sget-boolean v1, Lcom/android/org/conscrypt/Platform;->FILTERED_TLS_V1:Z

    return v1
.end method

.method public static blacklist isTlsV1Supported()Z
    .registers 1

    .line 598
    sget-boolean v0, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    return v0
.end method

.method static blacklist newDefaultBlocklist()Lcom/android/org/conscrypt/CertBlocklist;
    .registers 1

    .line 529
    invoke-static {}, Lcom/android/org/conscrypt/CertBlocklistImpl;->getDefault()Lcom/android/org/conscrypt/CertBlocklist;

    move-result-object v0

    return-object v0
.end method

.method static blacklist newDefaultCertStore()Lcom/android/org/conscrypt/ConscryptCertStore;
    .registers 1

    .line 525
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    return-object v0
.end method

.method static blacklist newDefaultCertificateTransparency()Lcom/android/org/conscrypt/ct/CertificateTransparency;
    .registers 5

    .line 533
    new-instance v0, Lcom/android/org/conscrypt/ct/PolicyImpl;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ct/PolicyImpl;-><init>()V

    .line 534
    .local v0, "policy":Lcom/android/org/conscrypt/ct/Policy;
    new-instance v1, Lcom/android/org/conscrypt/ct/LogStoreImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/LogStoreImpl;-><init>(Lcom/android/org/conscrypt/ct/Policy;)V

    .line 536
    .local v1, "logStore":Lcom/android/org/conscrypt/ct/LogStore;
    new-instance v2, Lcom/android/org/conscrypt/ct/Verifier;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/ct/Verifier;-><init>(Lcom/android/org/conscrypt/ct/LogStore;)V

    .line 538
    .local v2, "verifier":Lcom/android/org/conscrypt/ct/Verifier;
    new-instance v3, Lcom/android/org/conscrypt/ct/CertificateTransparency;

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getStatsLog()Lcom/android/org/conscrypt/metrics/StatsLog;

    move-result-object v4

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/android/org/conscrypt/ct/CertificateTransparency;-><init>(Lcom/android/org/conscrypt/ct/LogStore;Lcom/android/org/conscrypt/ct/Policy;Lcom/android/org/conscrypt/ct/Verifier;Lcom/android/org/conscrypt/metrics/StatsLog;)V

    return-object v3
.end method

.method static blacklist oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Ljava/lang/String;

    .line 441
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 442
    :catch_9
    move-exception v0

    .line 443
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object p0
.end method

.method private blacklist ping()V
    .registers 1

    .line 114
    return-void
.end method

.method static blacklist provideTrustManagerByDefault()Z
    .registers 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist reasonCTVerificationRequired(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .registers 3
    .param p0, "hostname"    # Ljava/lang/String;

    .line 501
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 502
    sget-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->APP_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object v0

    .line 503
    :cond_f
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p0}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 505
    sget-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->DOMAIN_OPT_IN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object v0

    .line 507
    :cond_1c
    sget-object v0, Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;->UNKNOWN:Lcom/android/org/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object v0
.end method

.method static blacklist serverNamePermitted(Lcom/android/org/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z
    .registers 8
    .param p0, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "serverName"    # Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v0

    .line 543
    .local v0, "sniMatchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2d

    .line 547
    :cond_e
    new-instance v2, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v2, p1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, "hostname":Ljavax/net/ssl/SNIHostName;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SNIMatcher;

    .line 549
    .local v4, "m":Ljavax/net/ssl/SNIMatcher;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/SNIMatcher;->matches(Ljavax/net/ssl/SNIServerName;)Z

    move-result v5

    .line 550
    .local v5, "match":Z
    if-eqz v5, :cond_2a

    .line 551
    return v1

    .line 553
    .end local v4    # "m":Ljavax/net/ssl/SNIMatcher;
    .end local v5    # "match":Z
    :cond_2a
    goto :goto_17

    .line 554
    :cond_2b
    const/4 v1, 0x0

    return v1

    .line 544
    .end local v2    # "hostname":Ljavax/net/ssl/SNIHostName;
    :cond_2d
    :goto_2d
    return v1
.end method

.method static blacklist setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .registers 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method static blacklist setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 7
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 171
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    .line 173
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v0, :cond_36

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SNIServerName;

    .line 176
    .local v2, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_35

    .line 177
    move-object v1, v2

    check-cast v1, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v1}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 178
    goto :goto_36

    .line 180
    .end local v2    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_35
    goto :goto_18

    .line 182
    :cond_36
    :goto_36
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method static blacklist setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 7
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 198
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    .line 200
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v0, :cond_36

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SNIServerName;

    .line 203
    .local v2, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_35

    .line 204
    move-object v1, v2

    check-cast v1, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v1}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 205
    goto :goto_36

    .line 207
    .end local v2    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_35
    goto :goto_18

    .line 209
    :cond_36
    :goto_36
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method static blacklist setSocketWriteTimeout(Ljava/net/Socket;J)V
    .registers 7
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 157
    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v0

    .line 159
    .local v0, "tv":Landroid/system/StructTimeval;
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v1, v2, v3, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_11

    .line 166
    nop

    .line 167
    return-void

    .line 160
    :catch_11
    move-exception v1

    .line 163
    .local v1, "errnoException":Landroid/system/ErrnoException;
    new-instance v2, Ljava/net/SocketException;

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "exception":Ljava/net/SocketException;
    invoke-virtual {v2, v1}, Ljava/net/SocketException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 165
    throw v2
.end method

.method public static blacklist setup(ZZ)V
    .registers 4
    .param p0, "deprecatedTlsV1"    # Z
    .param p1, "enabledTlsV1"    # Z

    .line 104
    sput-boolean p0, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    .line 105
    sput-boolean p1, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    .line 106
    xor-int/lit8 v0, p1, 0x1

    sput-boolean v0, Lcom/android/org/conscrypt/Platform;->FILTERED_TLS_V1:Z

    .line 107
    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    .line 108
    sget-boolean v0, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    sget-boolean v1, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->setTlsV1DeprecationStatus(ZZ)V

    .line 109
    return-void
.end method

.method static blacklist supportsConscryptCertStore()Z
    .registers 1

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist supportsX509ExtendedTrustManager()Z
    .registers 1

    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "tagLenInBits"    # I
    .param p1, "iv"    # [B

    .line 402
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0
.end method

.method static blacklist unwrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 299
    invoke-static {p0}, Lcom/android/org/conscrypt/Java8EngineWrapper;->getDelegate(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method static blacklist wrapEngine(Lcom/android/org/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 2
    .param p0, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 295
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineWrapper;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8EngineWrapper;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    return-object v0
.end method

.method static blacklist wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;
    .registers 2
    .param p0, "sslSession"    # Lcom/android/org/conscrypt/ExternalSession;

    .line 451
    new-instance v0, Lcom/android/org/conscrypt/Java8ExtendedSSLSession;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8ExtendedSSLSession;-><init>(Lcom/android/org/conscrypt/ExternalSession;)V

    return-object v0
.end method

.method static blacklist wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 1
    .param p0, "factory"    # Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    .line 373
    return-object p0
.end method
