.class public Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static synthetic -java_net_Proxy$TypeSwitchesValues:[I


# instance fields
.field protected proxySelector:Ljava/net/ProxySelector;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method private static synthetic -getjava_net_Proxy$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->-java_net_Proxy$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->-java_net_Proxy$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/net/Proxy$Type;->values()[Ljava/net/Proxy$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@10
    invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@19
    invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@22
    invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->-java_net_Proxy$TypeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;
    .param p2, "prosel"    # Ljava/net/ProxySelector;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    if-nez p1, :cond_0

    #@5
    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 93
    const-string/jumbo v1, "SchemeRegistry must not be null."

    #@a
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 95
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@10
    .line 96
    iput-object p2, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    #@12
    .line 89
    return-void
.end method


# virtual methods
.method protected chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;
    .locals 5
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 272
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    .line 273
    const-string/jumbo v4, "Proxy list must not be empty."

    #@d
    .line 272
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 276
    :cond_1
    const/4 v2, 0x0

    #@12
    .line 279
    .local v2, "result":Ljava/net/Proxy;
    const/4 v0, 0x0

    #@13
    .end local v2    # "result":Ljava/net/Proxy;
    .local v0, "i":I
    :goto_0
    if-nez v2, :cond_2

    #@15
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@18
    move-result v3

    #@19
    if-ge v0, v3, :cond_2

    #@1b
    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/net/Proxy;

    #@21
    .line 282
    .local v1, "p":Ljava/net/Proxy;
    invoke-static {}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->-getjava_net_Proxy$TypeSwitchesValues()[I

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I

    #@2c
    move-result v4

    #@2d
    aget v3, v3, v4

    #@2f
    packed-switch v3, :pswitch_data_0

    #@32
    .line 279
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 286
    :pswitch_1
    move-object v2, v1

    #@36
    .line 287
    .local v2, "result":Ljava/net/Proxy;
    goto :goto_1

    #@37
    .line 296
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "result":Ljava/net/Proxy;
    :cond_2
    if-nez v2, :cond_3

    #@39
    .line 300
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@3b
    .line 303
    :cond_3
    return-object v2

    #@3c
    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;
    .locals 10
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 195
    iget-object v3, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    #@3
    .line 196
    .local v3, "psel":Ljava/net/ProxySelector;
    if-nez v3, :cond_0

    #@5
    .line 197
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@8
    move-result-object v3

    #@9
    .line 198
    :cond_0
    if-nez v3, :cond_1

    #@b
    .line 199
    return-object v7

    #@c
    .line 201
    :cond_1
    const/4 v5, 0x0

    #@d
    .line 203
    .local v5, "targetURI":Ljava/net/URI;
    :try_start_0
    new-instance v5, Ljava/net/URI;

    #@f
    .end local v5    # "targetURI":Ljava/net/URI;
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 208
    .local v5, "targetURI":Ljava/net/URI;
    invoke-virtual {v3, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    .line 210
    .local v2, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;

    #@1d
    move-result-object v1

    #@1e
    .line 212
    .local v1, "p":Ljava/net/Proxy;
    const/4 v4, 0x0

    #@1f
    .line 213
    .local v4, "result":Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@22
    move-result-object v7

    #@23
    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@25
    if-ne v7, v8, :cond_3

    #@27
    .line 215
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@2a
    move-result-object v7

    #@2b
    instance-of v7, v7, Ljava/net/InetSocketAddress;

    #@2d
    if-nez v7, :cond_2

    #@2f
    .line 216
    new-instance v7, Lorg/apache/http/HttpException;

    #@31
    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v9, "Unable to handle non-Inet proxy address: "

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    .line 216
    invoke-direct {v7, v8}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v7

    #@4d
    .line 204
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v4    # "result":Lorg/apache/http/HttpHost;
    .end local v5    # "targetURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    #@4e
    .line 205
    .local v6, "usx":Ljava/net/URISyntaxException;
    new-instance v7, Lorg/apache/http/HttpException;

    #@50
    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "Cannot convert host to URI: "

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    .line 205
    invoke-direct {v7, v8, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@67
    throw v7

    #@68
    .line 219
    .end local v6    # "usx":Ljava/net/URISyntaxException;
    .restart local v1    # "p":Ljava/net/Proxy;
    .restart local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v4    # "result":Lorg/apache/http/HttpHost;
    .restart local v5    # "targetURI":Ljava/net/URI;
    :cond_2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Ljava/net/InetSocketAddress;

    #@6e
    .line 221
    .local v0, "isa":Ljava/net/InetSocketAddress;
    new-instance v4, Lorg/apache/http/HttpHost;

    #@70
    .end local v4    # "result":Lorg/apache/http/HttpHost;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@77
    move-result v8

    #@78
    invoke-direct {v4, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    #@7b
    .line 224
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_3
    return-object v4
.end method

.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    if-nez p2, :cond_0

    #@2
    .line 129
    new-instance v5, Ljava/lang/IllegalStateException;

    #@4
    .line 130
    const-string/jumbo v6, "Request must not be null."

    #@7
    .line 129
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 135
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@e
    move-result-object v5

    #@f
    invoke-static {v5}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    #@12
    move-result-object v2

    #@13
    .line 136
    .local v2, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v2, :cond_1

    #@15
    .line 137
    return-object v2

    #@16
    .line 142
    :cond_1
    if-nez p1, :cond_2

    #@18
    .line 143
    new-instance v5, Ljava/lang/IllegalStateException;

    #@1a
    .line 144
    const-string/jumbo v6, "Target host must not be null."

    #@1d
    .line 143
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 148
    :cond_2
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@24
    move-result-object v5

    #@25
    invoke-static {v5}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    #@28
    move-result-object v0

    #@29
    .line 153
    .local v0, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@2c
    move-result-object v5

    #@2d
    const-string/jumbo v6, "http.route.default-proxy"

    #@30
    invoke-interface {v5, v6}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lorg/apache/http/HttpHost;

    #@36
    .line 154
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    if-nez v1, :cond_4

    #@38
    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;

    #@3b
    move-result-object v1

    #@3c
    .line 163
    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    :cond_3
    :goto_0
    iget-object v5, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@3e
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    #@45
    move-result-object v3

    #@46
    .line 166
    .local v3, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    #@49
    move-result v4

    #@4a
    .line 168
    .local v4, "secure":Z
    if-nez v1, :cond_5

    #@4c
    .line 169
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    #@4e
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    #@51
    .line 173
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_1
    return-object v2

    #@52
    .line 156
    .end local v3    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v4    # "secure":Z
    .restart local v1    # "proxy":Lorg/apache/http/HttpHost;
    :cond_4
    sget-object v5, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    #@54
    invoke-virtual {v5, v1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_3

    #@5a
    .line 158
    const/4 v1, 0x0

    #@5b
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    goto :goto_0

    #@5c
    .line 171
    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v3    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v4    # "secure":Z
    :cond_5
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    #@5e
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v1, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    #@61
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_1
.end method

.method protected getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .param p1, "isa"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 244
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 243
    :goto_0
    return-object v0

    #@b
    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    #@2
    return-object v0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)V
    .locals 0
    .param p1, "prosel"    # Ljava/net/ProxySelector;

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    #@2
    .line 116
    return-void
.end method
