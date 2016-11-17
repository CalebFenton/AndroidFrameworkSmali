.class public Lsun/net/www/http/HttpClient;
.super Lsun/net/NetworkClient;
.source "HttpClient.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final HTTP_CONTINUE:I = 0x64

.field static final httpPortNumber:I = 0x50

.field protected static kac:Lsun/net/www/http/KeepAliveCache;

.field private static keepAliveProp:Z

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field private static retryPostProp:Z


# instance fields
.field private cacheRequest:Ljava/net/CacheRequest;

.field protected cachedHttpClient:Z

.field private capture:Lsun/net/www/http/HttpCapture;

.field failedOnce:Z

.field protected host:Ljava/lang/String;

.field private ignoreContinue:Z

.field protected inCache:Z

.field keepAliveConnections:I

.field keepAliveTimeout:I

.field volatile keepingAlive:Z

.field protected port:I

.field poster:Lsun/net/www/http/PosterOutputStream;

.field protected proxyDisabled:Z

.field requests:Lsun/net/www/MessageHeader;

.field public reuse:Z

.field streaming:Z

.field protected url:Ljava/net/URL;

.field public usingProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const-class v2, Lsun/net/www/http/HttpClient;

    #@3
    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v2, 0x0

    #@a
    :goto_0
    sput-boolean v2, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    #@c
    .line 93
    new-instance v2, Lsun/net/www/http/KeepAliveCache;

    #@e
    invoke-direct {v2}, Lsun/net/www/http/KeepAliveCache;-><init>()V

    #@11
    sput-object v2, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@13
    .line 95
    sput-boolean v3, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    #@15
    .line 99
    sput-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    #@17
    .line 126
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    #@1a
    move-result-object v2

    #@1b
    sput-object v2, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@1d
    .line 147
    new-instance v2, Lsun/security/action/GetPropertyAction;

    #@1f
    const-string/jumbo v4, "http.keepAlive"

    #@22
    invoke-direct {v2, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@25
    .line 146
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/String;

    #@2b
    .line 150
    .local v0, "keepAlive":Ljava/lang/String;
    new-instance v2, Lsun/security/action/GetPropertyAction;

    #@2d
    const-string/jumbo v4, "sun.net.http.retryPost"

    #@30
    invoke-direct {v2, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@33
    .line 149
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/String;

    #@39
    .line 152
    .local v1, "retryPost":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@3b
    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@42
    move-result v2

    #@43
    sput-boolean v2, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    #@45
    .line 158
    :goto_1
    if-eqz v1, :cond_2

    #@47
    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@4e
    move-result v2

    #@4f
    sput-boolean v2, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    #@51
    .line 45
    :goto_2
    return-void

    #@52
    .end local v0    # "keepAlive":Ljava/lang/String;
    .end local v1    # "retryPost":Ljava/lang/String;
    :cond_0
    move v2, v3

    #@53
    goto :goto_0

    #@54
    .line 155
    .restart local v0    # "keepAlive":Ljava/lang/String;
    .restart local v1    # "retryPost":Ljava/lang/String;
    :cond_1
    sput-boolean v3, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    #@56
    goto :goto_1

    #@57
    .line 161
    :cond_2
    sput-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    #@59
    goto :goto_2
.end method

.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 174
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    #@5
    .line 47
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    #@7
    .line 55
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@9
    .line 61
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@b
    .line 64
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    #@e
    .line 87
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@10
    .line 101
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@12
    .line 102
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@15
    .line 112
    iput v1, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    #@17
    .line 115
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    #@19
    .line 121
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    #@1b
    .line 124
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@1d
    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    nop

    #@2
    nop

    #@3
    const/4 v1, -0x1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1, v2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@8
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
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
    .line 197
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@4
    .line 196
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "proxyDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    if-eqz p4, :cond_0

    #@2
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@4
    .line 239
    :goto_0
    const/4 v1, -0x1

    #@5
    .line 238
    invoke-direct {p0, p1, v0, v1}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    #@8
    .line 237
    return-void

    #@9
    .line 239
    :cond_0
    const-string/jumbo v0, "http"

    #@c
    invoke-static {p2, p3, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;IZI)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "proxyDisabled"    # Z
    .param p5, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    if-eqz p4, :cond_0

    #@2
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@4
    :goto_0
    invoke-direct {p0, p1, v0, p5}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    #@7
    .line 244
    return-void

    #@8
    .line 246
    :cond_0
    const-string/jumbo v0, "http"

    #@b
    invoke-static {p2, p3, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;I)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 200
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    #@6
    .line 47
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    #@8
    .line 55
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@a
    .line 61
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@c
    .line 64
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    #@f
    .line 87
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@11
    .line 101
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@13
    .line 102
    iput v3, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@15
    .line 112
    iput v1, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    #@17
    .line 115
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    #@19
    .line 121
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    #@1b
    .line 124
    iput-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@1d
    .line 201
    if-nez p2, :cond_0

    #@1f
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@21
    .end local p2    # "p":Ljava/net/Proxy;
    :cond_0
    iput-object p2, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@23
    .line 202
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@29
    .line 203
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@2b
    .line 204
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    #@31
    .line 205
    iget v0, p0, Lsun/net/www/http/HttpClient;->port:I

    #@33
    if-ne v0, v3, :cond_1

    #@35
    .line 206
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getDefaultPort()I

    #@38
    move-result v0

    #@39
    iput v0, p0, Lsun/net/www/http/HttpClient;->port:I

    #@3b
    .line 208
    :cond_1
    invoke-virtual {p0, p3}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    #@3e
    .line 210
    invoke-static {p1}, Lsun/net/www/http/HttpCapture;->getCapture(Ljava/net/URL;)Lsun/net/www/http/HttpCapture;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@44
    .line 211
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    #@47
    .line 200
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Z)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, p1, v0, v1, p2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/lang/String;IZ)V

    #@5
    .line 183
    return-void
.end method

.method public static New(Ljava/net/URL;)Lsun/net/www/http/HttpClient;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    invoke-static {p0, v0, v1, v2, v3}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/lang/String;IZ)Lsun/net/www/http/HttpClient;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    const-string/jumbo v0, "http"

    #@3
    invoke-static {p1, p2, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    #@6
    move-result-object v0

    #@7
    .line 333
    const/4 v1, -0x1

    #@8
    const/4 v2, 0x0

    #@9
    .line 332
    invoke-static {p0, v0, v1, p3, v2}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "useCache"    # Z
    .param p4, "to"    # I
    .param p5, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    const-string/jumbo v0, "http"

    #@3
    invoke-static {p1, p2, v0}, Lsun/net/www/http/HttpClient;->newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, v0, p4, p3, p5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/net/Proxy;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "p"    # Ljava/net/Proxy;
    .param p2, "to"    # I
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0, p3}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "p"    # Ljava/net/Proxy;
    .param p2, "to"    # I
    .param p3, "useCache"    # Z
    .param p4, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 266
    if-nez p1, :cond_0

    #@4
    .line 267
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@6
    .line 269
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 271
    .local v0, "ret":Lsun/net/www/http/HttpClient;
    if-eqz p3, :cond_6

    #@9
    .line 272
    sget-object v2, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@b
    invoke-virtual {v2, p0, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    #@e
    move-result-object v0

    #@f
    .line 273
    .local v0, "ret":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_1

    #@11
    if-eqz p4, :cond_1

    #@13
    .line 274
    invoke-virtual {p4}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    #@16
    move-result v2

    #@17
    .line 273
    if-eqz v2, :cond_1

    #@19
    .line 275
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "POST"

    #@20
    if-ne v2, v3, :cond_1

    #@22
    .line 276
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->available()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 277
    iput-boolean v4, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@2a
    .line 278
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@2d
    .line 279
    const/4 v0, 0x0

    #@2e
    .line 283
    .end local v0    # "ret":Lsun/net/www/http/HttpClient;
    :cond_1
    if-eqz v0, :cond_6

    #@30
    .line 284
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@32
    if-eqz v2, :cond_2

    #@34
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@36
    invoke-virtual {v2, p1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_3

    #@3c
    .line 285
    :cond_2
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@3e
    if-nez v2, :cond_7

    #@40
    if-nez p1, :cond_7

    #@42
    .line 286
    :cond_3
    monitor-enter v0

    #@43
    .line 287
    const/4 v2, 0x1

    #@44
    :try_start_0
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    #@46
    .line 288
    sget-boolean v2, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    #@48
    if-nez v2, :cond_4

    #@4a
    iget-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@4c
    if-nez v2, :cond_4

    #@4e
    new-instance v2, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 286
    :catchall_0
    move-exception v2

    #@55
    monitor-exit v0

    #@56
    throw v2

    #@57
    .line 289
    :cond_4
    const/4 v2, 0x0

    #@58
    :try_start_1
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@5a
    .line 290
    if-eqz p4, :cond_5

    #@5c
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_5

    #@62
    .line 291
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    #@64
    invoke-virtual {p4, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    #@67
    .line 292
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v3, "KeepAlive stream retrieved from the cache, "

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v2}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    monitor-exit v0

    #@7f
    .line 307
    :cond_6
    :goto_0
    if-nez v0, :cond_8

    #@81
    .line 308
    new-instance v0, Lsun/net/www/http/HttpClient;

    #@83
    invoke-direct {v0, p0, p1, p2}, Lsun/net/www/http/HttpClient;-><init>(Ljava/net/URL;Ljava/net/Proxy;I)V

    #@86
    .line 320
    :goto_1
    return-object v0

    #@87
    .line 299
    :cond_7
    monitor-enter v0

    #@88
    .line 300
    const/4 v2, 0x0

    #@89
    :try_start_2
    iput-boolean v2, v0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@8b
    .line 301
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8e
    monitor-exit v0

    #@8f
    .line 303
    const/4 v0, 0x0

    #@90
    .local v0, "ret":Lsun/net/www/http/HttpClient;
    goto :goto_0

    #@91
    .line 299
    .end local v0    # "ret":Lsun/net/www/http/HttpClient;
    :catchall_1
    move-exception v2

    #@92
    monitor-exit v0

    #@93
    throw v2

    #@94
    .line 310
    :cond_8
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@97
    move-result-object v1

    #@98
    .line 311
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_a

    #@9a
    .line 312
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@9c
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@9e
    if-eq v2, v3, :cond_9

    #@a0
    iget-object v2, v0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@a2
    if-nez v2, :cond_b

    #@a4
    .line 313
    :cond_9
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    #@b3
    move-result v3

    #@b4
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@b7
    .line 318
    :cond_a
    :goto_2
    iput-object p0, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@b9
    goto :goto_1

    #@ba
    .line 315
    :cond_b
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    #@c1
    move-result v3

    #@c2
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@c5
    goto :goto_2
.end method

.method public static New(Ljava/net/URL;Z)Lsun/net/www/http/HttpClient;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {p0, v0, v1, p1, v2}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "proto"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "http"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 75
    const/16 v0, 0x50

    #@b
    return v0

    #@c
    .line 76
    :cond_0
    const-string/jumbo v0, "https"

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 77
    const/16 v0, 0x1bb

    #@17
    return v0

    #@18
    .line 78
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method private static logFinest(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    sget-object v0, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@2
    const/16 v1, 0x12c

    #@4
    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 129
    sget-object v0, Lsun/net/www/http/HttpClient;->logger:Lsun/util/logging/PlatformLogger;

    #@c
    invoke-virtual {v0, p0}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@f
    .line 127
    :cond_0
    return-void
.end method

.method protected static newHttpProxy(Ljava/lang/String;ILjava/lang/String;)Ljava/net/Proxy;
    .locals 4
    .param p0, "proxyHost"    # Ljava/lang/String;
    .param p1, "proxyPort"    # I
    .param p2, "proto"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    if-eqz p0, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 217
    :cond_0
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@6
    return-object v2

    #@7
    .line 218
    :cond_1
    if-gez p1, :cond_2

    #@9
    invoke-static {p2}, Lsun/net/www/http/HttpClient;->getDefaultPort(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    .line 219
    .local v0, "pport":I
    :goto_0
    invoke-static {p0, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    #@10
    move-result-object v1

    #@11
    .line 220
    .local v1, "saddr":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    #@13
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@15
    invoke-direct {v2, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    #@18
    return-object v2

    #@19
    .end local v0    # "pport":I
    .end local v1    # "saddr":Ljava/net/InetSocketAddress;
    :cond_2
    move v0, p1

    #@1a
    .line 218
    goto :goto_0
.end method

.method private parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    .locals 25
    .param p1, "responses"    # Lsun/net/www/MessageHeader;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 677
    const/4 v3, -0x1

    #@1
    move-object/from16 v0, p0

    #@3
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@5
    .line 678
    const/4 v3, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    #@a
    .line 680
    const/16 v22, 0x0

    #@c
    .line 681
    .local v22, "ret":Z
    const/16 v3, 0x8

    #@e
    new-array v2, v3, [B

    #@10
    .line 684
    .local v2, "b":[B
    const/16 v17, 0x0

    #@12
    .line 685
    .local v17, "nread":I
    :try_start_0
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@16
    const/16 v4, 0xa

    #@18
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    #@1b
    .line 686
    :goto_0
    const/16 v3, 0x8

    #@1d
    move/from16 v0, v17

    #@1f
    if-ge v0, v3, :cond_0

    #@21
    .line 687
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@25
    rsub-int/lit8 v4, v17, 0x8

    #@27
    move/from16 v0, v17

    #@29
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    #@2c
    move-result v19

    #@2d
    .line 688
    .local v19, "r":I
    if-gez v19, :cond_5

    #@2f
    .line 693
    .end local v19    # "r":I
    :cond_0
    const/16 v16, 0x0

    #@31
    .line 694
    .local v16, "keep":Ljava/lang/String;
    const/4 v3, 0x0

    #@32
    aget-byte v3, v2, v3

    #@34
    const/16 v4, 0x48

    #@36
    if-ne v3, v4, :cond_7

    #@38
    const/4 v3, 0x1

    #@39
    aget-byte v3, v2, v3

    #@3b
    const/16 v4, 0x54

    #@3d
    if-ne v3, v4, :cond_7

    #@3f
    .line 695
    const/4 v3, 0x2

    #@40
    aget-byte v3, v2, v3

    #@42
    const/16 v4, 0x54

    #@44
    if-ne v3, v4, :cond_7

    #@46
    const/4 v3, 0x3

    #@47
    aget-byte v3, v2, v3

    #@49
    const/16 v4, 0x50

    #@4b
    if-ne v3, v4, :cond_7

    #@4d
    const/4 v3, 0x4

    #@4e
    aget-byte v3, v2, v3

    #@50
    const/16 v4, 0x2f

    #@52
    if-ne v3, v4, :cond_7

    #@54
    .line 696
    const/4 v3, 0x5

    #@55
    aget-byte v3, v2, v3

    #@57
    const/16 v4, 0x31

    #@59
    if-ne v3, v4, :cond_7

    #@5b
    const/4 v3, 0x6

    #@5c
    aget-byte v3, v2, v3

    #@5e
    const/16 v4, 0x2e

    #@60
    if-ne v3, v4, :cond_6

    #@62
    const/16 v22, 0x1

    #@64
    .line 697
    :goto_1
    move-object/from16 v0, p0

    #@66
    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@68
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    #@6b
    .line 698
    if-eqz v22, :cond_c

    #@6d
    .line 699
    move-object/from16 v0, p0

    #@6f
    iget-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@71
    move-object/from16 v0, p1

    #@73
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    #@76
    .line 703
    invoke-virtual/range {p3 .. p3}, Lsun/net/www/protocol/http/HttpURLConnection;->getCookieHandler()Ljava/net/CookieHandler;

    #@79
    move-result-object v11

    #@7a
    .line 704
    .local v11, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v11, :cond_1

    #@7c
    .line 705
    move-object/from16 v0, p0

    #@7e
    iget-object v3, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@80
    invoke-static {v3}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    #@83
    move-result-object v24

    #@84
    .line 710
    .local v24, "uri":Ljava/net/URI;
    if-eqz v24, :cond_1

    #@86
    .line 711
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    #@89
    move-result-object v3

    #@8a
    move-object/from16 v0, v24

    #@8c
    invoke-virtual {v11, v0, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    #@8f
    .line 720
    .end local v24    # "uri":Ljava/net/URI;
    :cond_1
    move-object/from16 v0, p0

    #@91
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@93
    if-eqz v3, :cond_2

    #@95
    .line 721
    const-string/jumbo v3, "Proxy-Connection"

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v16

    #@9e
    .line 723
    .end local v16    # "keep":Ljava/lang/String;
    :cond_2
    if-nez v16, :cond_3

    #@a0
    .line 724
    const-string/jumbo v3, "Connection"

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@a8
    move-result-object v16

    #@a9
    .line 726
    :cond_3
    if-eqz v16, :cond_a

    #@ab
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@ad
    move-object/from16 v0, v16

    #@af
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    const-string/jumbo v4, "keep-alive"

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_a

    #@bc
    .line 730
    new-instance v18, Lsun/net/www/HeaderParser;

    #@be
    .line 731
    const-string/jumbo v3, "Keep-Alive"

    #@c1
    move-object/from16 v0, p1

    #@c3
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@c6
    move-result-object v3

    #@c7
    .line 730
    move-object/from16 v0, v18

    #@c9
    invoke-direct {v0, v3}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    #@cc
    .line 732
    .local v18, "p":Lsun/net/www/HeaderParser;
    if-eqz v18, :cond_4

    #@ce
    .line 734
    const-string/jumbo v4, "max"

    #@d1
    move-object/from16 v0, p0

    #@d3
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@d5
    if-eqz v3, :cond_8

    #@d7
    const/16 v3, 0x32

    #@d9
    :goto_2
    move-object/from16 v0, v18

    #@db
    invoke-virtual {v0, v4, v3}, Lsun/net/www/HeaderParser;->findInt(Ljava/lang/String;I)I

    #@de
    move-result v3

    #@df
    move-object/from16 v0, p0

    #@e1
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@e3
    .line 735
    const-string/jumbo v4, "timeout"

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@ea
    if-eqz v3, :cond_9

    #@ec
    const/16 v3, 0x3c

    #@ee
    :goto_3
    move-object/from16 v0, v18

    #@f0
    invoke-virtual {v0, v4, v3}, Lsun/net/www/HeaderParser;->findInt(Ljava/lang/String;I)I

    #@f3
    move-result v3

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f8
    .line 781
    .end local v11    # "cookieHandler":Ljava/net/CookieHandler;
    .end local v18    # "p":Lsun/net/www/HeaderParser;
    :cond_4
    :goto_4
    const/4 v10, -0x1

    #@f9
    .line 784
    .local v10, "code":I
    const/4 v3, 0x0

    #@fa
    :try_start_1
    move-object/from16 v0, p1

    #@fc
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    #@ff
    move-result-object v21

    #@100
    .line 790
    .local v21, "resp":Ljava/lang/String;
    const/16 v3, 0x20

    #@102
    move-object/from16 v0, v21

    #@104
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@107
    move-result v15

    #@108
    .line 791
    .local v15, "ind":I
    :goto_5
    move-object/from16 v0, v21

    #@10a
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@10d
    move-result v3

    #@10e
    const/16 v4, 0x20

    #@110
    if-ne v3, v4, :cond_11

    #@112
    .line 792
    add-int/lit8 v15, v15, 0x1

    #@114
    goto :goto_5

    #@115
    .line 691
    .end local v10    # "code":I
    .end local v15    # "ind":I
    .end local v21    # "resp":Ljava/lang/String;
    .restart local v19    # "r":I
    :cond_5
    add-int v17, v17, v19

    #@117
    goto/16 :goto_0

    #@119
    .line 696
    .end local v19    # "r":I
    .restart local v16    # "keep":Ljava/lang/String;
    :cond_6
    const/16 v22, 0x0

    #@11b
    goto/16 :goto_1

    #@11d
    .line 694
    :cond_7
    const/16 v22, 0x0

    #@11f
    goto/16 :goto_1

    #@121
    .line 734
    .end local v16    # "keep":Ljava/lang/String;
    .restart local v11    # "cookieHandler":Ljava/net/CookieHandler;
    .restart local v18    # "p":Lsun/net/www/HeaderParser;
    :cond_8
    const/4 v3, 0x5

    #@122
    goto :goto_2

    #@123
    .line 735
    :cond_9
    const/4 v3, 0x5

    #@124
    goto :goto_3

    #@125
    .line 737
    .end local v18    # "p":Lsun/net/www/HeaderParser;
    :cond_a
    const/4 v3, 0x7

    #@126
    :try_start_2
    aget-byte v3, v2, v3

    #@128
    const/16 v4, 0x30

    #@12a
    if-eq v3, v4, :cond_4

    #@12c
    .line 742
    if-eqz v16, :cond_b

    #@12e
    .line 748
    const/4 v3, 0x1

    #@12f
    move-object/from16 v0, p0

    #@131
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@133
    goto :goto_4

    #@134
    .line 777
    .end local v11    # "cookieHandler":Ljava/net/CookieHandler;
    :catch_0
    move-exception v12

    #@135
    .line 778
    .local v12, "e":Ljava/io/IOException;
    throw v12

    #@136
    .line 750
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_b
    const/4 v3, 0x5

    #@137
    :try_start_3
    move-object/from16 v0, p0

    #@139
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@13b
    goto :goto_4

    #@13c
    .line 753
    .end local v11    # "cookieHandler":Ljava/net/CookieHandler;
    .restart local v16    # "keep":Ljava/lang/String;
    :cond_c
    const/16 v3, 0x8

    #@13e
    move/from16 v0, v17

    #@140
    if-eq v0, v3, :cond_10

    #@142
    .line 754
    move-object/from16 v0, p0

    #@144
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@146
    if-nez v3, :cond_d

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@14c
    if-eqz v3, :cond_d

    #@14e
    .line 755
    const/4 v3, 0x1

    #@14f
    move-object/from16 v0, p0

    #@151
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@153
    .line 756
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->getRequestMethod()Ljava/lang/String;

    #@156
    move-result-object v3

    #@157
    const-string/jumbo v4, "CONNECT"

    #@15a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15d
    move-result v3

    #@15e
    if-nez v3, :cond_d

    #@160
    .line 757
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@163
    move-result-object v3

    #@164
    const-string/jumbo v4, "POST"

    #@167
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16a
    move-result v3

    #@16b
    if-eqz v3, :cond_e

    #@16d
    .line 758
    sget-boolean v3, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    #@16f
    if-eqz v3, :cond_d

    #@171
    move-object/from16 v0, p0

    #@173
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->streaming:Z

    #@175
    .line 756
    if-eqz v3, :cond_e

    #@177
    .line 772
    :cond_d
    new-instance v3, Ljava/net/SocketException;

    #@179
    const-string/jumbo v4, "Unexpected end of file from server"

    #@17c
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@17f
    throw v3

    #@180
    .line 761
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@183
    .line 762
    const/4 v3, 0x0

    #@184
    move-object/from16 v0, p0

    #@186
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    #@188
    .line 763
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->openServer()V

    #@18b
    .line 764
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    #@18e
    move-result v3

    #@18f
    if-eqz v3, :cond_f

    #@191
    .line 765
    invoke-virtual/range {p3 .. p3}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    #@194
    .line 767
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->afterConnect()V

    #@197
    .line 768
    move-object/from16 v0, p0

    #@199
    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v4, v0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@19f
    move-object/from16 v0, p0

    #@1a1
    invoke-virtual {v0, v3, v4}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    #@1a4
    .line 769
    invoke-virtual/range {p0 .. p3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    #@1a7
    move-result v3

    #@1a8
    return v3

    #@1a9
    .line 775
    :cond_10
    const-string/jumbo v3, "Content-type"

    #@1ac
    const-string/jumbo v4, "unknown/unknown"

    #@1af
    move-object/from16 v0, p1

    #@1b1
    invoke-virtual {v0, v3, v4}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@1b4
    goto/16 :goto_4

    #@1b6
    .line 793
    .end local v16    # "keep":Ljava/lang/String;
    .restart local v10    # "code":I
    .restart local v15    # "ind":I
    .restart local v21    # "resp":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v15, 0x3

    #@1b8
    :try_start_4
    move-object/from16 v0, v21

    #@1ba
    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1bd
    move-result-object v3

    #@1be
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    #@1c1
    move-result v10

    #@1c2
    .line 796
    .end local v15    # "ind":I
    .end local v21    # "resp":Ljava/lang/String;
    :goto_6
    const/16 v3, 0x64

    #@1c4
    if-ne v10, v3, :cond_12

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    #@1ca
    if-eqz v3, :cond_12

    #@1cc
    .line 797
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/MessageHeader;->reset()V

    #@1cf
    .line 798
    invoke-direct/range {p0 .. p3}, Lsun/net/www/http/HttpClient;->parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    #@1d2
    move-result v3

    #@1d3
    return v3

    #@1d4
    .line 801
    :cond_12
    const-wide/16 v6, -0x1

    #@1d6
    .line 809
    .local v6, "cl":J
    const-string/jumbo v3, "Transfer-Encoding"

    #@1d9
    move-object/from16 v0, p1

    #@1db
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@1de
    move-result-object v23

    #@1df
    .line 810
    .local v23, "te":Ljava/lang/String;
    if-eqz v23, :cond_17

    #@1e1
    const-string/jumbo v3, "chunked"

    #@1e4
    move-object/from16 v0, v23

    #@1e6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e9
    move-result v3

    #@1ea
    if-eqz v3, :cond_17

    #@1ec
    .line 811
    new-instance v3, Lsun/net/www/http/ChunkedInputStream;

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    move-object/from16 v1, p1

    #@1f6
    invoke-direct {v3, v4, v0, v1}, Lsun/net/www/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lsun/net/www/http/HttpClient;Lsun/net/www/MessageHeader;)V

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@1fd
    .line 817
    move-object/from16 v0, p0

    #@1ff
    iget v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@201
    const/4 v4, 0x1

    #@202
    if-gt v3, v4, :cond_16

    #@204
    .line 818
    const/4 v3, 0x1

    #@205
    move-object/from16 v0, p0

    #@207
    iput v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@209
    .line 819
    const/4 v3, 0x0

    #@20a
    move-object/from16 v0, p0

    #@20c
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@20e
    .line 823
    :goto_7
    const/4 v3, 0x0

    #@20f
    move-object/from16 v0, p0

    #@211
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@213
    .line 867
    :cond_13
    :goto_8
    const-wide/16 v4, 0x0

    #@215
    cmp-long v3, v6, v4

    #@217
    if-lez v3, :cond_21

    #@219
    .line 871
    if-eqz p2, :cond_14

    #@21b
    .line 873
    const-string/jumbo v3, "content-type"

    #@21e
    move-object/from16 v0, p1

    #@220
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@223
    move-result-object v3

    #@224
    move-object/from16 v0, p2

    #@226
    invoke-virtual {v0, v3}, Lsun/net/ProgressSource;->setContentType(Ljava/lang/String;)V

    #@229
    .line 876
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    #@22c
    move-result v3

    #@22d
    if-eqz v3, :cond_20

    #@22f
    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    #@231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@234
    const-string/jumbo v4, "KeepAlive stream used: "

    #@237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v3

    #@23b
    move-object/from16 v0, p0

    #@23d
    iget-object v4, v0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@23f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v3

    #@243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@246
    move-result-object v3

    #@247
    invoke-static {v3}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V

    #@24a
    .line 879
    new-instance v3, Lsun/net/www/http/KeepAliveStream;

    #@24c
    move-object/from16 v0, p0

    #@24e
    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@250
    move-object/from16 v5, p2

    #@252
    move-object/from16 v8, p0

    #@254
    invoke-direct/range {v3 .. v8}, Lsun/net/www/http/KeepAliveStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;JLsun/net/www/http/HttpClient;)V

    #@257
    move-object/from16 v0, p0

    #@259
    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@25b
    .line 880
    const/4 v3, 0x0

    #@25c
    move-object/from16 v0, p0

    #@25e
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@260
    .line 912
    :cond_15
    :goto_9
    return v22

    #@261
    .line 821
    :cond_16
    const/4 v3, 0x1

    #@262
    move-object/from16 v0, p0

    #@264
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@266
    goto :goto_7

    #@267
    .line 833
    :cond_17
    const-string/jumbo v3, "content-length"

    #@26a
    move-object/from16 v0, p1

    #@26c
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@26f
    move-result-object v9

    #@270
    .line 834
    .local v9, "cls":Ljava/lang/String;
    if-eqz v9, :cond_18

    #@272
    .line 836
    :try_start_5
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    #@275
    move-result-wide v6

    #@276
    .line 841
    :cond_18
    :goto_a
    move-object/from16 v0, p0

    #@278
    iget-object v3, v0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@27a
    const/4 v4, 0x0

    #@27b
    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@27e
    move-result-object v20

    #@27f
    .line 843
    .local v20, "requestLine":Ljava/lang/String;
    if-eqz v20, :cond_19

    #@281
    .line 844
    const-string/jumbo v3, "HEAD"

    #@284
    move-object/from16 v0, v20

    #@286
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@289
    move-result v3

    #@28a
    .line 843
    if-nez v3, :cond_1a

    #@28c
    .line 845
    :cond_19
    const/16 v3, 0x130

    #@28e
    if-ne v10, v3, :cond_1d

    #@290
    .line 847
    :cond_1a
    :goto_b
    const-wide/16 v6, 0x0

    #@292
    .line 850
    :cond_1b
    move-object/from16 v0, p0

    #@294
    iget v3, v0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@296
    const/4 v4, 0x1

    #@297
    if-le v3, v4, :cond_1f

    #@299
    .line 851
    const-wide/16 v4, 0x0

    #@29b
    cmp-long v3, v6, v4

    #@29d
    if-gez v3, :cond_1c

    #@29f
    .line 852
    const/16 v3, 0x130

    #@2a1
    if-ne v10, v3, :cond_1e

    #@2a3
    .line 854
    :cond_1c
    const/4 v3, 0x1

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@2a8
    .line 855
    const/4 v3, 0x0

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@2ad
    goto/16 :goto_8

    #@2af
    .line 837
    .end local v20    # "requestLine":Ljava/lang/String;
    :catch_1
    move-exception v14

    #@2b0
    .line 838
    .local v14, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v6, -0x1

    #@2b2
    goto :goto_a

    #@2b3
    .line 846
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "requestLine":Ljava/lang/String;
    :cond_1d
    const/16 v3, 0xcc

    #@2b5
    if-ne v10, v3, :cond_1b

    #@2b7
    goto :goto_b

    #@2b8
    .line 853
    :cond_1e
    const/16 v3, 0xcc

    #@2ba
    if-eq v10, v3, :cond_1c

    #@2bc
    .line 856
    :cond_1f
    move-object/from16 v0, p0

    #@2be
    iget-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@2c0
    if-eqz v3, :cond_13

    #@2c2
    .line 861
    const/4 v3, 0x0

    #@2c3
    move-object/from16 v0, p0

    #@2c5
    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@2c7
    goto/16 :goto_8

    #@2c9
    .line 883
    .end local v9    # "cls":Ljava/lang/String;
    .end local v20    # "requestLine":Ljava/lang/String;
    :cond_20
    new-instance v3, Lsun/net/www/MeteredStream;

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@2cf
    move-object/from16 v0, p2

    #@2d1
    invoke-direct {v3, v4, v0, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@2d8
    goto :goto_9

    #@2d9
    .line 886
    :cond_21
    const-wide/16 v4, -0x1

    #@2db
    cmp-long v3, v6, v4

    #@2dd
    if-nez v3, :cond_22

    #@2df
    .line 891
    if-eqz p2, :cond_15

    #@2e1
    .line 894
    const-string/jumbo v3, "content-type"

    #@2e4
    move-object/from16 v0, p1

    #@2e6
    invoke-virtual {v0, v3}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@2e9
    move-result-object v3

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    invoke-virtual {v0, v3}, Lsun/net/ProgressSource;->setContentType(Ljava/lang/String;)V

    #@2ef
    .line 898
    new-instance v3, Lsun/net/www/MeteredStream;

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    iget-object v4, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@2f5
    move-object/from16 v0, p2

    #@2f7
    invoke-direct {v3, v4, v0, v6, v7}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    iput-object v3, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@2fe
    goto/16 :goto_9

    #@300
    .line 908
    :cond_22
    if-eqz p2, :cond_15

    #@302
    .line 909
    invoke-virtual/range {p2 .. p2}, Lsun/net/ProgressSource;->finishTracking()V

    #@305
    goto/16 :goto_9

    #@307
    .line 794
    .end local v6    # "cl":J
    .end local v23    # "te":Ljava/lang/String;
    :catch_2
    move-exception v13

    #@308
    .local v13, "e":Ljava/lang/Exception;
    goto/16 :goto_6
.end method

.method private declared-synchronized privilegedOpenServer(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "server"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 482
    :try_start_0
    new-instance v1, Lsun/net/www/http/HttpClient$1;

    #@3
    invoke-direct {v1, p0, p1}, Lsun/net/www/http/HttpClient$1;-><init>(Lsun/net/www/http/HttpClient;Ljava/net/InetSocketAddress;)V

    #@6
    .line 481
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 478
    return-void

    #@b
    .line 488
    :catch_0
    move-exception v0

    #@c
    .line 489
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/io/IOException;

    #@12
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public static declared-synchronized resetProperties()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-class v0, Lsun/net/www/http/HttpClient;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 138
    return-void
.end method

.method private superOpenServer(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-super {p0, p1, p2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    #@3
    .line 498
    return-void
.end method


# virtual methods
.method public afterConnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    return-void
.end method

.method protected declared-synchronized available()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 371
    const/4 v0, 0x1

    #@3
    .line 372
    .local v0, "available":Z
    const/4 v3, -0x1

    #@4
    .line 376
    .local v3, "old":I
    :try_start_0
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@6
    invoke-virtual {v6}, Ljava/net/Socket;->getSoTimeout()I

    #@9
    move-result v3

    #@a
    .line 377
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@c
    const/4 v7, 0x1

    #@d
    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    #@10
    .line 379
    new-instance v5, Ljava/io/BufferedInputStream;

    #@12
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@14
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@17
    move-result-object v6

    #@18
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@1b
    .line 380
    .local v5, "tmpbuf":Ljava/io/BufferedInputStream;
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    #@1e
    move-result v4

    #@1f
    .line 381
    .local v4, "r":I
    if-ne v4, v8, :cond_0

    #@21
    .line 382
    const-string/jumbo v6, "HttpClient.available(): read returned -1: not available"

    #@24
    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 384
    const/4 v0, 0x0

    #@28
    .line 390
    :cond_0
    if-eq v3, v8, :cond_1

    #@2a
    .line 391
    :try_start_1
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@2c
    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2f
    .end local v4    # "r":I
    .end local v5    # "tmpbuf":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_0
    monitor-exit p0

    #@30
    .line 398
    return v0

    #@31
    .line 386
    :catch_0
    move-exception v2

    #@32
    .line 387
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string/jumbo v6, "HttpClient.available(): SocketTimeout: its available"

    #@35
    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 390
    if-eq v3, v8, :cond_1

    #@3a
    .line 391
    :try_start_3
    iget-object v6, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@3c
    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3f
    goto :goto_0

    #@40
    .line 393
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    #@41
    .line 394
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "HttpClient.available(): SocketException: not available"

    #@44
    invoke-static {v6}, Lsun/net/www/http/HttpClient;->logFinest(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    .line 396
    const/4 v0, 0x0

    #@48
    goto :goto_0

    #@49
    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@4a
    .line 390
    if-eq v3, v8, :cond_2

    #@4c
    .line 391
    :try_start_5
    iget-object v7, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@4e
    invoke-virtual {v7, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    #@51
    .line 389
    :cond_2
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@52
    :catchall_1
    move-exception v6

    #@53
    monitor-exit p0

    #@54
    throw v6
.end method

.method public closeIdleConnection()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 419
    sget-object v1, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@3
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@5
    invoke-virtual {v1, v2, v3}, Lsun/net/www/http/KeepAliveCache;->get(Ljava/net/URL;Ljava/lang/Object;)Lsun/net/www/http/HttpClient;

    #@8
    move-result-object v0

    #@9
    .line 420
    .local v0, "http":Lsun/net/www/http/HttpClient;
    if-eqz v0, :cond_0

    #@b
    .line 421
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@e
    .line 418
    :cond_0
    return-void
.end method

.method public closeServer()V
    .locals 2

    #@0
    .prologue
    .line 969
    const/4 v1, 0x0

    #@1
    :try_start_0
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@3
    .line 970
    iget-object v1, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@5
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 967
    :goto_0
    return-void

    #@9
    .line 971
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 951
    return-void
.end method

.method public finished()V
    .locals 1

    #@0
    .prologue
    .line 355
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->reuse:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 356
    return-void

    #@5
    .line 357
    :cond_0
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@b
    .line 358
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@e
    .line 359
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveConnections:I

    #@10
    if-lez v0, :cond_1

    #@12
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 360
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@1a
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 366
    :cond_1
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@23
    .line 354
    :goto_0
    return-void

    #@24
    .line 364
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->putInKeepAliveCache()V

    #@27
    goto :goto_0
.end method

.method getCacheRequest()Ljava/net/CacheRequest;
    .locals 1

    #@0
    .prologue
    .line 937
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    #@2
    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 71
    const/16 v0, 0x50

    #@2
    return v0
.end method

.method public getHttpKeepAliveSet()Z
    .locals 1

    #@0
    .prologue
    .line 170
    sget-boolean v0, Lsun/net/www/http/HttpClient;->keepAliveProp:Z

    #@2
    return v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 916
    :try_start_0
    iget-object v0, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method getKeepAliveTimeout()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Lsun/net/www/http/HttpClient;->keepAliveTimeout:I

    #@2
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@2
    return-object v0
.end method

.method public getProxyHostUsed()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 979
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 980
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 982
    :cond_0
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@8
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/net/InetSocketAddress;

    #@e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getProxyPortUsed()I
    .locals 1

    #@0
    .prologue
    .line 991
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 992
    iget-object v0, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@6
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/net/InetSocketAddress;

    #@c
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 993
    :cond_0
    const/4 v0, -0x1

    #@12
    return v0
.end method

.method getRequestMethod()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 941
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 942
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@7
    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 943
    .local v0, "requestLine":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    .line 944
    const-string/jumbo v1, "\\s+"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    aget-object v1, v1, v2

    #@16
    return-object v1

    #@17
    .line 947
    .end local v0    # "requestLine":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    #@1a
    return-object v1
.end method

.method public getURLFile()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 553
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 554
    :cond_0
    const-string/jumbo v0, "/"

    #@11
    .line 559
    :cond_1
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z

    #@13
    if-eqz v2, :cond_2

    #@15
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->proxyDisabled:Z

    #@17
    if-eqz v2, :cond_3

    #@19
    .line 580
    :cond_2
    :goto_0
    const/16 v2, 0xa

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@1e
    move-result v2

    #@1f
    const/4 v3, -0x1

    #@20
    if-ne v2, v3, :cond_7

    #@22
    .line 581
    return-object v0

    #@23
    .line 563
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    #@25
    const/16 v2, 0x80

    #@27
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2a
    .line 564
    .local v1, "result":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@2c
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 565
    const-string/jumbo v2, ":"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 566
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@3b
    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    if-eqz v2, :cond_4

    #@41
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@43
    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4a
    move-result v2

    #@4b
    if-lez v2, :cond_4

    #@4d
    .line 567
    const-string/jumbo v2, "//"

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    .line 568
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@55
    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 570
    :cond_4
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@5e
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    if-eqz v2, :cond_5

    #@64
    .line 571
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@66
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    .line 573
    :cond_5
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@6f
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    if-eqz v2, :cond_6

    #@75
    .line 574
    const/16 v2, 0x3f

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7a
    .line 575
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@7c
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 578
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    goto :goto_0

    #@88
    .line 583
    .end local v1    # "result":Ljava/lang/StringBuffer;
    :cond_7
    new-instance v2, Ljava/net/MalformedURLException;

    #@8a
    const-string/jumbo v3, "Illegal character in URL"

    #@8d
    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@90
    throw v2
.end method

.method public declared-synchronized isCachedConnection()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 459
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected declared-synchronized isInKeepAliveCache()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 411
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final isKeepingAlive()Z
    .locals 1

    #@0
    .prologue
    .line 929
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public needsTunneling()Z
    .locals 1

    #@0
    .prologue
    .line 452
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected declared-synchronized openServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 507
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 509
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 510
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@9
    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@e
    .line 513
    :cond_0
    iget-boolean v1, p0, Lsun/net/www/http/HttpClient;->keepingAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-eqz v1, :cond_1

    #@12
    monitor-exit p0

    #@13
    .line 514
    return-void

    #@14
    .line 517
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@16
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "http"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_2

    #@23
    .line 518
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@25
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "https"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    .line 517
    if-eqz v1, :cond_4

    #@32
    .line 520
    :cond_2
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@34
    if-eqz v1, :cond_3

    #@36
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@38
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@3b
    move-result-object v1

    #@3c
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@3e
    if-ne v1, v2, :cond_3

    #@40
    .line 521
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@42
    invoke-static {v1}, Lsun/net/www/URLConnection;->setProxiedHost(Ljava/lang/String;)V

    #@45
    .line 522
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@47
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Ljava/net/InetSocketAddress;

    #@4d
    invoke-direct {p0, v1}, Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V

    #@50
    .line 523
    const/4 v1, 0x1

    #@51
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit p0

    #@54
    .line 524
    return-void

    #@55
    .line 527
    :cond_3
    :try_start_2
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@57
    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    #@59
    invoke-virtual {p0, v1, v2}, Lsun/net/www/http/HttpClient;->openServer(Ljava/lang/String;I)V

    #@5c
    .line 528
    const/4 v1, 0x0

    #@5d
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit p0

    #@60
    .line 529
    return-void

    #@61
    .line 536
    :cond_4
    :try_start_3
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@63
    if-eqz v1, :cond_5

    #@65
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@67
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@6a
    move-result-object v1

    #@6b
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@6d
    if-ne v1, v2, :cond_5

    #@6f
    .line 537
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@71
    invoke-static {v1}, Lsun/net/www/URLConnection;->setProxiedHost(Ljava/lang/String;)V

    #@74
    .line 538
    iget-object v1, p0, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@76
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@79
    move-result-object v1

    #@7a
    check-cast v1, Ljava/net/InetSocketAddress;

    #@7c
    invoke-direct {p0, v1}, Lsun/net/www/http/HttpClient;->privilegedOpenServer(Ljava/net/InetSocketAddress;)V

    #@7f
    .line 539
    const/4 v1, 0x1

    #@80
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@82
    monitor-exit p0

    #@83
    .line 540
    return-void

    #@84
    .line 543
    :cond_5
    :try_start_4
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->host:Ljava/lang/String;

    #@86
    iget v2, p0, Lsun/net/www/http/HttpClient;->port:I

    #@88
    invoke-super {p0, v1, v2}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    #@8b
    .line 544
    const/4 v1, 0x0

    #@8c
    iput-boolean v1, p0, Lsun/net/www/http/HttpClient;->usingProxy:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8e
    monitor-exit p0

    #@8f
    .line 545
    return-void

    #@90
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v1

    #@91
    monitor-exit p0

    #@92
    throw v1
.end method

.method public openServer(Ljava/lang/String;I)V
    .locals 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 432
    invoke-virtual {p0, p1, p2}, Lsun/net/NetworkClient;->doConnect(Ljava/lang/String;I)Ljava/net/Socket;

    #@3
    move-result-object v3

    #@4
    iput-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@6
    .line 434
    :try_start_0
    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@8
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@b
    move-result-object v1

    #@c
    .line 435
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 436
    new-instance v2, Lsun/net/www/http/HttpCaptureOutputStream;

    #@12
    iget-object v3, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@14
    invoke-direct {v2, v1, v3}, Lsun/net/www/http/HttpCaptureOutputStream;-><init>(Ljava/io/OutputStream;Lsun/net/www/http/HttpCapture;)V

    #@17
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    move-object v1, v2

    #@18
    .line 438
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v3, Ljava/io/PrintStream;

    #@1a
    .line 439
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@1c
    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1f
    .line 440
    sget-object v5, Lsun/net/www/http/HttpClient;->encoding:Ljava/lang/String;

    #@21
    const/4 v6, 0x0

    #@22
    .line 438
    invoke-direct {v3, v4, v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@25
    iput-object v3, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 444
    iget-object v3, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    #@2d
    .line 431
    return-void

    #@2e
    .line 441
    .end local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    #@2f
    .line 442
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/InternalError;

    #@31
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    sget-object v5, Lsun/net/www/http/HttpClient;->encoding:Ljava/lang/String;

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, " encoding not found"

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3
.end method

.method public parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    .locals 5
    .param p1, "responses"    # Lsun/net/www/MessageHeader;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "httpuc"    # Lsun/net/www/protocol/http/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    :try_start_0
    iget-object v2, p0, Lsun/net/NetworkClient;->serverSocket:Ljava/net/Socket;

    #@2
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@5
    move-result-object v2

    #@6
    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@8
    .line 629
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 630
    new-instance v2, Lsun/net/www/http/HttpCaptureInputStream;

    #@e
    iget-object v3, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@10
    iget-object v4, p0, Lsun/net/www/http/HttpClient;->capture:Lsun/net/www/http/HttpCapture;

    #@12
    invoke-direct {v2, v3, v4}, Lsun/net/www/http/HttpCaptureInputStream;-><init>(Ljava/io/InputStream;Lsun/net/www/http/HttpCapture;)V

    #@15
    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@17
    .line 632
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    #@19
    iget-object v3, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@1b
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@1e
    iput-object v2, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@20
    .line 633
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/http/HttpClient;->parseHTTPHeader(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result v2

    #@24
    return v2

    #@25
    .line 641
    :catch_0
    move-exception v0

    #@26
    .line 642
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@29
    .line 643
    const/4 v2, 0x0

    #@2a
    iput-boolean v2, p0, Lsun/net/www/http/HttpClient;->cachedHttpClient:Z

    #@2c
    .line 644
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@2e
    if-nez v2, :cond_1

    #@30
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 645
    const/4 v2, 0x1

    #@35
    iput-boolean v2, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@37
    .line 646
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->getRequestMethod()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, "CONNECT"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_1

    #@44
    .line 647
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, "POST"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_2

    #@51
    .line 648
    sget-boolean v2, Lsun/net/www/http/HttpClient;->retryPostProp:Z

    #@53
    if-eqz v2, :cond_1

    #@55
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->streaming:Z

    #@57
    .line 646
    if-eqz v2, :cond_2

    #@59
    .line 661
    :cond_1
    throw v0

    #@5a
    .line 652
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->openServer()V

    #@5d
    .line 653
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->needsTunneling()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_3

    #@63
    .line 654
    invoke-virtual {p3}, Lsun/net/www/protocol/http/HttpURLConnection;->doTunneling()V

    #@66
    .line 656
    :cond_3
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->afterConnect()V

    #@69
    .line 657
    iget-object v2, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@6b
    iget-object v3, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@6d
    invoke-virtual {p0, v2, v3}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    #@70
    .line 658
    invoke-virtual {p0, p1, p2, p3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    #@73
    move-result v2

    #@74
    return v2

    #@75
    .line 634
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@76
    .line 637
    .local v1, "stex":Ljava/net/SocketTimeoutException;
    iget-boolean v2, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    #@78
    if-eqz v2, :cond_4

    #@7a
    .line 638
    invoke-virtual {p0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@7d
    .line 640
    :cond_4
    throw v1
.end method

.method protected declared-synchronized putInKeepAliveCache()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 402
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 403
    sget-boolean v0, Lsun/net/www/http/HttpClient;->-assertionsDisabled:Z

    #@7
    if-nez v0, :cond_0

    #@9
    new-instance v0, Ljava/lang/AssertionError;

    #@b
    const-string/jumbo v1, "Duplicate put to keep alive cache"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 404
    return-void

    #@17
    .line 406
    :cond_1
    const/4 v0, 0x1

    #@18
    :try_start_1
    iput-boolean v0, p0, Lsun/net/www/http/HttpClient;->inCache:Z

    #@1a
    .line 407
    sget-object v0, Lsun/net/www/http/HttpClient;->kac:Lsun/net/www/http/KeepAliveCache;

    #@1c
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v1, v2, p0}, Lsun/net/www/http/KeepAliveCache;->put(Ljava/net/URL;Ljava/lang/Object;Lsun/net/www/http/HttpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 401
    return-void
.end method

.method public setCacheRequest(Ljava/net/CacheRequest;)V
    .locals 0
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;

    #@0
    .prologue
    .line 933
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->cacheRequest:Ljava/net/CacheRequest;

    #@2
    .line 932
    return-void
.end method

.method public setDoNotRetry(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 958
    iput-boolean p1, p0, Lsun/net/www/http/HttpClient;->failedOnce:Z

    #@2
    .line 956
    return-void
.end method

.method public setIgnoreContinue(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 962
    iput-boolean p1, p0, Lsun/net/www/http/HttpClient;->ignoreContinue:Z

    #@2
    .line 961
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "("

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lsun/net/www/http/HttpClient;->url:Ljava/net/URL;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ")"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;)V
    .locals 2
    .param p1, "head"    # Lsun/net/www/MessageHeader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 591
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@2
    .line 592
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@4
    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@6
    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->print(Ljava/io/PrintStream;)V

    #@9
    .line 593
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@b
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    #@e
    .line 590
    return-void
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V
    .locals 2
    .param p1, "head"    # Lsun/net/www/MessageHeader;
    .param p2, "pos"    # Lsun/net/www/http/PosterOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    iput-object p1, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@2
    .line 599
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->requests:Lsun/net/www/MessageHeader;

    #@4
    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@6
    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->print(Ljava/io/PrintStream;)V

    #@9
    .line 600
    iput-object p2, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@b
    .line 601
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 602
    iget-object v0, p0, Lsun/net/www/http/HttpClient;->poster:Lsun/net/www/http/PosterOutputStream;

    #@11
    iget-object v1, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@16
    .line 603
    :cond_0
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@18
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    #@1b
    .line 597
    return-void
.end method

.method public writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;Z)V
    .locals 0
    .param p1, "head"    # Lsun/net/www/MessageHeader;
    .param p2, "pos"    # Lsun/net/www/http/PosterOutputStream;
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 609
    iput-boolean p3, p0, Lsun/net/www/http/HttpClient;->streaming:Z

    #@2
    .line 610
    invoke-virtual {p0, p1, p2}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    #@5
    .line 608
    return-void
.end method
