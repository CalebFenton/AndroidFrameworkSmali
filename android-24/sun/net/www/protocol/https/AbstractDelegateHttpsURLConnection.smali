.class public abstract Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;
.super Lsun/net/www/protocol/http/HttpURLConnection;
.source "AbstractDelegateHttpsURLConnection.java"


# direct methods
.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    #@3
    .line 54
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    #@4
    .line 49
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 176
    return-void

    #@5
    .line 177
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->plainConnect()V

    #@8
    .line 178
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 180
    return-void

    #@d
    .line 182
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_2

    #@15
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@17
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 183
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    #@20
    .line 185
    :cond_2
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@22
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@24
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->afterConnect()V

    #@27
    .line 174
    return-void
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 210
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@6
    check-cast v0, Ljava/net/SecureCacheResponse;

    #@8
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 212
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "connection not yet open"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 215
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1c
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@1e
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getCipherSuite()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method protected abstract getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 224
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 225
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@7
    check-cast v1, Ljava/net/SecureCacheResponse;

    #@9
    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    .line 226
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    #@f
    .line 227
    return-object v2

    #@10
    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Ljava/security/cert/Certificate;

    #@16
    return-object v1

    #@17
    .line 232
    .end local v0    # "l":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v2, "connection not yet open"

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 235
    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@26
    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    #@28
    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 303
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@6
    check-cast v0, Ljava/net/SecureCacheResponse;

    #@8
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 306
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "connection not yet open"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 309
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1c
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@1e
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getLocalPrincipal()Ljava/security/Principal;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v0

    #@4
    .line 192
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@7
    move-result-object v2

    #@8
    const/4 v4, 0x1

    #@9
    move-object v1, p1

    #@a
    move-object v3, p2

    #@b
    move v5, p3

    #@c
    move-object v6, p0

    #@d
    .line 191
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v0

    #@4
    .line 201
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@7
    move-result-object v2

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move v4, p4

    #@b
    move v5, p3

    #@c
    move-object v6, p0

    #@d
    .line 200
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;ZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 286
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@6
    check-cast v0, Ljava/net/SecureCacheResponse;

    #@8
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 289
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "connection not yet open"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 292
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1c
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@1e
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getPeerPrincipal()Ljava/security/Principal;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method protected abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    const-string/jumbo v1, "this method is not supported when using cache"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 271
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "connection not yet open"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 274
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@1c
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@1e
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->getServerCertificateChain()[Ljavax/security/cert/X509Certificate;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
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
    .line 246
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 247
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    #@7
    check-cast v1, Ljava/net/SecureCacheResponse;

    #@9
    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    .line 248
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    #@f
    .line 249
    return-object v2

    #@10
    .line 251
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Ljava/security/cert/Certificate;

    #@16
    return-object v1

    #@17
    .line 255
    .end local v0    # "l":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 256
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    const-string/jumbo v2, "connection not yet open"

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 258
    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@26
    check-cast v1, Lsun/net/www/protocol/https/HttpsClient;

    #@28
    invoke-virtual {v1}, Lsun/net/www/protocol/https/HttpsClient;->getServerCertificates()[Ljava/security/cert/Certificate;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 160
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    return v0
.end method

.method protected proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    return-void

    #@5
    .line 149
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@8
    move-result-object v0

    #@9
    .line 151
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@c
    move-result-object v2

    #@d
    move-object v1, p1

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    move v5, p4

    #@11
    move-object v6, p0

    #@12
    .line 149
    invoke-static/range {v0 .. v6}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@18
    .line 153
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@1b
    .line 146
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "conn"    # Z

    #@0
    .prologue
    .line 167
    iput-boolean p1, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    .line 166
    return-void
.end method

.method public setNewClient(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    #@4
    .line 79
    return-void
.end method

.method public setNewClient(Ljava/net/URL;Z)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@3
    move-result-object v0

    #@4
    .line 98
    invoke-virtual {p0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@7
    move-result-object v1

    #@8
    .line 96
    invoke-static {v0, p1, v1, p2, p0}, Lsun/net/www/protocol/https/HttpsClient;->New(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/URL;Ljavax/net/ssl/HostnameVerifier;ZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@e
    .line 100
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@10
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@12
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->afterConnect()V

    #@15
    .line 95
    return-void
.end method

.method public setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@4
    .line 117
    return-void
.end method

.method public setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@3
    .line 139
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@5
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isCachedConnection()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 140
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    #@e
    .line 142
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    #@10
    check-cast v0, Lsun/net/www/protocol/https/HttpsClient;

    #@12
    invoke-virtual {v0}, Lsun/net/www/protocol/https/HttpsClient;->afterConnect()V

    #@15
    .line 137
    return-void
.end method
