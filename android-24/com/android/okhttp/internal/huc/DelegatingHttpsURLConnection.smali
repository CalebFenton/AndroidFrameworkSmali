.class abstract Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "DelegatingHttpsURLConnection.java"


# instance fields
.field private final delegate:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "delegate"    # Ljava/net/HttpURLConnection;

    #@0
    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    #@7
    .line 45
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@9
    .line 43
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 185
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
    .line 88
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->connected:Z

    #@3
    .line 89
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@8
    .line 87
    return-void
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@5
    .line 92
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 59
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    #@4
    move-result-object v0

    #@5
    .line 60
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

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
    .line 133
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDoInput()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 178
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public getIfModifiedSince()J
    .locals 2

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

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
    .line 214
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 64
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    #@4
    move-result-object v0

    #@5
    .line 65
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-nez v0, :cond_0

    #@7
    return-object v2

    #@8
    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    .line 67
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@15
    move-result v2

    #@16
    new-array v2, v2, [Ljava/security/cert/Certificate;

    #@18
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, [Ljava/security/cert/Certificate;

    #@1e
    :cond_1
    return-object v2
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 83
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    #@4
    move-result-object v0

    #@5
    .line 84
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    const/4 v1, 0x0

    #@1
    .line 78
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    #@4
    move-result-object v0

    #@5
    .line 79
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
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
    .line 222
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

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
    .line 278
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

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
    .line 182
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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
    .line 105
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

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
    .line 109
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 71
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    #@4
    move-result-object v0

    #@5
    .line 72
    .local v0, "handshake":Lcom/android/okhttp/Handshake;
    if-nez v0, :cond_0

    #@7
    return-object v2

    #@8
    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    .line 74
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@15
    move-result v2

    #@16
    new-array v2, v2, [Ljava/security/cert/Certificate;

    #@18
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, [Ljava/security/cert/Certificate;

    #@1e
    :cond_1
    return-object v2
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected abstract handshake()Lcom/android/okhttp/Handshake;
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    #@5
    .line 237
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    #@5
    .line 289
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@5
    .line 265
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    #@5
    .line 241
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    #@5
    .line 245
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@5
    .line 249
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    #@5
    .line 285
    return-void
.end method

.method public abstract setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    #@5
    .line 253
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@5
    .line 124
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@5
    .line 273
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
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@5
    .line 112
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 257
    return-void
.end method

.method public abstract setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    #@5
    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
