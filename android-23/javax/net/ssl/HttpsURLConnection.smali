.class public abstract Ljavax/net/ssl/HttpsURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;
    }
.end annotation


# instance fields
.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 193
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@5
    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@7
    .line 194
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@9
    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@b
    .line 191
    return-void
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 148
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2
    return-object v0
.end method

.method public static getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 172
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    return-object v0
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .param p0, "v"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 136
    if-nez p0, :cond_0

    #@2
    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HostnameVerifier is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 139
    :cond_0
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@d
    .line 135
    return-void
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 160
    if-nez p0, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "SSLSocketFactory is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 163
    :cond_0
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@d
    .line 159
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
    return-object v0
.end method

.method public abstract getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 257
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    .line 258
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@8
    array-length v1, v0

    #@9
    if-nez v1, :cond_1

    #@b
    .line 259
    :cond_0
    return-object v3

    #@c
    .line 258
    :cond_1
    aget-object v1, v0, v2

    #@e
    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 261
    aget-object v1, v0, v2

    #@14
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@16
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 241
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    #@4
    move-result-object v0

    #@5
    .line 242
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@7
    array-length v1, v0

    #@8
    if-nez v1, :cond_1

    #@a
    .line 243
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@c
    const-string/jumbo v2, "No server\'s end-entity certificate"

    #@f
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 242
    :cond_1
    aget-object v1, v0, v2

    #@15
    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 245
    aget-object v1, v0, v2

    #@1b
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@1d
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 309
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
    .line 273
    if-nez p1, :cond_0

    #@2
    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HostnameVerifier is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 276
    :cond_0
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@d
    .line 272
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 297
    if-nez p1, :cond_0

    #@2
    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "SSLSocketFactory is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 300
    :cond_0
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@d
    .line 296
    return-void
.end method
