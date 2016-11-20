.class public Lorg/apache/http/impl/client/DefaultHttpClient;
.super Lorg/apache/http/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 138
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@4
    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@4
    .line 132
    return-void
.end method


# virtual methods
.method protected createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 3

    #@0
    .prologue
    .line 252
    new-instance v0, Lorg/apache/http/auth/AuthSchemeRegistry;

    #@2
    invoke-direct {v0}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    #@5
    .line 254
    .local v0, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    const-string/jumbo v1, "Basic"

    #@8
    .line 255
    new-instance v2, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    #@a
    invoke-direct {v2}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    #@d
    .line 253
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    #@10
    .line 257
    const-string/jumbo v1, "Digest"

    #@13
    .line 258
    new-instance v2, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    #@15
    invoke-direct {v2}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    #@18
    .line 256
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    #@1b
    .line 259
    return-object v0
.end method

.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 13

    #@0
    .prologue
    .line 179
    new-instance v8, Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@2
    invoke-direct {v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    #@5
    .line 181
    .local v8, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    #@7
    const-string/jumbo v10, "http"

    #@a
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    #@d
    move-result-object v11

    #@e
    const/16 v12, 0x50

    #@10
    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@13
    .line 180
    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@16
    .line 183
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    #@18
    const-string/jumbo v10, "https"

    #@1b
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@1e
    move-result-object v11

    #@1f
    const/16 v12, 0x1bb

    #@21
    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    #@24
    .line 182
    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    #@27
    .line 185
    const/4 v2, 0x0

    #@28
    .line 186
    .local v2, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@2b
    move-result-object v7

    #@2c
    .line 188
    .local v7, "params":Lorg/apache/http/params/HttpParams;
    const/4 v6, 0x0

    #@2d
    .line 192
    .local v6, "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    const-string/jumbo v9, "http.connection-manager.factory-object"

    #@30
    .line 191
    invoke-interface {v7, v9}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    .end local v6    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v6, Lorg/apache/http/conn/ClientConnectionManagerFactory;

    #@36
    .line 193
    .local v6, "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    if-nez v6, :cond_0

    #@38
    .line 195
    const-string/jumbo v9, "http.connection-manager.factory-class-name"

    #@3b
    .line 194
    invoke-interface {v7, v9}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/String;

    #@41
    .line 196
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@43
    .line 198
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@46
    move-result-object v1

    #@47
    .line 199
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    .end local v6    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v6, Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 210
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_0
    if-eqz v6, :cond_1

    #@4f
    .line 211
    invoke-interface {v6, v7, v8}, Lorg/apache/http/conn/ClientConnectionManagerFactory;->newInstance(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    #@52
    move-result-object v2

    #@53
    .line 216
    .local v2, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    :goto_0
    return-object v2

    #@54
    .line 204
    .end local v6    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    .restart local v0    # "className":Ljava/lang/String;
    .local v2, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    :catch_0
    move-exception v5

    #@55
    .line 205
    .local v5, "ex":Ljava/lang/InstantiationException;
    new-instance v9, Ljava/lang/InstantiationError;

    #@57
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    invoke-direct {v9, v10}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    #@5e
    throw v9

    #@5f
    .line 202
    .end local v5    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    #@60
    .line 203
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/IllegalAccessError;

    #@62
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    invoke-direct {v9, v10}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@69
    throw v9

    #@6a
    .line 200
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    #@6b
    .line 201
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v9, Ljava/lang/IllegalStateException;

    #@6d
    new-instance v10, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v11, "Invalid class name: "

    #@75
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v10

    #@79
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v10

    #@7d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@84
    throw v9

    #@85
    .line 213
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_1
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    #@87
    .end local v2    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@8a
    move-result-object v9

    #@8b
    invoke-direct {v2, v9, v8}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    #@8e
    .local v2, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    goto :goto_0
.end method

.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    #@0
    .prologue
    .line 246
    new-instance v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    #@5
    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 1

    #@0
    .prologue
    .line 241
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    #@5
    return-object v0
.end method

.method protected createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;
    .locals 3

    #@0
    .prologue
    .line 265
    new-instance v0, Lorg/apache/http/cookie/CookieSpecRegistry;

    #@2
    invoke-direct {v0}, Lorg/apache/http/cookie/CookieSpecRegistry;-><init>()V

    #@5
    .line 267
    .local v0, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string/jumbo v1, "best-match"

    #@8
    .line 268
    new-instance v2, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;

    #@a
    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;-><init>()V

    #@d
    .line 266
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    #@10
    .line 270
    const-string/jumbo v1, "compatibility"

    #@13
    .line 271
    new-instance v2, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;

    #@15
    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    #@18
    .line 269
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    #@1b
    .line 273
    const-string/jumbo v1, "netscape"

    #@1e
    .line 274
    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;

    #@20
    invoke-direct {v2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    #@23
    .line 272
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    #@26
    .line 276
    const-string/jumbo v1, "rfc2109"

    #@29
    .line 277
    new-instance v2, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;

    #@2b
    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;-><init>()V

    #@2e
    .line 275
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    #@31
    .line 279
    const-string/jumbo v1, "rfc2965"

    #@34
    .line 280
    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;

    #@36
    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;-><init>()V

    #@39
    .line 278
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    #@3c
    .line 281
    return-object v0
.end method

.method protected createCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    #@0
    .prologue
    .line 332
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    #@5
    return-object v0
.end method

.method protected createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 1

    #@0
    .prologue
    .line 338
    new-instance v0, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    #@5
    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    #@0
    .prologue
    .line 222
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    #@5
    .line 224
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string/jumbo v1, "http.authscheme-registry"

    #@8
    .line 225
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    #@b
    move-result-object v2

    #@c
    .line 223
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    .line 227
    const-string/jumbo v1, "http.cookiespec-registry"

    #@12
    .line 228
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    #@15
    move-result-object v2

    #@16
    .line 226
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@19
    .line 230
    const-string/jumbo v1, "http.cookie-store"

    #@1c
    .line 231
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    #@1f
    move-result-object v2

    #@20
    .line 229
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 233
    const-string/jumbo v1, "http.auth.credentials-provider"

    #@26
    .line 234
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    #@29
    move-result-object v2

    #@2a
    .line 232
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@2d
    .line 235
    return-object v0
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 5

    #@0
    .prologue
    .line 144
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #@2
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@5
    .line 146
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@7
    .line 145
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    #@a
    .line 148
    const-string/jumbo v3, "ISO-8859-1"

    #@d
    .line 147
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@10
    .line 157
    const/4 v3, 0x0

    #@11
    .line 156
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    #@14
    .line 161
    const-string/jumbo v3, "org.apache.http.client"

    #@17
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1e
    move-result-object v4

    #@1f
    .line 160
    invoke-static {v3, v4}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    #@22
    move-result-object v2

    #@23
    .line 162
    .local v2, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v2, :cond_0

    #@25
    .line 163
    invoke-virtual {v2}, Lorg/apache/http/util/VersionInfo;->getRelease()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 165
    .local v1, "release":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Apache-HttpClient/"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, " (java 1.4)"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 164
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@47
    .line 167
    return-object v0

    #@48
    .line 163
    .end local v1    # "release":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "UNAVAILABLE"

    #@4b
    .restart local v1    # "release":Ljava/lang/String;
    goto :goto_0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    #@0
    .prologue
    .line 287
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    #@5
    .line 288
    .local v0, "httpproc":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v1, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    #@7
    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@d
    .line 290
    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    #@f
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    #@12
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@15
    .line 291
    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    #@17
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    #@1a
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@1d
    .line 293
    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    #@1f
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    #@22
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@25
    .line 294
    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    #@27
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    #@2a
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@2d
    .line 295
    new-instance v1, Lorg/apache/http/protocol/RequestExpectContinue;

    #@2f
    invoke-direct {v1}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>()V

    #@32
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@35
    .line 297
    new-instance v1, Lorg/apache/http/client/protocol/RequestAddCookies;

    #@37
    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    #@3a
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@3d
    .line 298
    new-instance v1, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    #@3f
    invoke-direct {v1}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    #@42
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    #@45
    .line 300
    new-instance v1, Lorg/apache/http/client/protocol/RequestTargetAuthentication;

    #@47
    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestTargetAuthentication;-><init>()V

    #@4a
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@4d
    .line 301
    new-instance v1, Lorg/apache/http/client/protocol/RequestProxyAuthentication;

    #@4f
    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestProxyAuthentication;-><init>()V

    #@52
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@55
    .line 302
    return-object v0
.end method

.method protected createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    #@0
    .prologue
    .line 308
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    #@5
    return-object v0
.end method

.method protected createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 3

    #@0
    .prologue
    .line 346
    new-instance v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    #@2
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    #@e
    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    #@0
    .prologue
    .line 326
    new-instance v0, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    #@5
    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    #@0
    .prologue
    .line 314
    new-instance v0, Lorg/apache/http/impl/client/DefaultRedirectHandler;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    #@5
    return-object v0
.end method

.method protected createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    #@0
    .prologue
    .line 173
    new-instance v0, Lorg/apache/http/protocol/HttpRequestExecutor;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    #@5
    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    #@0
    .prologue
    .line 320
    new-instance v0, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    #@5
    return-object v0
.end method

.method protected createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .locals 1

    #@0
    .prologue
    .line 353
    new-instance v0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;-><init>()V

    #@5
    return-object v0
.end method
