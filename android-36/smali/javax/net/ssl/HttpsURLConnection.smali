.class public abstract Ljavax/net/ssl/HttpsURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final blacklist OK_HOSTNAME_VERIFIER_CLASS:Ljava/lang/String; = "com.android.okhttp.internal.tls.OkHostnameVerifier"

.field private static greylist-max-o defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field protected whitelist test-api hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private greylist-max-o sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 361
    const/4 v0, 0x0

    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 66
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 213
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 367
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    return-void
.end method

.method public static whitelist test-api getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 294
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static whitelist test-api getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    .line 408
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    .line 410
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 412
    :cond_c
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static blacklist test-api getStrictHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 5

    .line 340
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.okhttp.internal.tls.OkHostnameVerifier"

    .line 341
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "strictInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 342
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 343
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HostnameVerifier;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    .line 340
    return-object v1

    .line 344
    :catch_19
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static whitelist test-api setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 4
    .param p0, "v"    # Ljavax/net/ssl/HostnameVerifier;

    .line 270
    if-eqz p0, :cond_15

    .line 275
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 276
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 277
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string v2, "setHostnameVerifier"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 281
    :cond_12
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 282
    return-void

    .line 271
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no default HostnameVerifier specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 385
    if-eqz p0, :cond_e

    .line 390
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 391
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 392
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 394
    :cond_b
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 395
    return-void

    .line 386
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no default SSLSocketFactory specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getCipherSuite()Ljava/lang/String;
.end method

.method public whitelist test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 358
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public abstract whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .line 173
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 174
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_10

    .line 175
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 177
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 147
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 454
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public abstract whitelist test-api getServerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public whitelist test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 4
    .param p1, "v"    # Ljavax/net/ssl/HostnameVerifier;

    .line 316
    if-eqz p1, :cond_5

    .line 321
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 322
    return-void

    .line 317
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no HostnameVerifier specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 434
    if-eqz p1, :cond_e

    .line 439
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 440
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 441
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 443
    :cond_b
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 444
    return-void

    .line 435
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no SSLSocketFactory specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
