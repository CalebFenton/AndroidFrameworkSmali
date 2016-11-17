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
.field private static defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 291
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@3
    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 297
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@9
    .line 66
    return-void
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 251
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2
    return-object v0
.end method

.method public static getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 338
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 340
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    #@a
    .line 339
    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@c
    .line 342
    :cond_0
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@e
    return-object v0
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 3
    .param p0, "v"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 231
    if-nez p0, :cond_0

    #@2
    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 233
    const-string/jumbo v2, "no default HostnameVerifier specified"

    #@7
    .line 232
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 236
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@e
    move-result-object v0

    #@f
    .line 237
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@11
    .line 238
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    #@13
    const-string/jumbo v2, "setHostnameVerifier"

    #@16
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@1c
    .line 240
    :cond_1
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@1e
    .line 230
    return-void
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 315
    if-nez p0, :cond_0

    #@2
    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 317
    const-string/jumbo v2, "no default SSLSocketFactory specified"

    #@7
    .line 316
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 320
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@e
    move-result-object v0

    #@f
    .line 321
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@11
    .line 322
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@14
    .line 324
    :cond_1
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@16
    .line 314
    return-void
.end method


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 286
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@6
    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@8
    .line 288
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@a
    return-object v0
.end method

.method public abstract getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 175
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@4
    move-result-object v0

    #@5
    .line 176
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@7
    .line 178
    const/4 v1, 0x0

    #@8
    aget-object v1, v0, v1

    #@a
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@c
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@f
    move-result-object v1

    #@10
    .line 177
    return-object v1

    #@11
    .line 180
    :cond_0
    return-object v1
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    #@3
    move-result-object v0

    #@4
    .line 149
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    #@5
    aget-object v1, v0, v1

    #@7
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@9
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@c
    move-result-object v1

    #@d
    .line 148
    return-object v1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    return-object v0
.end method

.method public abstract getServerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .param p1, "v"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 269
    if-nez p1, :cond_0

    #@2
    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 271
    const-string/jumbo v1, "no HostnameVerifier specified"

    #@7
    .line 270
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 274
    :cond_0
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@d
    .line 268
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 361
    if-nez p1, :cond_0

    #@2
    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 363
    const-string/jumbo v2, "no SSLSocketFactory specified"

    #@7
    .line 362
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 366
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@e
    move-result-object v0

    #@f
    .line 367
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@11
    .line 368
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@14
    .line 370
    :cond_1
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@16
    .line 360
    return-void
.end method
