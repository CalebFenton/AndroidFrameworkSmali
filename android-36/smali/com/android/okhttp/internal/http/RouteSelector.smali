.class public final Lcom/android/okhttp/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final greylist-max-o address:Lcom/android/okhttp/Address;

.field private greylist-max-o inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private greylist-max-o lastProxy:Ljava/net/Proxy;

.field private greylist-max-o nextInetSocketAddressIndex:I

.field private greylist-max-o nextProxyIndex:I

.field private final greylist-max-o postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/RouteDatabase;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 53
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    .line 61
    iput-object p2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 63
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/okhttp/internal/http/RouteSelector;->resetNextProxy(Lcom/android/okhttp/HttpUrl;Ljava/net/Proxy;)V

    return-void
.end method

.method static greylist-max-o getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2

    .line 194
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_b

    .line 199
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o hasNextInetSocketAddress()Z
    .registers 2

    .line 208
    iget v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o hasNextPostponed()Z
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private greylist-max-o hasNextProxy()Z
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 217
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    return-object p0

    .line 214
    :cond_15
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o nextPostponed()Lcom/android/okhttp/Route;
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/Route;

    return-object p0
.end method

.method private greylist-max-o nextProxy()Ljava/net/Proxy;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    iget v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 144
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    return-object v0

    .line 140
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 155
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_46

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_18

    goto :goto_46

    .line 159
    :cond_18
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 160
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2b

    .line 164
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 165
    invoke-static {v0}, Lcom/android/okhttp/internal/http/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_52

    .line 161
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v0

    :goto_52
    const/4 v2, 0x1

    if-lt v0, v2, :cond_94

    const v2, 0xffff

    if-gt v0, v2, :cond_94

    .line 174
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_6d

    .line 175
    iget-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 178
    :cond_6d
    iget-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getDns()Lcom/android/okhttp/Dns;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/okhttp/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_7c
    if-ge v2, v1, :cond_91

    .line 180
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 181
    iget-object v5, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 185
    :cond_91
    :goto_91
    iput v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    return-void

    .line 170
    :cond_94
    new-instance p0, Ljava/net/SocketException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o resetNextProxy(Lcom/android/okhttp/HttpUrl;Ljava/net/Proxy;)V
    .registers 4

    if-eqz p2, :cond_9

    .line 118
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    goto :goto_35

    .line 122
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 123
    iget-object p2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {p2}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 124
    iget-object p2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_25
    iget-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 127
    iget-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_35
    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    return-void
.end method


# virtual methods
.method public greylist-max-o connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V
    .registers 6

    .line 105
    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    .line 108
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 111
    :cond_2f
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/RouteDatabase;->failed(Lcom/android/okhttp/Route;)V

    return-void
.end method

.method public greylist hasNext()Z
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_15

    .line 73
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_15

    .line 74
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o next()Lcom/android/okhttp/Route;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_23

    .line 80
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 81
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 84
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextPostponed()Lcom/android/okhttp/Route;

    move-result-object p0

    return-object p0

    .line 82
    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 86
    :cond_1d
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 88
    :cond_23
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 90
    new-instance v1, Lcom/android/okhttp/Route;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/okhttp/Route;-><init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 91
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/RouteDatabase;->shouldPostpone(Lcom/android/okhttp/Route;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 92
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    move-result-object p0

    return-object p0

    :cond_44
    return-object v1
.end method
