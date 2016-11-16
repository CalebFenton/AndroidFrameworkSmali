.class public final Lcom/android/okhttp/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lcom/android/okhttp/Address;

.field private final client:Lcom/android/okhttp/OkHttpClient;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private final network:Lcom/android/okhttp/internal/Network;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

.field private final url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/HttpUrl;Lcom/android/okhttp/OkHttpClient;)V
    .locals 1
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "url"    # Lcom/android/okhttp/HttpUrl;
    .param p3, "client"    # Lcom/android/okhttp/OkHttpClient;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@9
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    #@f
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    #@16
    .line 65
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@18
    .line 66
    iput-object p2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->url:Lcom/android/okhttp/HttpUrl;

    #@1a
    .line 67
    iput-object p3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->client:Lcom/android/okhttp/OkHttpClient;

    #@1c
    .line 68
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@1e
    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/Internal;->routeDatabase(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/RouteDatabase;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@24
    .line 69
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@26
    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/Internal;->network(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/Network;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->network:Lcom/android/okhttp/internal/Network;

    #@2c
    .line 71
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getProxy()Ljava/net/Proxy;

    #@2f
    move-result-object v0

    #@30
    invoke-direct {p0, p2, v0}, Lcom/android/okhttp/internal/http/RouteSelector;->resetNextProxy(Lcom/android/okhttp/HttpUrl;Ljava/net/Proxy;)V

    #@33
    .line 64
    return-void
.end method

.method public static get(Lcom/android/okhttp/Address;Lcom/android/okhttp/Request;Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/http/RouteSelector;
    .locals 2
    .param p0, "address"    # Lcom/android/okhttp/Address;
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "client"    # Lcom/android/okhttp/OkHttpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    new-instance v0, Lcom/android/okhttp/internal/http/RouteSelector;

    #@2
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1, p2}, Lcom/android/okhttp/internal/http/RouteSelector;-><init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/HttpUrl;Lcom/android/okhttp/OkHttpClient;)V

    #@9
    return-object v0
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    #@6
    .line 205
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 209
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    #@0
    .prologue
    .line 214
    iget v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    #@0
    .prologue
    .line 146
    iget v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 220
    new-instance v0, Ljava/net/SocketException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "No route to "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@16
    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 221
    const-string/jumbo v2, "; exhausted inet socket addresses: "

    #@21
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 221
    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    #@27
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    #@35
    iget v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    #@37
    add-int/lit8 v2, v1, 0x1

    #@39
    iput v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    #@3b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/net/InetSocketAddress;

    #@41
    return-object v0
.end method

.method private nextPostponed()Lcom/android/okhttp/Route;
    .locals 2

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/okhttp/Route;

    #@9
    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 152
    new-instance v1, Ljava/net/SocketException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No route to "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    iget-object v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@16
    invoke-virtual {v3}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 153
    const-string/jumbo v3, "; exhausted proxy configurations: "

    #@21
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 153
    iget-object v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@27
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@35
    iget v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    #@37
    add-int/lit8 v3, v2, 0x1

    #@39
    iput v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    #@3b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/net/Proxy;

    #@41
    .line 156
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    #@44
    .line 157
    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 11
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 163
    new-instance v5, Ljava/util/ArrayList;

    #@3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6
    iput-object v5, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    #@8
    .line 167
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@b
    move-result-object v5

    #@c
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@e
    if-eq v5, v7, :cond_0

    #@10
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@13
    move-result-object v5

    #@14
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@16
    if-ne v5, v7, :cond_2

    #@18
    .line 168
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@1a
    invoke-virtual {v5}, Lcom/android/okhttp/Address;->getRfc2732Host()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 169
    .local v3, "socketHost":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@20
    invoke-virtual {v5}, Lcom/android/okhttp/Address;->getUriPort()I

    #@23
    move-result v4

    #@24
    .line 181
    .local v4, "socketPort":I
    :goto_0
    const/4 v5, 0x1

    #@25
    if-lt v4, v5, :cond_1

    #@27
    const v5, 0xffff

    #@2a
    if-le v4, v5, :cond_4

    #@2c
    .line 182
    :cond_1
    new-instance v5, Ljava/net/SocketException;

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "No route to "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, ":"

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 183
    const-string/jumbo v7, "; port is out of range"

    #@4c
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@57
    throw v5

    #@58
    .line 171
    .end local v3    # "socketHost":Ljava/lang/String;
    .end local v4    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@5b
    move-result-object v1

    #@5c
    .line 172
    .local v1, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v5, v1, Ljava/net/InetSocketAddress;

    #@5e
    if-nez v5, :cond_3

    #@60
    .line 173
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@62
    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, "Proxy.address() is not an InetSocketAddress: "

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 173
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v5

    #@7e
    :cond_3
    move-object v2, v1

    #@7f
    .line 176
    check-cast v2, Ljava/net/InetSocketAddress;

    #@81
    .line 177
    .local v2, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    .line 178
    .restart local v3    # "socketHost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@88
    move-result v4

    #@89
    .restart local v4    # "socketPort":I
    goto :goto_0

    #@8a
    .line 187
    .end local v1    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v2    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    :cond_4
    iget-object v5, p0, Lcom/android/okhttp/internal/http/RouteSelector;->network:Lcom/android/okhttp/internal/Network;

    #@8c
    invoke-interface {v5, v3}, Lcom/android/okhttp/internal/Network;->resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@8f
    move-result-object v7

    #@90
    array-length v8, v7

    #@91
    move v5, v6

    #@92
    :goto_1
    if-ge v5, v8, :cond_5

    #@94
    aget-object v0, v7, v5

    #@96
    .line 188
    .local v0, "inetAddress":Ljava/net/InetAddress;
    iget-object v9, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    #@98
    new-instance v10, Ljava/net/InetSocketAddress;

    #@9a
    invoke-direct {v10, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@9d
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a0
    .line 187
    add-int/lit8 v5, v5, 0x1

    #@a2
    goto :goto_1

    #@a3
    .line 191
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_5
    iput v6, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    #@a5
    .line 161
    return-void
.end method

.method private resetNextProxy(Lcom/android/okhttp/HttpUrl;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;
    .param p2, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 128
    if-eqz p2, :cond_0

    #@2
    .line 130
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@8
    .line 141
    :goto_0
    const/4 v1, 0x0

    #@9
    iput v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    #@b
    .line 127
    return-void

    #@c
    .line 134
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@13
    .line 135
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->client:Lcom/android/okhttp/OkHttpClient;

    #@15
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 136
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_1

    #@23
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@25
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@2a
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@2c
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    #@33
    .line 139
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    #@35
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@37
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V
    .locals 3
    .param p1, "failedRoute"    # Lcom/android/okhttp/Route;
    .param p2, "failure"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@a
    if-eq v0, v1, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@e
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@16
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    #@19
    move-result-object v0

    #@1a
    .line 120
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->url:Lcom/android/okhttp/HttpUrl;

    #@1c
    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@27
    move-result-object v2

    #@28
    .line 119
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    #@2b
    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@2d
    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/RouteDatabase;->failed(Lcom/android/okhttp/Route;)V

    #@30
    .line 116
    return-void
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 85
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    #@9
    move-result v0

    #@a
    .line 84
    if-nez v0, :cond_0

    #@c
    .line 86
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    #@f
    move-result v0

    #@10
    .line 84
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public next()Lcom/android/okhttp/Route;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_2

    #@6
    .line 92
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 93
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 94
    new-instance v1, Ljava/util/NoSuchElementException;

    #@14
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@17
    throw v1

    #@18
    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextPostponed()Lcom/android/okhttp/Route;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    #@23
    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    #@29
    .line 102
    new-instance v0, Lcom/android/okhttp/Route;

    #@2b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    #@2d
    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    #@2f
    iget-object v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    #@31
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/Route;-><init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    #@34
    .line 103
    .local v0, "route":Lcom/android/okhttp/Route;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    #@36
    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/RouteDatabase;->shouldPostpone(Lcom/android/okhttp/Route;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    .line 104
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    #@3e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    .line 106
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    #@44
    move-result-object v1

    #@45
    return-object v1

    #@46
    .line 109
    :cond_3
    return-object v0
.end method
