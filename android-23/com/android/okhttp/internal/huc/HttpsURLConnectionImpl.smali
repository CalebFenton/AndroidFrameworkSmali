.class public final Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;
.super Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field private final delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@5
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 29
    new-instance v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/android/okhttp/OkHttpClient;)V

    #@5
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;-><init>(Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;)V

    #@8
    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->connect()V

    #@3
    return-void
.end method

.method public bridge synthetic disconnect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->disconnect()V

    #@3
    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getAllowUserInteraction()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getCipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getConnectTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getContentEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getContentLength()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentLength()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getContentType()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDate()J
    .locals 2

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDate()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDefaultUseCaches()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoInput()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getDoOutput()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getExpiration()J
    .locals 2

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getExpiration()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getHeaderFields()Ljava/util/Map;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .locals 2

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getIfModifiedSince()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getInstanceFollowRedirects()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getLastModified()J
    .locals 2

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLastModified()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getPermission()Ljava/security/Permission;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getPermission()Ljava/security/Permission;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getReadTimeout()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getResponseCode()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getResponseMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getURL()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->getUseCaches()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected handshake()Lcom/android/okhttp/Handshake;
    .locals 2

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Connection has not yet been established"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@11
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@13
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->hasResponse()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@1b
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@1d
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->getResponse()Lcom/android/okhttp/Response;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    #@24
    move-result-object v0

    #@25
    .line 45
    :goto_0
    return-object v0

    #@26
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@28
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->handshake:Lcom/android/okhttp/Handshake;

    #@2a
    goto :goto_0
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setAllowUserInteraction(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .locals 0
    .param p1, "chunkLength"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setChunkedStreamingMode(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setConnectTimeout(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDefaultUseCaches(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoInput(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setDoOutput(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(I)V
    .locals 0
    .param p1, "contentLength"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    #@3
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    #@5
    .line 72
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    #@7
    .line 50
    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setIfModifiedSince(J)V

    #@3
    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setReadTimeout(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/HttpsURLConnectionImpl;->delegate:Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/internal/huc/HttpURLConnectionImpl;->client:Lcom/android/okhttp/OkHttpClient;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    #@7
    .line 58
    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->setUseCaches(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;->usingProxy()Z

    #@3
    move-result v0

    #@4
    return v0
.end method
