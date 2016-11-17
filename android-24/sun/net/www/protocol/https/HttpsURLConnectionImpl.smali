.class public Lsun/net/www/protocol/https/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field protected delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 92
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/https/Handler;)V
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/https/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 86
    new-instance v0, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@5
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@7
    invoke-direct {v0, v1, p2, p3, p0}, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;Ljavax/net/ssl/HttpsURLConnection;)V

    #@a
    iput-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@c
    .line 83
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/https/Handler;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/https/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/https/Handler;)V

    #@4
    .line 77
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 330
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->connect()V

    #@5
    .line 152
    return-void
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnect()V

    #@5
    .line 264
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/DelegateHttpsURLConnection;->dispose()V

    #@5
    .line 498
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getConnectTimeout()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLengthLong()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDoInput()Z
    .locals 1

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 254
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@3
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLastModified()J
    .locals 2

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 250
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@3
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getReadTimeout()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 2

    #@0
    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v1}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getServerCertificateChain()[Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 211
    :catch_0
    move-exception v0

    #@8
    .line 215
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->isConnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowuserinteraction"    # Z

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    #@5
    .line 461
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunklen"    # I

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    #@5
    .line 534
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->setConnectTimeout(I)V

    #@5
    .line 510
    return-void
.end method

.method protected setConnected(Z)V
    .locals 1
    .param p1, "conn"    # Z

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setConnected(Z)V

    #@5
    .line 170
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "defaultusecaches"    # Z

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    #@5
    .line 489
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "doinput"    # Z

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@5
    .line 445
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "dooutput"    # Z

    #@0
    .prologue
    .line 454
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@5
    .line 453
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    #@5
    .line 526
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    #@5
    .line 530
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifmodifiedsince"    # J

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    #@5
    .line 477
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "shouldFollow"    # Z

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@5
    .line 365
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    #@6
    .line 102
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setNewClient(Ljava/net/URL;Z)V

    #@5
    .line 114
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
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
    .line 129
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    #@5
    .line 128
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
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
    .line 145
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/net/www/protocol/https/AbstractDelegateHttpsURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@5
    .line 144
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->setReadTimeout(I)V

    #@5
    .line 518
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@5
    .line 373
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 315
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "usecaches"    # Z

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@5
    .line 469
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lsun/net/www/protocol/https/HttpsURLConnectionImpl;->delegate:Lsun/net/www/protocol/https/DelegateHttpsURLConnection;

    #@2
    invoke-virtual {v0}, Lsun/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
