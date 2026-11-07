.class abstract Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "DelegatingHttpsURLConnection.java"


# instance fields
.field private final blacklist delegate:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor blacklist <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 46
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 187
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Ljavax/net/ssl/HttpsURLConnection;->connected:Z

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method

.method public whitelist test-api disconnect()V
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public whitelist test-api getAllowUserInteraction()Z
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 61
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getConnectTimeout()I
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getContent()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getContentEncoding()Ljava/lang/String;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getContentLength()I
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getContentType()Ljava/lang/String;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getDate()J
    .registers 3

    .line 155
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getDefaultUseCaches()Z
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getDoInput()Z
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getDoOutput()Z
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getExpiration()J
    .registers 3

    .line 171
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 4

    .line 195
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist test-api getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 3

    .line 199
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHeaderFields()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract whitelist test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public whitelist test-api getIfModifiedSince()J
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getInstanceFollowRedirects()Z
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api getLastModified()J
    .registers 3

    .line 215
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 67
    :cond_8
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 85
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 80
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getReadTimeout()I
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getRequestMethod()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getResponseCode()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract whitelist test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public whitelist test-api getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 74
    :cond_8
    invoke-virtual {p0}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public whitelist test-api getURL()Ljava/net/URL;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getUseCaches()Z
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result p0

    return p0
.end method

.method protected abstract blacklist handshake()Lcom/android/okhttp/Handshake;
.end method

.method public whitelist test-api setAllowUserInteraction(Z)V
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public whitelist test-api setChunkedStreamingMode(I)V
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public whitelist test-api setConnectTimeout(I)V
    .registers 2

    .line 267
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public whitelist test-api setDefaultUseCaches(Z)V
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public whitelist test-api setDoInput(Z)V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public whitelist test-api setDoOutput(Z)V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public whitelist test-api setFixedLengthStreamingMode(I)V
    .registers 2

    .line 287
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public abstract whitelist test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
.end method

.method public whitelist test-api setIfModifiedSince(J)V
    .registers 3

    .line 255
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public whitelist test-api setInstanceFollowRedirects(Z)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public whitelist test-api setReadTimeout(I)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public whitelist test-api setRequestMethod(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 259
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract whitelist test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
.end method

.method public whitelist test-api setUseCaches(Z)V
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api usingProxy()Z
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result p0

    return p0
.end method
