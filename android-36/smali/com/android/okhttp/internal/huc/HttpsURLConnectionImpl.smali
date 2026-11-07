.class public final Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;
.super Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field private final greylist delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 44
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .registers 4

    .line 35
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 5

    .line 39
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/URLFilter;)V

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->connect()V

    return-void
.end method

.method public bridge synthetic whitelist test-api disconnect()V
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->disconnect()V

    return-void
.end method

.method public bridge synthetic whitelist test-api getAllowUserInteraction()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getAllowUserInteraction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getCipherSuite()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getConnectTimeout()I
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getConnectTimeout()I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getContent()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getContentEncoding()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getContentLength()I
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getContentLengthLong()J
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api getContentType()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getDate()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api getDefaultUseCaches()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDefaultUseCaches()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getDoInput()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoInput()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getDoOutput()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoOutput()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getExpiration()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic whitelist test-api getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 4

    .line 94
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic whitelist test-api getHeaderFields()Ljava/util/Map;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getIfModifiedSince()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getInstanceFollowRedirects()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getLastModified()J
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getPermission()Ljava/security/Permission;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getReadTimeout()I
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getReadTimeout()I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getRequestMethod()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getResponseCode()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getURL()Ljava/net/URL;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api getUseCaches()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getUseCaches()Z

    move-result p0

    return p0
.end method

.method protected blacklist handshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_1e

    .line 55
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 56
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    return-object p0

    .line 57
    :cond_19
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    return-object p0

    .line 49
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Connection has not yet been established"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic whitelist test-api setAllowUserInteraction(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setChunkedStreamingMode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setConnectTimeout(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setDefaultUseCaches(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setDoInput(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setDoOutput(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setFixedLengthStreamingMode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public whitelist test-api setFixedLengthStreamingMode(J)V
    .registers 3

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public whitelist test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    return-void
.end method

.method public bridge synthetic whitelist test-api setIfModifiedSince(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setInstanceFollowRedirects(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setReadTimeout(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setRequestMethod(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 78
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    iget-object p0, p0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    return-void

    .line 75
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sslSocketFactory == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic whitelist test-api setUseCaches(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api usingProxy()Z
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->usingProxy()Z

    move-result p0

    return p0
.end method
